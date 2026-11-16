"""Verify language coverage and preserve game data, placeholders and atlas art."""
import json,re,sqlite3,sys
from pathlib import Path
import numpy as np
from PIL import Image
from lupa import LuaRuntime
from localize_game import ROOT,OUT,CJK,fgui_strings,original
from translate_image_assets import asset_path
from android_strings import pool

db=ROOT/'editable-apk/assets/win32/res/data/data.bin'
a=sqlite3.connect(original(db));b=sqlite3.connect(db)
assert b.execute('pragma integrity_check').fetchone()[0]=='ok'
fields=0;structured=0
name_changes={(r['table'],r['rowid'],r['column']):r['english'] for r in json.loads((OUT/'name-polish.json').read_text(encoding='utf-8'))}
assert all(t in {'Map','MapTransfer','MapTransferPoint','NpcList','Item','Equip','MonsterInfo'} and col in {'Name','NpcName','MapName','LandMarkName','Description'} for t,_,col in name_changes)
placeholder=re.compile(r'%(?:\d+\$)?[-+0#]*\d*(?:\.\d+)?[sdfiqouxXeEgG]')
def shape(v):
    if isinstance(v,str):return 'string'
    if isinstance(v,list):return [shape(x) for x in v]
    if isinstance(v,dict):return {k:shape(x) for k,x in v.items()}
    return (type(v).__name__,v)
for table, in a.execute("select name from sqlite_master where type='table' AND name NOT LIKE 'sqlite_%'").fetchall():
    old=a.execute('select rowid,* from "'+table+'"').fetchall()
    new=b.execute('select rowid,* from "'+table+'"').fetchall()
    columns=['rowid']+[r[1] for r in a.execute('pragma table_info("'+table+'")')]
    assert len(old)==len(new),(table,'row count')
    for source,target in zip(old,new):
        for col,x,y in zip(columns,source,target):
            if isinstance(x,str) and CJK.search(x) and table!='MaskWord':
                fields+=1;assert isinstance(y,str) and not CJK.search(y),(table,source[0],y)
                specs=placeholder.findall(x)
                if specs:assert specs==placeholder.findall(y),(table,source[0],'format placeholders')
                if x[:1] in ['[','{']:
                    try:j=json.loads(x)
                    except ValueError:continue
                    k=json.loads(y);assert shape(j)==shape(k),(table,source[0],'structured data changed');structured+=1
            elif (table,source[0],col) in name_changes:
                assert y==name_changes[table,source[0],col] and not CJK.search(y)
            else:assert x==y,(table,source[0],'non-language data changed')
fuis=0
for p in (ROOT/'editable-apk/assets').rglob('*.fui'):
    before=fgui_strings(original(p).read_bytes())[-1];after=fgui_strings(p.read_bytes())[-1]
    assert len(before)==len(after)
    for x,y in zip(before,after):
        assert not CJK.search(y),(str(p),y)
        if not CJK.search(x):assert x==y,(str(p),'non-language string changed')
    fuis+=1
changes=json.loads((OUT/'image-translations.json').read_text(encoding='utf-8'));groups={}
for r in changes:groups.setdefault(r['path'],[]).append(r['rect'])
for path,rectangles in groups.items():
    p=asset_path(path)
    before=np.array(Image.open(original(p)).convert('RGBA'));after=np.array(Image.open(p).convert('RGBA'))
    assert before.shape==after.shape,(path,'atlas dimensions changed')
    mask=np.zeros(before.shape[:2],bool)
    for x,y,w,h in rectangles:mask[y:y+h,x:x+w]=True
    assert np.array_equal(before[~mask],after[~mask]),(path,'art changed outside lettering regions')
lua=LuaRuntime(unpack_returned_tuples=True);modules=0
for p in (ROOT/'reverse-engineering/localized').rglob('*'):
    if p.is_file():lua.execute('assert(load(...))',p.read_text(encoding='utf-8'));modules+=1
font=ROOT/'editable-apk/assets/res/font/fangzheng.ttf'
import zipfile
with zipfile.ZipFile(ROOT/'com.yofijoy.tzlyby.apk') as apk:
    assert apk.read('assets/res/font/fangzheng.ttf')==font.read_bytes(),'Original font must remain unchanged'
native_before=pool((OUT/'originals/android/resources.arsc').read_bytes())[-1]
native_after=pool((ROOT/'editable-apk/resources.arsc').read_bytes())[-1]
assert len(native_before)==len(native_after)
for x,y in zip(native_before,native_after):
    assert not CJK.search(y)
    if not CJK.search(x):assert x==y,'Non-language Android resource changed'
print(f'PASS: {fields} database fields, {structured} structured values, {fuis} UI packages, {modules} Lua modules; {len(groups)} images preserve dimensions/art outside text; original font and Android resource indices unchanged')
