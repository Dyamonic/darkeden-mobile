"""NPC travel uses original dialogue destinations, ownership and local checks."""
from pathlib import Path
import sqlite3
from lupa import LuaRuntime
root=Path(__file__).resolve().parents[1]
lua=LuaRuntime(unpack_returned_tuples=True)
lua.globals().package.loaded['app.offline.WorldData']=lua.execute((root/'reverse-engineering/offline/WorldData.lua').read_text())
loc=lua.execute((root/'reverse-engineering/offline/Locations.lua').read_text())
c=sqlite3.connect(root/'editable-apk/assets/win32/res/data/data.bin');c.row_factory=sqlite3.Row
npc=dict(c.execute('select * from NpcList where NpcIndex=302').fetchone())
talk=dict(c.execute('select * from NPCTalk where TalkId=302105').fetchone())
s=lua.table_from({'map':'1003','hp':140,'appearance':lua.table_from({'byRace':2})})
def travel(npc=npc,talk=talk,m=91,n=56):return loc.npcDestination(s,lua.table_from(npc),lua.table_from(talk),m,n)
assert travel()==('61',110,208)
assert travel(m=0,n=0)[0] is None
s.hp=0;assert travel()[0] is None;s.hp=140
s.map='12';assert travel()[0] is None;s.map='1003'
s.appearance.byRace=1;assert travel()[0] is None;s.appearance.byRace=2
for patch in [{'NPCId':'301'},{'NPCTalkGoto':'3|103'},{'NPCTalkGoto':'2|99999,1,1'},{'NPCTalkGoto':'2|61,-1,208'},{'NPCTalkGoto':'2|61,99999,208'},{'NPCTalkGoto':'2|61,110,208,99'}]:
 assert travel(talk={**talk,**patch})[0] is None,patch
assert talk['NPCTalkGoto']=='2|61,110,208'
print('PASS original Foley-to-Perona destination; dead/far/wrong-map/wrong-race/wrong-NPC/non-travel/unknown/out-of-bounds requests rejected')
