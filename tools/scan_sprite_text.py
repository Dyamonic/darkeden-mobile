"""Inspect individual original atlas sprites for text missed in whole-image OCR."""
from pathlib import Path
import concurrent.futures,json
import numpy as np
from PIL import Image
from atlas_regions import sprite_map
from localize_game import ROOT,OUT,original,CJK
from scan_chinese_images import init
def scan(job):
    import scan_chinese_images as scanner
    path,sprite=job;p=ROOT/'editable-apk/assets'/path
    x,y,w,h=sprite['rect'];image=Image.open(original(p)).convert('RGBA').crop((x,y,x+w,y+h))
    bg=Image.new('RGB',image.size,(35,32,30));bg.paste(image,mask=image.getchannel('A'))
    scale=min(4,max(1,180//max(w,h)));bg=bg.resize((w*scale,h*scale))
    result=scanner.engine(np.asarray(bg)[:,:,::-1]);text=[]
    if result.txts is not None:
        for box,s,score in zip(result.boxes,result.txts,result.scores):
            if CJK.search(s) and len(s)>=2 and score>=0.90:
                text.append({'text':s,'score':float(score),'box':[[float(a)/scale+x,float(b)/scale+y] for a,b in box]})
    return {'path':path,'name':sprite['name'],'rect':sprite['rect'],'text':text}
def main():
    cache=OUT/'sprite-ocr.jsonl';done=set()
    if cache.exists():
        done={(r['path'],tuple(r['rect'])) for r in map(json.loads,cache.read_text(encoding='utf8').splitlines())}
    jobs=[(p,s) for p,v in sprite_map().items() for s in v if min(s['rect'][2:])>=10 and (p,tuple(s['rect'])) not in done]
    print('Sprite OCR pending',len(jobs),flush=True)
    with cache.open('a',encoding='utf8') as f,concurrent.futures.ProcessPoolExecutor(max_workers=3,initializer=init) as pool:
        for i,r in enumerate(pool.map(scan,jobs,chunksize=8),1):
            f.write(json.dumps(r,ensure_ascii=False)+'\n');f.flush()
            if i%200==0:print('Sprites scanned',i,'/',len(jobs),flush=True)
    print('Sprite OCR complete',flush=True)
if __name__=='__main__':main()
