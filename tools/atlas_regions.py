"""Read original FairyGUI atlas rectangles without moving any sprites."""
from pathlib import Path
import struct,json,sys
sys.path.insert(0,str(Path(__file__).parent))
from localize_game import ROOT,OUT,original,fgui_strings
def sprite_map():
    result={}
    for path in (ROOT/'editable-apk/assets').rglob('*.fui'):
        raw=original(path).read_bytes();base,fmt,width,offsets,_,_,strings=fgui_strings(raw)
        p=base+offsets[1];count=struct.unpack_from('>H',raw,p)[0];p+=2;items={}
        for _ in range(count):
            length=struct.unpack_from('>I',raw,p)[0];p+=4;end=p+length
            kind=raw[p];idx,name,_,file=struct.unpack_from('>HHHH',raw,p+1)
            item_id=strings[idx];file_name=strings[file] if file<65533 else ''
            items[item_id]={'kind':kind,'name':strings[name] if name<65533 else '', 'file':file_name}
            p=end
        p=base+offsets[2];count=struct.unpack_from('>H',raw,p)[0];p+=2
        for _ in range(count):
            length=struct.unpack_from('>H',raw,p)[0];p+=2;end=p+length
            idx,atlas=struct.unpack_from('>HH',raw,p);p+=4
            x,y,w,h=struct.unpack_from('>iiii',raw,p);p+=16;rotated=bool(raw[p])
            atlas=items[strings[atlas]];name=path.stem+'_'+atlas['file']
            image=path.parent/name
            rel=image.relative_to(ROOT/'editable-apk/assets').as_posix()
            result.setdefault(rel,[]).append({'id':strings[idx],'name':items.get(strings[idx],{}).get('name',''),
                'rect':[x,y,h if rotated else w,w if rotated else h],'rotated':rotated})
            p=end
    return result
if __name__=='__main__':
    result=sprite_map();(OUT/'atlas-regions.json').write_text(json.dumps(result,ensure_ascii=False,indent=1),encoding='utf-8')
    print('Atlas maps',len(result),'sprites',sum(map(len,result.values())))
