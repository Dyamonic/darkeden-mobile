"""Localize Android's global resource string pool without changing resource IDs."""
from pathlib import Path
import json,struct,zipfile,sys
from localize_game import ROOT,OUT,CJK,read_cache,translate_value
SOURCE=ROOT/'android-studio-project/app/build/outputs/apk/apktool/offline-launcher-unsigned.apk'
def pool(raw):
    pos=struct.unpack_from('<H',raw,2)[0]
    while pos<len(raw):
        kind,header,size=struct.unpack_from('<HHI',raw,pos)
        if kind==1:break
        pos+=size
    count,styles,flags,start,style_start=struct.unpack_from('<IIIII',raw,pos+8)
    assert flags&256 and styles==0
    strings=[]
    def length(offset):
        n=raw[offset];offset+=1
        if n&128:n=((n&127)<<8)|raw[offset];offset+=1
        return n,offset
    for i in range(count):
        offset=pos+start+struct.unpack_from('<I',raw,pos+header+i*4)[0]
        _,offset=length(offset);n,offset=length(offset)
        strings.append(raw[offset:offset+n].decode('utf-8'))
    return pos,header,size,flags,strings
def extract():
    with zipfile.ZipFile(SOURCE) as z:raw=z.read('resources.arsc')
    p=OUT/'originals/android/resources.arsc';p.parent.mkdir(parents=True,exist_ok=True)
    if not p.exists():p.write_bytes(raw)
    values=[s for s in pool(raw)[-1] if CJK.search(s)]
    (OUT/'android-source-strings.json').write_text(json.dumps(values,ensure_ascii=False,indent=1),encoding='utf-8')
    print('Native Android Chinese strings',len(values))
def patch():
    raw=(OUT/'originals/android/resources.arsc').read_bytes();pos,header,size,flags,strings=pool(raw)
    cache=read_cache();translated=[translate_value(s,cache) for s in strings]
    assert not any(CJK.search(s) for s in translated)
    def length(n):
        assert n<32768
        return bytes([n]) if n<128 else bytes([128|(n>>8),n&255])
    offsets=[];data=bytearray()
    for s in translated:
        offsets.append(len(data));b=s.encode('utf-8')
        data+=length(len(s.encode('utf-16-le'))//2)+length(len(b))+b+b'\0'
    start=header+4*len(strings)
    chunk=bytearray(raw[pos:pos+header]);chunk+=struct.pack('<'+'I'*len(offsets),*offsets)+data
    chunk+=b'\0'*(-len(chunk)%4)
    struct.pack_into('<I',chunk,4,len(chunk));struct.pack_into('<I',chunk,20,start)
    result=bytearray(raw[:pos]+chunk+raw[pos+size:]);struct.pack_into('<I',result,4,len(result))
    assert pool(result)[-1]==translated
    (ROOT/'editable-apk/resources.arsc').write_bytes(result)
    (OUT/'android-replacements.json').write_text('["resources.arsc"]',encoding='utf-8')
    print('Patched Android resource strings',sum(a!=b for a,b in zip(strings,translated)))
if __name__=='__main__':{'extract':extract,'patch':patch}[sys.argv[1]]()
