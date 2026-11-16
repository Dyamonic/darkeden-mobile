"""Regression checks for mob routing and persistent player death."""
from pathlib import Path
import sys
from lupa import LuaRuntime

root=Path(__file__).resolve().parents[1]
lua=LuaRuntime(unpack_returned_tuples=True)
lua.globals().package.loaded['app.offline.WorldData']=lua.execute((root/'reverse-engineering/offline/WorldData.lua').read_text())
world=lua.execute(Path(sys.argv[1]).read_text() if len(sys.argv)>1 else (root/'reverse-engineering/offline/World.lua').read_text())
w=world.new(None,None)
w.state.hp=1
for e in w.enemies.values(): e.x,e.y=9000,-9000
e=w.enemies[1]; e.x,e.y=w.state.x,w.state.y
w.update(w,0.1)
assert w.state.hp==0, 'Zero HP must remain dead instead of silently healing'
assert len([v for v in w.events.values() if v.kind=='death'])==1
w.events=lua.table();w.update(w,0.1)
assert len(list(w.events.values()))==0, 'Death notification only fires once'
assert not w.attack(w) and not w.potion(w), 'Dead players cannot attack or heal with potions'
assert w.revive(w) and w.state.hp==w.maxHP(w)
assert not w.revive(w), 'Repeated revive is idempotent'
nav=lua.execute((root/'reverse-engineering/offline/Navigation.lua').read_text())
# A wall blocks direct pursuit; search must route around the opening at y=3.
open_cell=lua.eval('function(x,y) return x>=0 and x<=6 and y>=0 and y<=4 and (x~=2 or y==3) end')
m,n=0,1;trail=[]
for _ in range(24):
    step=nav.nextStep(m,n,5,1,open_cell,False)
    if step is None: break
    nm,nn=step
    assert max(abs(nm-m),abs(nn-n))==1 and open_cell(nm,nn)
    if nm!=m and nn!=n: assert open_cell(nm,n) and open_cell(m,nn), 'No corner cutting'
    m,n=nm,nn;trail.append((m,n))
assert (m,n)==(5,1) and (2,3) in trail, 'Navigate around wall instead of sticking or crossing it'
assert nav.nextStep(0,0,5,5,lua.eval('function() return false end'),False) is None
# Already diagonally adjacent behind a blocked corner is not an attack goal.
step=nav.nextStep(0,0,1,1,lua.eval('function(x,y) return x~=1 or y~=0 end'),True)
assert step is not None, 'A mob behind a blocked corner must seek another attack tile'
# Bridge must not independently advance a renderer-owned mob position.
w=world.new(None,None);e=w.enemies[1];e.x,e.y=w.state.x+150,w.state.y
calls=[];w.navigate=lambda *args:calls.append(args)
x,y=e.x,e.y;w.update(w,0.1)
assert (e.x,e.y)==(x,y) and calls
store=lua.execute((root/'reverse-engineering/offline/Store.lua').read_text())
w.state.hp=0
assert store.valid(store,w.state), 'Dead saves must remain loadable'
print('PASS: obstacle routing, no diagonal corner cutting, blocked path, actor-owned movement, persistent death, action guards, revive idempotence')
