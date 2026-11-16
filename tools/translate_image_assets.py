"""Translate original text regions without changing texture/atlas geometry."""
from pathlib import Path
import json,re,sys,math
import numpy as np,cv2
from PIL import Image,ImageDraw,ImageFont
from localize_game import ROOT,OUT,CJK,original,backup,read_cache,translate_value
from atlas_regions import sprite_map

def asset_path(path):
    return ROOT/'editable-apk'/path[len('@android/'):] if path.startswith('@android/') else ROOT/'editable-apk/assets'/path

def jobs():
    regions=sprite_map();found={}
    for line in (OUT/'image-ocr.jsonl').read_text(encoding='utf-8').splitlines():
        record=json.loads(line);path=record['path']
        if path.startswith('sprite:'):continue
        # Native provider logos and standard Android action symbols are branding
        # or pictograms, not game prose. Translate the actual chat status label.
        if path.startswith('@android/') and 'icon_content_end.png' not in path:continue
        for item in record['text']:
            text=item['text'];score=item['score']
            # Symbols/portraits frequently resemble a single Chinese character.
            # Only genuine text-bearing assets are eligible for replacement.
            ui=(path.startswith('@android/') or '/fairygui/' in path or '/tzly/' in path or '/launcher' in path or '/ui/' in path or '/tlui/' in path)
            if not ui or (len(text)==1 and text in {'十','米','日','白','全','口','品','浙','天','巴','请','角','用'}):continue
            if score<0.88 and len(text)<3:continue
            xs=[p[0] for p in item['box']];ys=[p[1] for p in item['box']]
            cx,cy=sum(xs)/4,sum(ys)/4
            matched=[]
            for sprite in regions.get(path,[]):
                x,y,w,h=sprite['rect']
                if x<=cx<x+w and y<=cy<y+h:matched.append(sprite)
            if matched:
                sprite=min(matched,key=lambda r:r['rect'][2]*r['rect'][3]);rect=sprite['rect'];name=sprite['name']
            else:rect=[0,0,*record['size']];name=Path(path).stem
            key=path+'|'+','.join(map(str,rect))
            found[key]={'path':path,'rect':rect,'name':name}
    return list(found.values())
def rescan():
    from scan_chinese_images import init,engine
    import scan_chinese_images as scanner
    init();engine=scanner.engine
    out=[]
    for i,job in enumerate(jobs(),1):
        p=asset_path(job['path']);x,y,w,h=job['rect']
        image=Image.open(original(p)).convert('RGBA').crop((x,y,x+w,y+h))
        bg=Image.new('RGB',image.size,(35,32,30));bg.paste(image,mask=image.getchannel('A'))
        scale=3 if max(w,h)<600 else 1
        result=engine(np.asarray(bg.resize((w*scale,h*scale)))[:,:,::-1])
        text=[]
        if result.txts is not None:
            for box,s,score in zip(result.boxes,result.txts,result.scores):
                if CJK.search(s) and float(score)>=0.84:
                    text.append({'text':s,'score':float(score),'box':[[float(a)/scale+x,float(b)/scale+y] for a,b in box]})
        job['text']=text;out.append(job)
        if i%25==0:print('Sprite OCR',i,flush=True)
    (OUT/'image-text-regions.json').write_text(json.dumps(out,ensure_ascii=False,indent=1),encoding='utf-8')
    # Add precisely recognized sprite text to the shared translation inventory.
    with (OUT/'image-ocr.jsonl').open('a',encoding='utf-8') as f:
        for j in out:
            if j['text']:f.write(json.dumps({'path':'sprite:'+j['path']+':'+j['name'],'size':j['rect'][2:],'text':j['text']},ensure_ascii=False)+'\n')
    print('Text sprites',sum(bool(j['text']) for j in out),'/',len(out),flush=True)
def patch():
    cache=read_cache();jobs=json.loads((OUT/'image-text-regions.json').read_text(encoding='utf-8'))
    images={};changes=[];report=[]
    fontpath=ROOT/'editable-apk/assets/res/font/fangzheng.ttf'
    for job in jobs:
        path=job['path'];p=asset_path(path)
        if not job['text']:continue
        if path not in images:images[path]=Image.open(original(p)).convert('RGBA')
        im=images[path];rx,ry,rw,rh=job['rect']
        for item in job['text']:
            source=item['text'];text=translate_value(source,cache)
            if CJK.search(text) or not text.strip():continue
            pts=np.array(item['box'],dtype=np.int32)
            x0=max(rx,int(pts[:,0].min())-2);x1=min(rx+rw,int(pts[:,0].max())+3)
            y0=max(ry,int(pts[:,1].min())-2);y1=min(ry+rh,int(pts[:,1].max())+3)
            if x1<=x0 or y1<=y0:continue
            crop=im.crop((x0,y0,x1,y1));rgba=np.array(crop);alpha=rgba[:,:,3]
            # Transparent lettering sprites have no background to reconstruct.
            transparent=float((alpha<32).mean())>0.25
            if job.get('preserve_background'):
                mask=np.zeros(alpha.shape,np.uint8)
                local_pts=pts-np.array([x0,y0]);cv2.fillPoly(mask,[local_pts],255)
                if job.get('gold_letter_mask'):
                    rgb=rgba[:,:,:3].astype(np.float32)
                    letters=(rgb[:,:,0]>170)&(rgb[:,:,1]>140)&(rgb[:,:,1]>rgb[:,:,0]*.72)&(rgb[:,:,2]<rgb[:,:,1]*.9)
                    mask=cv2.bitwise_and(mask,cv2.dilate(letters.astype(np.uint8)*255,np.ones((3,3),np.uint8)))
                rgb=cv2.inpaint(rgba[:,:,:3],mask,3,cv2.INPAINT_TELEA)
                repaired_alpha=cv2.inpaint(alpha,mask,3,cv2.INPAINT_TELEA)
                crop=Image.fromarray(np.dstack((rgb,repaired_alpha)))
            elif transparent:
                crop=Image.new('RGBA',crop.size)
            else:
                mask=np.zeros(alpha.shape,np.uint8);mask[1:-1,1:-1]=255
                rgb=cv2.inpaint(rgba[:,:,:3],mask,3,cv2.INPAINT_TELEA)
                crop=Image.fromarray(np.dstack((rgb,alpha)))
            bright=rgba[:,:,:3][(rgba[:,:,:3].mean(axis=2)>160)&(alpha>100)]
            color=tuple(int(x) for x in np.median(bright,axis=0)) if len(bright) else (240,220,174)
            draw=ImageDraw.Draw(crop);width,height=crop.size
            # Keep the original game font. Short labels may use the full sprite
            # interior where the previous Chinese lettering occupied less width.
            size=max(7,int(height*.82));font=ImageFont.truetype(str(fontpath),size)
            while size>6 and (draw.textbbox((0,0),text,font=font,stroke_width=1)[2]>width-2 or draw.textbbox((0,0),text,font=font,stroke_width=1)[3]-draw.textbbox((0,0),text,font=font,stroke_width=1)[1]>height-2):
                size-=1;font=ImageFont.truetype(str(fontpath),size)
            bounds=draw.textbbox((0,0),text,font=font,stroke_width=1)
            if bounds[2]>width-1:
                # Render to an intermediate label, then scale to its exact slot.
                label=Image.new('RGBA',(bounds[2]+4,height));d=ImageDraw.Draw(label)
                d.text((2,(height-(bounds[3]-bounds[1]))/2-bounds[1]),text,font=font,fill=color+(255,),stroke_width=1,stroke_fill=(20,15,12,255))
                label=label.resize((width,height),Image.Resampling.LANCZOS);crop.alpha_composite(label)
            else:
                draw.text(((width-bounds[2])/2,(height-(bounds[3]-bounds[1]))/2-bounds[1]),text,font=font,fill=color+(255,),stroke_width=1,stroke_fill=(20,15,12,255))
            im.paste(crop,(x0,y0))
            report.append({'path':path,'sprite':job['name'],'source':source,'english':text,'rect':[x0,y0,x1-x0,y1-y0]})
    for path,im in images.items():
        p=asset_path(path);backup(p);im.save(p);changes.append(p.relative_to(ROOT/'editable-apk').as_posix())
    (OUT/'image-translations.json').write_text(json.dumps(report,ensure_ascii=False,indent=1),encoding='utf-8')
    (OUT/'image-replacements.json').write_text(json.dumps(changes,indent=1),encoding='utf-8')
    print('Translated image text',len(report),'regions in',len(changes),'original images',flush=True)
if __name__=='__main__':{'rescan':rescan,'patch':patch}[sys.argv[1]]()
