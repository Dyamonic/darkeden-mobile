"""Reproducible English localization: extract/cache, then patch original assets."""
from pathlib import Path
import argparse, csv, json, re, struct, shutil, sqlite3, time, hashlib
from concurrent.futures import ThreadPoolExecutor, as_completed
import requests
from polish_names import polish_database

ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'game-translation';OUT.mkdir(exist_ok=True)
CJK=re.compile(r'[\u3400-\u9fff]')
def qi(s): return '"'+s.replace('"','""')+'"'
def read_cache():
    p=OUT/'english.json'
    return json.loads(p.read_text(encoding='utf-8')) if p.exists() else {}
def save_cache(d):
    p=OUT/'english.json';p.with_suffix('.tmp').write_text(json.dumps(d,ensure_ascii=False,indent=1),encoding='utf-8');p.with_suffix('.tmp').replace(p)
def backup(p):
    p=p.resolve()
    rel=p.relative_to(ROOT/'editable-apk')
    dst=OUT/'originals'/(rel.relative_to('assets') if rel.parts[0]=='assets' else Path('android')/rel)
    if not dst.exists(): dst.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,dst)
    return dst
def original(p):
    p=p.resolve()
    rel=p.relative_to(ROOT/'editable-apk')
    b=OUT/'originals'/(rel.relative_to('assets') if rel.parts[0]=='assets' else Path('android')/rel)
    return b if b.exists() else p
def fgui_strings(raw):
    assert raw[:4]==b'FGUI' and raw[8]==0
    p=9
    for _ in range(2):
        n=struct.unpack_from('>H',raw,p)[0];p+=2+n
    base=p+20;count,short=raw[base:base+2];fmt='>H' if short else '>I';width=2 if short else 4
    offsets=[struct.unpack_from(fmt,raw,base+2+i*width)[0] for i in range(count)]
    start=base+offsets[4];n=struct.unpack_from('>I',raw,start)[0];p=start+4;strings=[]
    for _ in range(n):
        size=struct.unpack_from('>H',raw,p)[0];p+=2
        strings.append(raw[p:p+size].decode('utf-8'));p+=size
    return base,fmt,width,offsets,start,p,strings
def lua_literals(s):
    i=0
    while i<len(s):
        comment=s.startswith('--',i)
        start=i;j=i+2 if comment else i
        match=re.compile(r'\[(=*)\[').match(s,j)
        if match:
            close=']'+match[1]+']';end=s.find(close,j+len(match[0]));end=len(s) if end<0 else end+len(close)
            if not comment: yield start,end,s[j+len(match[0]):end-len(close)]
            i=end;continue
        if comment:
            end=s.find('\n',j);i=len(s) if end<0 else end+1;continue
        if s[i] in "\"'":
            q=s[i];j=i+1
            while j<len(s):
                if s[j]=='\\':j+=2;continue
                if s[j]==q:break
                j+=1
            token=s[i+1:j]
            # Preserve escapes while translating visible prose.
            value=token.replace('\\n','\n').replace('\\r','\r').replace('\\t','\t').replace('\\'+q,q).replace('\\\\','\\')
            yield i,j+1,value;i=j+1;continue
        i+=1
def split_parts(s):
    # Markup, printf substitutions, structured-data separators and escapes are
    # copied byte-for-byte rather than sent to machine translation.
    return re.split(r'(<[^>]*>|\[/?[A-Za-z][^\]]*\]|%(?:\d+\$)?[-+0 #]*\d*(?:\.\d+)?[a-zA-Z%]|[\n\r\t|]|\\[nrt]|(?<![A-Za-z])\d+:)',s)
def chunks(s): return [v for v in split_parts(s) if CJK.search(v)]
def translate_value(s,cache):
    if not CJK.search(s): return s
    if s in cache:return cache[s]
    return ''.join(cache.get(p,p) for p in split_parts(s))
def corpus():
    values=set();existing={};meta={}
    db=ROOT/'editable-apk/assets/win32/res/data/data.bin'
    c=sqlite3.connect(original(db))
    for (table,) in c.execute("SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%'").fetchall():
        if table=='MaskWord':continue
        cols=[r[1] for r in c.execute('pragma table_info('+qi(table)+')')]
        rows=c.execute('select '+','.join(map(qi,cols))+' from '+qi(table))
        for row in rows:
            d=dict(zip(cols,row))
            for col,v in d.items():
                if isinstance(v,str) and CJK.search(v):
                    values.add(v)
                    en=d.get('ENName') or d.get('EnName')
                    if col in ('Name','Name2') and isinstance(en,str) and en.strip() and not CJK.search(en):existing[v]=en
    for p in (ROOT/'editable-apk/assets').rglob('*.fui'):
        for s in fgui_strings(original(p).read_bytes())[-1]:
            if CJK.search(s):values.add(s)
    for folder in ['bil','bil2','edoc','emag']:
        for p in (ROOT/'reverse-engineering/unpacked'/folder).iterdir():
            if p.is_file():
                text=p.read_text(encoding='utf-8')
                if not CJK.search(text):continue
                for _,_,s in lua_literals(text):
                    if CJK.search(s):values.add(s)
    ocr=OUT/'image-ocr.jsonl'
    if ocr.exists():
        for line in ocr.read_text(encoding='utf-8').splitlines():
            for item in json.loads(line).get('text',[]):
                if CJK.search(item['text']):values.add(item['text'])
    native=OUT/'android-source-strings.json'
    if native.exists():values.update(json.loads(native.read_text(encoding='utf-8')))
    (OUT/'source-strings.json').write_text(json.dumps(sorted(values),ensure_ascii=False,indent=1),encoding='utf-8')
    print('Source strings',len(values),'characters',sum(map(len,values)),'existing English',len(existing),flush=True)
    return values,existing
def request_batch(items):
    query='\n'.join('ZXQ%04dZXQ %s'%(i,s) for i,s in enumerate(items))
    for retry in range(6):
        try:
            r=requests.get('https://translate.googleapis.com/translate_a/single',params={'client':'gtx','sl':'zh-CN','tl':'en','dt':'t','q':query},timeout=45)
            r.raise_for_status();data=r.json();text=''.join(x[0] or '' for x in data[0])
            matches=list(re.finditer(r'ZXQ\s*(\d{4})\s*ZXQ\s*',text,re.I));out={}
            for j,m in enumerate(matches):
                idx=int(m[1]);v=text[m.end():matches[j+1].start() if j+1<len(matches) else len(text)].strip()
                if idx<len(items) and v and not CJK.search(v):out[items[idx]]=v
            return out
        except Exception:
            if retry==5:raise
            time.sleep(min(2**retry,15))
def translate():
    values,existing=corpus();cache=read_cache();cache.update(existing)
    manual=OUT/'manual.json'
    if manual.exists():cache.update(json.loads(manual.read_text(encoding='utf-8')))
    parts={p for s in values if s not in cache for p in chunks(s)}
    pending=sorted(p for p in parts if p not in cache)
    batches=[];batch=[];size=0
    for s in pending:
        if batch and (size+len(s)>2200 or len(batch)>=45):batches.append(batch);batch=[];size=0
        batch.append(s);size+=len(s)+16
    if batch:batches.append(batch)
    print('Pending',len(pending),'batches',len(batches),flush=True)
    with ThreadPoolExecutor(max_workers=4) as pool:
        futures=[pool.submit(request_batch,b) for b in batches]
        for i,f in enumerate(as_completed(futures),1):
            cache.update(f.result());save_cache(cache)
            if i%10==0:print('Translation batches',i,'/',len(batches),flush=True)
    # Build complete field translations from protected segments.
    for s in values:
        v=translate_value(s,cache)
        if not CJK.search(v):cache[s]=v
    save_cache(cache)
    unresolved=[s for s in values if CJK.search(translate_value(s,cache))]
    (OUT/'unresolved-text.json').write_text(json.dumps(unresolved,ensure_ascii=False,indent=1),encoding='utf-8')
    print('Translated cache',len(cache),'unresolved complete strings',len(unresolved),flush=True)
def patch():
    cache=read_cache();changed=[]
    db=ROOT/'editable-apk/assets/win32/res/data/data.bin';backup(db);shutil.copy2(original(db),db)
    c=sqlite3.connect(db);updates=0
    for (table,) in c.execute("select name from sqlite_master where type='table' AND name NOT LIKE 'sqlite_%'").fetchall():
        if table=='MaskWord':continue
        cols=[r[1] for r in c.execute('pragma table_info('+qi(table)+')')]
        for row in c.execute('select rowid,'+','.join(map(qi,cols))+' from '+qi(table)).fetchall():
            for col,v in zip(cols,row[1:]):
                if isinstance(v,str) and CJK.search(v):
                    translated=translate_value(v,cache)
                    if translated!=v:c.execute('update '+qi(table)+' set '+qi(col)+'=? where rowid=?',(translated,row[0]));updates+=1
    source=sqlite3.connect(original(db))
    name_changes=polish_database(c,source,cache)
    source.close()
    (OUT/'name-polish.json').write_text(json.dumps(name_changes,ensure_ascii=False,indent=1),encoding='utf-8')
    c.commit();assert c.execute('pragma integrity_check').fetchone()[0]=='ok';c.close();changed.append(str(db.relative_to(ROOT/'editable-apk')))
    for p in (ROOT/'editable-apk/assets').rglob('*.fui'):
        raw=original(p).read_bytes();base,fmt,width,offsets,start,end,strings=fgui_strings(raw)
        new=[translate_value(s,cache) if CJK.search(s) else s for s in strings]
        if p.stem=='Main':
            short_labels={'角色':'Stats','怪物':'Mobs'}
            new=[short_labels.get(s,v) for s,v in zip(strings,new)]
        if new==strings:continue
        backup(p)
        encoded=[s.encode('utf-8') for s in new];assert all(len(s)<65536 for s in encoded)
        table=struct.pack('>I',len(encoded))+b''.join(struct.pack('>H',len(s))+s for s in encoded)
        patched=bytearray(raw[:start]+table+raw[end:]);delta=len(table)-(end-start)
        for i,offset in enumerate(offsets):
            if offset and base+offset>=end:struct.pack_into(fmt,patched,base+2+i*width,offset+delta)
        assert fgui_strings(bytes(patched))[-1]==new
        p.write_bytes(patched);changed.append(str(p.relative_to(ROOT/'editable-apk')))
    overlays=ROOT/'reverse-engineering/localized';overlays.mkdir(exist_ok=True)
    for folder in ['bil','bil2','edoc','emag']:
        target=overlays/folder;target.mkdir(exist_ok=True)
        for p in (ROOT/'reverse-engineering/unpacked'/folder).iterdir():
            if not p.is_file():continue
            src=p.read_text(encoding='utf-8');replacements=[]
            if not CJK.search(src):continue
            for a,b,s in lua_literals(src):
                if CJK.search(s):
                    v=translate_value(s,cache)
                    if v!=s:replacements.append((a,b,json.dumps(v,ensure_ascii=False)))
            if replacements:
                for a,b,v in reversed(replacements):src=src[:a]+v+src[b:]
                (target/p.name).write_text(src,encoding='utf-8')
    (OUT/'asset-replacements.json').write_text(json.dumps(changed,indent=1),encoding='utf-8')
    # DbManager otherwise keeps the Chinese configuration copied on first run.
    # A content-addressed English cache leaves both user saves and old DB intact.
    target=overlays/'emag/app.manager.DbManager'
    src=target.read_text(encoding='utf-8') if target.exists() else (ROOT/'reverse-engineering/unpacked/emag/app.manager.DbManager').read_text(encoding='utf-8')
    revision=hashlib.sha256(db.read_bytes()).hexdigest()[:12]
    src=re.sub(r'local dataPath = dir\.\."/data(?:-en-[a-f0-9]+)?\.bin"',
        'local dataPath = dir.."/data-en-'+revision+'.bin"',src)
    target.write_text(src,encoding='utf-8')
    # Revive list titles are populated after the native list items are built.
    # Fit the resulting English name after the existing renderer sets it.
    target=overlays/'emag/app.scene.gameTL.comps.CompReviveItem'
    src=(ROOT/'reverse-engineering/unpacked/emag/app.scene.gameTL.comps.CompReviveItem').read_text(encoding='utf-8')
    src=src.replace('self._title:setText(data.name)',
        'self._title:setText(data.name)\n    require("app.offline.EnglishUI").fitReviveItem(self)')
    target.write_text(src,encoding='utf-8')
    # The original tooltip reads server potion values from the bundled metadata.
    # Only the local supply object uses the offline world's shared 65-HP effect.
    target=overlays/'emag/app.scene.gameTL.comps.CompItemTips'
    src=target.read_text(encoding='utf-8')
    needle='commonTable[1].value = "+"..param[i][2]'
    assert needle in src
    src=src.replace(needle,needle+'\n                    if _G_OFFLINE_BRIDGE and item:getObjId()==10001 then commonTable[1].value="+65" end')
    src=src.replace('self._nameEnT:setString(string.format("(%s)",itemEnName))',
        'self._nameEnT:setString(itemEnName==itemName and "" or string.format("(%s)",itemEnName))')
    target.write_text(src,encoding='utf-8')
    # Dynamic captions are assigned after the package factory has finished.
    # Fit complete windows after their original show handler populates them.
    for module in ['app.scene.gameTL.layers.WndLayer','app.scene.role.RoleLayerTL']:
        target=overlays/'emag'/module
        src=target.read_text(encoding='utf-8') if target.exists() else (ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
        if module.endswith('WndLayer'):
            needle='    for k,v in ipairs(self._viewArray) do\n        if v:getParam().layerName == layerName then\n            table.remove(self._viewArray, k)'
            assert needle in src
            src=src.replace(needle,'    if _G_OFFLINE_BRIDGE and (layerName=="UIWndRoleInfo" or layerName=="UIWndInventory" or layerName=="UIWndRoleEquip") then return end\n'+needle)
            prepare='function WndLayer:prepareCommonViews()\n    if not _G_OFFLINE_BRIDGE then return end\n    self._offlineWarmMs=self._offlineWarmMs or {}\n    for _,name in ipairs({"UIWndRoleInfo","UIWndInventory","UIWndRoleEquip"}) do\n        local exists=false\n        for _,view in ipairs(self._viewArray) do if view:getParam().layerName==name then exists=true;break end end\n        if not exists then\n            local start=os.clock()\n            local view=lt[name].new({class=name,layerName=name})\n            view:setDialogSystem(self)\n            if name=="UIWndRoleInfo" then view:onEnter() end\n            view:initWindow()\n            require("app.offline.EnglishUI").fit(view)\n            table.insert(self._viewArray,view)\n            self._offlineWarmMs[name]=(os.clock()-start)*1000\n        end\n    end\nend\n\n'
            src=src.replace('return WndLayer',prepare+'return WndLayer')
        src=src.replace('view:show()', 'view:show()\n            require("app.offline.EnglishUI").fit(view)')
        src=src.replace('view:onShown() --', 'view:onShown()\n                    require("app.offline.EnglishUI").fit(view) --')
        target.write_text(src,encoding='utf-8')
    # Character rows refresh independently while the window remains open.
    module='app.scene.widget.window.UIWndRoleInfo'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    needle='            local bgNameTable = {'
    assert needle in src
    src=src.replace(needle,'            require("app.offline.EnglishUI").fitRow(infoAttr)\n'+needle)
    # Identical rich-text details need no native text rebuild on reopen.
    needle='    local detailT = content:getChild("detail")'
    assert needle in src
    src=src.replace(needle,'    if self._offlineRightDetails==contentStr then return end\n    self._offlineRightDetails=contentStr\n'+needle)
    # Build only the selected stats tab; hidden skill panels are expensive.
    src=src.replace('    if not self._clsCom then','    if not self._clsCom and (self._selectIndex == btnType.lowCls or self._selectIndex == btnType.superCls) then')
    src=src.replace('    if self._selectIndex == btnType.lowCls or self._selectIndex == btnType.superCls then','    if self._clsCom and (self._selectIndex == btnType.lowCls or self._selectIndex == btnType.superCls) then')
    src=src.replace('        self._clsCom:setVisible(false)','        if self._clsCom then self._clsCom:setVisible(false) end')
    src=src.replace('    if not self._transferCom then','    if not self._transferCom and self._selectIndex == btnType.transfer then')
    src=src.replace('    self._transferCom:setVisible(self._selectIndex == btnType.transfer)','    if self._transferCom then self._transferCom:setVisible(self._selectIndex == btnType.transfer) end')
    src=src.replace('    if self._transferCom:isVisible() then','    if self._transferCom and self._transferCom:isVisible() then')
    src=src.replace('    if not self._magicCom then','    if not self._magicCom and self._selectIndex == btnType.magic then')
    src=src.replace('    self._magicCom:setVisible(self._selectIndex == btnType.magic)','    if self._magicCom then self._magicCom:setVisible(self._selectIndex == btnType.magic) end')
    src=src.replace('    if self._magicCom:isVisible() then','    if self._magicCom and self._magicCom:isVisible() then')
    target.write_text(src,encoding='utf-8')
    # Zone names also arrive after the HUD package is constructed. Reserve the
    # original minimap expand-arrow area even for longer English zone names.
    module='app.scene.gameTL.comps.CompMiniMap'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    needle='self._mapName:setText(mapName)'
    assert needle in src
    src=src.replace(needle,needle+'\n    require("app.offline.EnglishUI").fitHeader(self._mapName,28)')
    target.write_text(src,encoding='utf-8')
    # English needs complete row layouts where Chinese used sentence fragments.
    module='app.scene.widget.window.UIWndSetting'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    needle='end\n\n\nfunction UIWndSetting:refreshComponet'
    assert needle in src
    src=src.replace(needle,'    require("app.offline.EnglishUI").fitSetting(component,meta)\n'+needle)
    needle='    NtfManager:dispatchNtf(NtfManager.NTF.NTF_CHANGE_SETTINGS, {index = index})'
    assert needle in src
    src=src.replace(needle,'    require("app.offline.EnglishUI").fitSetting(component,meta)\n'+needle)
    # Place the popup below the relocated selector in window-local coordinates.
    needle='local pos = comboBox:localToGlobal(comboBox:getPosition())\n            self._chooselist:setY(pos.y - 30)'
    assert needle in src
    src=src.replace(needle,'local pos = self:globalToLocal(comboBox:localToGlobal(cc.p(0,comboBox:getSize().height)))\n            self._chooselist:setPivot(0,0,false)\n            self._chooselist:setSize(220,self._chooselist:getSize().height)\n            self._chooselist:setPosition(pos.x,pos.y+4)')
    src=src.replace('self._chooselist:setNumItems(#self._settinglist)','self._chooselist:setNumItems(#self._settinglist)\n            self._chooselist:resizeToFit(#self._settinglist,0)\n            for _,choice in ipairs(self._chooselist:getChildren()) do require("app.offline.EnglishUI").fitPotionChoice(choice) end')
    src=src.replace('    obj.itemMeta = itemMeta','    require("app.offline.EnglishUI").fit(obj)\n    obj.itemMeta = itemMeta')
    target.write_text(src,encoding='utf-8')
    module='app.scene.widget.component.UICompHelpMenuCell'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    src=src.replace('    self._helpList = helpList','    require("app.offline.EnglishUI").fitHelpMenu(self)\n    self._helpList = helpList')
    src=src.replace('    obj.index = index','    require("app.offline.EnglishUI").fitHelpItem(obj)\n    obj.index = index')
    target.write_text(src,encoding='utf-8')
    module='app.scene.gameTL.comps.CompRevive'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    src=src.replace('    self._reviveBtn:setText(data.name)','    self._reviveBtn:setText(data.name)\n    require("app.offline.EnglishUI").fitRevive(self)')
    src=src.replace('self._lastLabel:setText(self._remainTs.."s")','self._lastLabel:setText(self._remainTs.."s")\n        require("app.offline.EnglishUI").fitCountdown(self._lastLabel)')
    target.write_text(src,encoding='utf-8')
    module='app.scene.widget.window.UIWndInventory'
    target=overlays/'emag'/module
    src=target.read_text(encoding='utf-8')
    needle='    self._btnBelt:setText(GReadText["KEY_BELT_"..race])'
    assert needle in src
    src=src.replace(needle,needle+'\n    require("app.offline.EnglishUI").fitPocketButton(self._btnBelt)')
    target.write_text(src,encoding='utf-8')
    # State-map names are assigned by the original tile refresh, after creation.
    module='app.scene.widget.component.UICompStateMap'
    target=overlays/'emag'/module
    src=target.read_text(encoding='utf-8') if target.exists() else (ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    needle='    local mCount = mapMeta:isSmallMap() and smallSize or bigSize'
    assert needle in src
    src=src.replace(needle,'    require("app.offline.EnglishUI").fitStateMapTile(child)\n'+needle)
    target.write_text(src,encoding='utf-8')
    module='app.scene.widget.window.UIWndStateMap'
    target=overlays/'emag'/module
    src=(ROOT/'reverse-engineering/unpacked/emag'/module).read_text(encoding='utf-8')
    needle='    self._stateMap:refreshStateMapInfo(self._isUnderground)'
    assert needle in src
    src=src.replace(needle,needle+'\n    require("app.offline.EnglishUI").fitStateMap(self)')
    target.write_text(src,encoding='utf-8')
    print('Patched DB fields',updates,'FGUI packages',len(changed)-1,flush=True)
if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('action',choices=['extract','translate','patch']);args=parser.parse_args()
    {'extract':corpus,'translate':translate,'patch':patch}[args.action]()
