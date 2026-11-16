"""Audit unencrypted CCZ/PVR effect textures for remaining Chinese art text."""
from pathlib import Path
import concurrent.futures,json,re,zlib,struct
import numpy as np
from PIL import Image
import scan_chinese_images as scanner
from localize_game import ROOT,OUT,CJK
def decode(path):
    raw=zlib.decompress(Path(path).read_bytes()[16:]);assert raw[:4]==b'PVR\x03'
    fmt=struct.unpack_from('<Q',raw,8)[0];h,w=struct.unpack_from('<II',raw,24)
    start=52+struct.unpack_from('<I',raw,48)[0]
    if fmt==0x0808080861626772:return Image.frombytes('RGBA',(w,h),raw[start:start+w*h*4])
    assert fmt==0x0404040461626772,hex(fmt)
    pixels=np.frombuffer(raw,dtype='<u2',count=w*h,offset=start).reshape(h,w)
    rgba=np.stack([(pixels>>12)&15,(pixels>>8)&15,(pixels>>4)&15,pixels&15],axis=-1).astype('uint8')*17
    return Image.fromarray(rgba)
def scan(path):
    rel=Path(path).relative_to(ROOT/'editable-apk/assets').as_posix()
    try:
        im=decode(path);bg=Image.new('RGB',im.size,(30,30,30));bg.paste(im,mask=im.getchannel('A'))
        result=[]
        for y in range(0,im.height,768):
            for x in range(0,im.width,768):
                crop=bg.crop((x,y,min(x+850,im.width),min(y+850,im.height)))
                scale=2 if max(crop.size)<300 else 1
                crop=crop.resize((crop.width*scale,crop.height*scale))
                r=scanner.engine(np.asarray(crop)[:,:,::-1])
                if r.txts is not None:
                    for b,t,s in zip(r.boxes,r.txts,r.scores):
                        if CJK.search(t) and s>0.9:result.append({'text':t,'score':float(s),'box':[[float(a)/scale+x,float(c)/scale+y] for a,c in b]})
        if result:
            out=OUT/'effect-previews'/Path(rel);out=out.with_suffix('.png');out.parent.mkdir(parents=True,exist_ok=True);im.save(out)
        return {'path':rel,'text':result,'size':list(im.size)}
    except Exception as e:return {'path':rel,'text':[],'error':str(e)}
def main():
    path=OUT/'effect-ocr.jsonl';done=set()
    if path.exists():done={json.loads(l)['path'] for l in path.read_text(encoding='utf-8').splitlines()}
    files=[];encrypted=0
    for p in (ROOT/'editable-apk/assets').rglob('*.ccz'):
        header=p.open('rb').read(4)
        if header==b'CCZp':encrypted+=1;continue
        if header==b'CCZ!' and p.relative_to(ROOT/'editable-apk/assets').as_posix() not in done:files.append(str(p))
    print('Effect textures',len(files),'encrypted model textures',encrypted,flush=True)
    with path.open('a',encoding='utf-8') as f,concurrent.futures.ProcessPoolExecutor(max_workers=4,initializer=scanner.init) as pool:
        futures=[pool.submit(scan,p) for p in files]
        for i,future in enumerate(concurrent.futures.as_completed(futures),1):
            r=future.result();f.write(json.dumps(r,ensure_ascii=False)+'\n');f.flush()
            if r['text']:print('Candidate',r['path'],[(t['text'].encode('ascii','backslashreplace').decode(),round(t['score'],2)) for t in r['text']],flush=True)
            if i%200==0:print('Effect scan',i,'/',len(files),flush=True)
if __name__=='__main__':main()
