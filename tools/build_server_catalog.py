"""Build explicit PC item -> mobile ID candidates for the private server."""
from pathlib import Path
import csv,json,re,sqlite3
from audit_pc_server import tables
ROOT=Path(__file__).resolve().parents[1]
PC=Path('C:/Users/nasse/Desktop/DarkEden-v2/server-master')
sql=(PC/'initdb/DARKEDEN.sql').read_text(encoding='utf-8')
header=(PC/'src/server/gameserver/Item.h').read_text(encoding='utf-8')
names=re.findall(r'"ITEM_CLASS_([A-Z_0-9]+)"',header.split('const string ItemClass2String[] = {',1)[1].split('};',1)[0])
available=re.findall(r'CREATE TABLE `([^`]+)`',sql)
normalize=lambda s:re.sub('[^a-z0-9]','',s.lower())
db=sqlite3.connect(ROOT/'editable-apk/assets/win32/res/data/data.bin');db.row_factory=sqlite3.Row
mobile={}
for table,kind in [('Item',1),('Equip',2)]:
 for row in db.execute('SELECT * FROM '+table):
  for name in [row['ENName'],row['Name']]:
   if name:mobile.setdefault(normalize(name),{})[(kind,row['ItemIdx'])]=dict(row)
output=[];table_map={}
for cls,name in enumerate(names):
 for t in available:
  if normalize(t)==normalize(name+'Info'):table_map[cls]=t
data=tables(sql,list(set(table_map.values())))
for cls,table in table_map.items():
 for row in data[table]:
  en=row.get('EName') or row.get('Name') or ''
  matches=mobile.get(normalize(en),{})
  # Ambiguous matches are retained as unresolved, never guessed at runtime.
  if len(matches)==1:
   (kind,mid),item=next(iter(matches.items()))
   output.append({'pc_class':cls,'pc_class_name':names[cls],'pc_type':row.get('ItemType',row.get('Type',0)),
       'pc_name':en,'mobile_kind':kind,'mobile_id':mid,'mobile_name':item['Name'],'match':'unique normalized English name'})
out=ROOT/'server/data';out.mkdir(parents=True,exist_ok=True)
(out/'item-mappings.json').write_text(json.dumps(output,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(out/'item-classes.json').write_text(json.dumps(names,indent=2)+'\n',encoding='utf-8')
constant=(ROOT/'reverse-engineering/unpacked/emag/app.common.Constant').read_text(encoding='utf-8')
def constants(name):
 block=re.search(r'Constant\.'+name+r'\s*=\s*\{(.*?)^\}',constant,re.S|re.M)[1]
 return {k:int(v) for k,v in re.findall(r'^\s*(\w+)\s*=\s*(-?\d+)',block,re.M)}
equipment={'kinds':constants('EquipKind'),'slots':{str(r):constants(name+'EquipPos') for r,name in [(1,'Slayer'),(2,'Vampire'),(3,'Ousters')]}}
(out/'equipment-slots.json').write_text(json.dumps(equipment,indent=2)+'\n')
print('Mapped',len(output),'PC item definitions to mobile IDs;',len(table_map),'PC item tables inspected')
