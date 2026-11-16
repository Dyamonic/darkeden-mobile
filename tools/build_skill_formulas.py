"""Extract arithmetic-only PC skill outputs and map exact normalized names."""
from pathlib import Path
import ast,hashlib,json,re,sqlite3,sys
ROOT=Path(__file__).resolve().parents[1];sys.path.insert(0,str(ROOT/'server'))
from formulas import compute,ALLOWED_INPUT
source_path=Path('C:/Users/nasse/Desktop/DarkEden-v2/server-master/src/server/gameserver/skill/SkillFormula.cpp')
source=source_path.read_text(encoding='utf-8')
clean=re.sub(r'/\*.*?\*/|//[^\n]*','',source,flags=re.S)
programs={}
for match in re.finditer(r'void (\w+)::computeOutput\([^)]*\)\s*\{',clean):
    start=match.end();end=start;depth=1
    while depth:
        if clean[end]=='{':depth+=1
        elif clean[end]=='}':depth-=1
        end+=1
    body=clean[start:end-1]
    if re.search(r'\b(if|else|switch|for|while|return)\b|[{}]',body):continue
    program=[];valid=True
    for statement in body.split(';'):
        statement=statement.strip()
        if not statement:continue
        assignment=re.fullmatch(r'(?:(?:int|float|double|uint|DWORD|Damage_t|Duration_t)\s+)?([\w.]+)\s*=\s*(.+)',statement,re.S)
        if not assignment:valid=False;break
        name,expr=assignment.groups();expr=re.sub(r'\((?:int|float|double|uint|DWORD|Damage_t|Duration_t)\)','',expr)
        try:ast.parse(expr,mode='eval')
        except SyntaxError:valid=False;break
        program.append([name,expr])
    if not valid:continue
    try:compute(program,{k:20 if k not in ['Level','SkillLevel','DomainLevel'] else 5 for k in ALLOWED_INPUT})
    except (KeyError,ValueError,TypeError,ZeroDivisionError):continue
    programs[re.sub('[^a-z0-9]','',match[1].lower())]={'class':match[1],'program':program}
db=sqlite3.connect(ROOT/'editable-apk/assets/win32/res/data/data.bin');db.row_factory=sqlite3.Row
mapped={}
for row in db.execute('SELECT SkillId,ENName,Name FROM Skill'):
    key=re.sub('[^a-z0-9]','',(row['ENName'] or row['Name']).lower())
    if key in programs:mapped[str(row['SkillId'])]={'name':row['ENName'],**programs[key]}
output={'source_sha256':hashlib.sha256(source_path.read_bytes()).hexdigest(),'skills':mapped}
(ROOT/'server/data/skill-formulas.json').write_text(json.dumps(output,indent=2)+'\n')
print('Extracted',len(programs),'PC arithmetic programs;',len(mapped),'mobile skill name matches')
