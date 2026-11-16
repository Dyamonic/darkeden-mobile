"""Focused simulation and save recovery checks with a real Lua interpreter (lupa)."""
from pathlib import Path
import json
import tempfile
from lupa import LuaRuntime

ROOT = Path(__file__).resolve().parents[1]
SOURCES = ROOT / 'reverse-engineering/offline'
lua = LuaRuntime(unpack_returned_tuples=True)
lua.globals().package.loaded['app.offline.WorldData']=lua.execute((SOURCES/'WorldData.lua').read_text())
for source in SOURCES.glob('*.lua'):
    lua.execute('assert(load(...))', source.read_text(encoding='utf-8'))
world = lua.execute((SOURCES / 'World.lua').read_text())
store_class = lua.execute((SOURCES / 'Store.lua').read_text())


def fresh():
    w = world.new(None, None)
    w.state.x, w.state.y = 100, -100
    for e in w.enemies.values():
        e.x, e.y = 9000, -9000
    return w


w = fresh()
e = w.enemies[1]
e.x, e.y = 130, -100
assert w.attack(w)
hp = e.hp
assert not w.attack(w) and e.hp == hp, 'Attack cooldown'
for _ in range(2):
    w.time += 0.6
    w.attack(w)
assert (w.state.kills, w.state.xp, w.state.gold) == (1, 20, 8)
w.time += 0.6
w.attack(w)
assert w.state.kills == 1, 'A corpse cannot reward twice'
for _ in range(2):
    e.hp, e.deadUntil = 1, None
    w.time += 0.6
    w.attack(w)
assert (w.state.level, w.state.xp, w.state.potions) == (2, 0, 4)
assert w.state.hp == w.maxHP(w), 'Level-up heals'
w.state.hp = 20
assert w.potion(w) and w.state.hp == 85 and w.state.potions == 3
w.state.potions = 0
assert not w.potion(w), 'No negative inventory'
w.paused = True
x, elapsed = w.state.x, w.state.elapsed
w.move(w, 1, 0, 1)
w.update(w, 1)
assert w.state.x == x and w.state.elapsed == elapsed
blocked = world.new(None, lua.eval('function(x,y) return false end'))
x = blocked.state.x
blocked.move(blocked, 1, 0, 0.1)
assert blocked.state.x == x

codec = lua.table_from({
    'encode': lambda state: json.dumps(dict(state.items())),
    'decode': lambda text: lua.table_from(json.loads(text)),
})
with tempfile.TemporaryDirectory() as td:
    path = Path(td) / 'save.json'
    store = store_class.new(str(path), codec)
    assert store.load(store) == (None, 'new')
    assert store.save(store, w.state) is True
    loaded, status = store.load(store)
    assert status == 'loaded' and loaded.kills == 3 and loaded.level == 2
    # Android rename atomically replaces a file; Windows Lua's rename does not.
    # Emulate POSIX rename for this host-only test.
    import os
    lua.globals().os.rename = lambda source, dest: (os.replace(source, dest) or True)
    w.state.gold += 17
    assert store.save(store, w.state) is True
    path.write_text('{broken')
    recovered, status = store.load(store)
    assert status == 'recovered' and recovered.gold == 24
    path.with_suffix('.json.bak').write_text('null')
    assert store.load(store) == (None, 'damaged')
    w.state.hp = -1
    result = store.save(store, w.state)
    assert result[0] is False and path.read_text() == '{broken'
print('PASS: Lua syntax, combat/cooldown/rewards, leveling, inventory, pause, collision, save round-trip, backup recovery, corrupt-save rejection')
