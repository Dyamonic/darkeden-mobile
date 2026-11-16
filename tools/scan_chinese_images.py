"""Inventory Chinese lettering in bundled PNGs; cached/resumable, CPU OCR."""
from pathlib import Path
import concurrent.futures, json, re, hashlib, os
import numpy as np
from PIL import Image

ROOT=Path(__file__).resolve().parents[1];OUT=ROOT/'game-translation'
CJK=re.compile(r'[\u3400-\u9fff]')
engine=None
def init():
    global engine
    from rapidocr import RapidOCR
    engine=RapidOCR(params={'EngineConfig.onnxruntime.intra_op_num_threads':2,
        'EngineConfig.onnxruntime.inter_op_num_threads':1,'Global.log_level':'error',
        'Det.limit_type':'max','Det.limit_side_len':1024,'Global.text_score':0.65})
def scan(path):
    p=Path(path)
    rel=p.relative_to(ROOT/'editable-apk/assets').as_posix() if p.is_relative_to(ROOT/'editable-apk/assets') else '@android/'+p.relative_to(ROOT/'editable-apk').as_posix()
    try:
        im=Image.open(p).convert('RGBA');w,h=im.size
        # Font glyph atlases are font resources, not Chinese prose/art labels.
        if '/font/' in '/'+rel:return {'path':rel,'size':[w,h],'text':[],'kind':'font-resource'}
        if min(w,h)<8:return {'path':rel,'size':[w,h],'text':[]}
        bg=Image.new('RGB',im.size,(35,32,30));bg.paste(im,mask=im.getchannel('A'))
        tiles=[]
        if max(w,h)>1200:
            step=700
            for y in range(0,h,step):
                for x in range(0,w,step):tiles.append((x,y,bg.crop((x,y,min(x+800,w),min(y+800,h)))))
        else:tiles=[(0,0,bg)]
        found=[]
        for x,y,tile in tiles:
            tw,th=tile.size;scale=2 if max(tw,th)<400 else 1
            if scale!=1:tile=tile.resize((tw*scale,th*scale))
            result=engine(np.asarray(tile)[:,:,::-1])
            if result.txts is None:continue
            for box,text,score in zip(result.boxes,result.txts,result.scores):
                if not CJK.search(text):continue
                box=[[float(a)/scale+x,float(b)/scale+y] for a,b in box]
                if any(abs(box[0][0]-old['box'][0][0])<10 and abs(box[0][1]-old['box'][0][1])<10 for old in found):continue
                found.append({'text':text,'score':round(float(score),5),'box':box})
        return {'path':rel,'size':[w,h],'text':found}
    except Exception as e:return {'path':rel,'error':str(e),'text':[]}
def main():
    OUT.mkdir(exist_ok=True);cache=OUT/'image-ocr.jsonl'
    done={}
    if cache.exists():
        for line in cache.read_text(encoding='utf-8').splitlines():
            r=json.loads(line);done[r['path']]=r
    files=list((ROOT/'editable-apk/assets').rglob('*.png'))+list((ROOT/'editable-apk/res').rglob('*.png'))
    files.sort(key=lambda p:('atlas' not in p.name,'/ui/' not in p.as_posix(),p.as_posix()))
    def relative(p):return p.relative_to(ROOT/'editable-apk/assets').as_posix() if p.is_relative_to(ROOT/'editable-apk/assets') else '@android/'+p.relative_to(ROOT/'editable-apk').as_posix()
    pending=[str(p) for p in files if relative(p) not in done]
    print('OCR pending',len(pending),'already scanned',len(done),flush=True)
    with cache.open('a',encoding='utf-8') as out,concurrent.futures.ProcessPoolExecutor(max_workers=4,initializer=init) as pool:
        futures=[pool.submit(scan,p) for p in pending]
        for i,f in enumerate(concurrent.futures.as_completed(futures),1):
            result=f.result();out.write(json.dumps(result,ensure_ascii=False)+'\n');out.flush()
            if result.get('text'):print('Chinese image',result['path'],len(result['text']),flush=True)
            if i%100==0:print('OCR scanned',i,'/',len(pending),flush=True)
if __name__=='__main__':main()
