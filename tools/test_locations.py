"""Original race homes, migration, fixed quest populations and portal destinations."""
from pathlib import Path
from lupa import LuaRuntime
root=Path(__file__).resolve().parents[1]/'reverse-engineering/offline'
lua=LuaRuntime(unpack_returned_tuples=True)
data=lua.execute((root/'WorldData.lua').read_text());lua.globals().package.loaded['app.offline.WorldData']=data
loc=lua.execute((root/'Locations.lua').read_text());world=lua.execute((root/'World.lua').read_text())
store=lua.execute((root/'Store.lua').read_text())
for race,code,m,n in [(1,'12',117,146),(2,'1003',62,64),(3,'1311',24,73)]:
 s=world.new(None,None).state;s.appearance=lua.table_from({'byRace':race});s.gold=77;s.hp=0
 loc.start(s);assert s.map==code and s.x==m*48+24 and s.y==-(n*24+12) and s.hp==0 and s.gold==77
 assert store.valid(store,s)
 assert loc.correctStart(s) is False
 s.spawnRevision=None;s.map='12';s.x=999;s.y=-777
 assert loc.correctStart(s)
 assert s.hp==0 and s.gold==77
 assert s.map==code
 if race==1:assert s.x==999 and s.y==-777
 s.map='bad';assert not store.valid(store,s)
assert len(loc.population('1003',lambda *a:True))==0
assert len(loc.population('1311',lambda *a:True))==0
p=loc.population('2101',lambda *a:True);assert len(p)==4
assert all(e.monster in (4,29,30,31,32,33,34,35,36,37,463,464,564,20004) for e in p.values())
assert len(loc.population('2101',lambda *a:False))==0
assert loc.destination('1003','23',98,73)==('23',28,27)
assert loc.destination('1311','81',35,38)==('81',173,88)
assert loc.destination('12','11',255,90)==('11',1,90)
assert loc.destination('1003','1311',62,64) is None
w=world.new(None,None);w.safe=lambda *a:True;w.state.hp=1
for e in w.enemies.values():e.x=w.state.x;e.y=w.state.y
w.update(w,.1);assert w.state.hp==1 and not w.attack(w)
print('PASS: all race homes, legacy correction without progress loss, safe villages, quest populations, portal coordinates, unsafe-map rejection and safe-zone combat guards')
