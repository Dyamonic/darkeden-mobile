"""Migration, multi-character isolation, capacity and recovery regressions."""
import json, os, tempfile
from pathlib import Path
from lupa import LuaRuntime, lua_type

root=Path(__file__).resolve().parents[1]/'reverse-engineering/offline'
lua=LuaRuntime(unpack_returned_tuples=True)
lua.globals().package.loaded['app.offline.WorldData']=lua.execute((root/'WorldData.lua').read_text())
store=lua.execute((root/'Store.lua').read_text())
lua.globals().package.loaded['app.offline.Store']=store
roster=lua.execute((root/'Roster.lua').read_text())
world=lua.execute((root/'World.lua').read_text())
lua.globals().os.rename=lambda src,dst: (os.replace(src,dst) or True)
def plain(value):
    if lua_type(value)!='table': return value
    keys=list(value.keys())
    if keys and set(keys)==set(range(1,len(keys)+1)):
        return [plain(value[i]) for i in range(1,len(keys)+1)]
    return {k:plain(v) for k,v in value.items()}
def native(value):
    if isinstance(value,dict): return lua.table_from({k:native(v) for k,v in value.items()})
    if isinstance(value,list): return lua.table_from([native(v) for v in value])
    return value
codec=lua.table_from({'encode':lambda v:json.dumps(plain(v)), 'decode':lambda s:native(json.loads(s))})
def character(name):
    s=world.new(None,None).state;s.name=name;return s
with tempfile.TemporaryDirectory() as td:
    old=Path(td)/'old.json';path=Path(td)/'roster.json'
    legacy=store.new(str(old),codec)
    original=character('Wanderer');original.level=4;original.xp=40;original.hp=0;original.potions=7
    assert legacy.save(legacy,original) is True
    untouched=old.read_bytes()
    r=roster.new(str(path),codec,str(old))
    state,status=r.load(r)
    assert status=='migrated' and plain(state)==plain(original) and old.read_bytes()==untouched
    second=character('Second');second.gold=23
    assert r.add(r,second)[0] is True
    third=character('Third');third.xp=17
    assert r.add(r,third)[0] is True
    assert not r.add(r,character('Fourth'))[0]
    assert not r.select(r,'Missing')[0]
    # Alter each character independently, then reload and switch again.
    state=r.select(r,'Wanderer');state.gold=81;r.save(r,state)
    state=r.select(r,'Second');assert state.gold==23 and state.level==1 and state.potions==3
    state.potions=1;r.save(r,state)
    r2=roster.new(str(path),codec,str(old));state,status=r2.load(r2)
    assert state.name=='Second' and state.potions==1
    assert r2.select(r2,'Wanderer').gold==81
    assert r2.select(r2,'Third').xp==17
    path.write_text('{broken')
    r3=roster.new(str(path),codec,str(old));state,status=r3.load(r3)
    assert status=='recovered' and len(r3.data.characters)==3
    path.with_suffix('.json.bak').write_text('null')
    r4=roster.new(str(path),codec,str(old));assert r4.load(r4)==(None,'damaged')
    assert path.read_text()=='{broken', 'Do not overwrite damaged roster with a legacy migration'
    assert old.read_bytes()==untouched
with tempfile.TemporaryDirectory() as td:
    r=roster.new(td+'/roster.json',codec,td+'/absent.json');state,status=r.load(r)
    assert state is None and status=='new'
    assert r.add(r,character('Name'))[0]
    assert not r.add(r,character('name'))[0], 'Duplicate names are rejected'
    bad=character('Bad');bad.hp=-1
    assert not r.add(r,bad)[0]
print('PASS: legacy migration, three slots, separate progress, selection persistence, duplicate/full/invalid rejection, backup recovery, damaged roster preservation')
