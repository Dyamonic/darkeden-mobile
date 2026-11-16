"""Reviewed English naming rules, applied only to display-name columns."""
import re

ROLES = {
    'communication': 'Comms', 'job change': 'Class Trainer',
    'career introduction': 'Class Guide', 'job transfer exchange': 'Class Exchange',
    'supply': 'Supplies', 'warehouse': 'Storage', 'skill': 'Skills',
    'knife, sword': 'Blades & Swords', 'knife': 'Blades', 'sword': 'Swords',
    'gun': 'Guns', 'weapon': 'Weapons', 'armor': 'Armor',
    'treatment': 'Healer', 'blessing': 'Blessings', 'silver plated': 'Silver Plating',
    'teleport': 'Travel', 'transmission': 'Travel', 'gloves and boots': 'Gloves & Boots',
    'donation': 'Donations', 'groceries': 'General Goods', 'equipment': 'Equipment',
    'repair': 'Repairs', 'marriage': 'Marriage', 'married': 'Marriage',
    'management': 'Steward', 'city management': 'City Steward', 'offensive': 'Attack',
    'tax rate': 'Taxes', 'tax': 'Taxes', 'reset': 'Reset', 'guide': 'Guide',
}
WORDS = {
    'eslania': 'Eslania', 'limbo': 'Limbo', 'lair': 'Lair', 'drobeta': 'Drobeta',
    'perona': 'Perona', 'ousters': 'Ousters', 'vampire': 'Vampire',
    'ne': 'Northeast', 'nw': 'Northwest', 'se': 'Southeast', 'sw': 'Southwest',
    'n': 'North', 's': 'South', 'e': 'East', 'w': 'West',
    'b1f': 'B1', 'b2f': 'B2', 'b3f': 'B3', '1f': '1F', '2f': '2F', '3f': '3F',
}

def clean_name(text):
    text = text.replace('Gurdian', 'Guardian').replace('BathoryFake', 'Bathory').replace('TepezFake', 'Tepez')
    text = re.sub(r'\s+', ' ', text).strip()
    return text

def zone_name(code, fallback):
    if not code or not re.search('[A-Za-z]', code): return clean_name(fallback)
    text = re.sub(r'[_]+', ' ', code)
    text = re.sub(r'([a-z])([A-Z])', r'\1 \2', text)
    words = [WORDS.get(w.lower(), w.capitalize() if w.islower() else w) for w in text.split()]
    return ' '.join(words)

def polish_database(connection, original, cache):
    changes = []
    def put(table, rowid, column, value):
        before = connection.execute(f'SELECT "{column}" FROM "{table}" WHERE rowid=?', (rowid,)).fetchone()[0]
        if before != value:
            connection.execute(f'UPDATE "{table}" SET "{column}"=? WHERE rowid=?', (value, rowid))
            changes.append({'table':table, 'rowid':rowid, 'column':column, 'before':before, 'english':value})
    for rowid, name, en in original.execute('SELECT rowid,MapName,MapName_en FROM Map'):
        put('Map', rowid, 'MapName', zone_name(en, cache.get(name,name)))
    for table, column in [('Item','Name'), ('Equip','Name'), ('MonsterInfo','Name')]:
        for rowid, name, en in original.execute(f'SELECT rowid,"{column}",ENName FROM "{table}"'):
            value = en.strip() if en and en.strip() else cache.get(name,name)
            put(table, rowid, column, clean_name(value))
    for rowid, item, description in connection.execute('SELECT rowid,ItemIdx,Description FROM Item').fetchall():
        value=description
        match=re.fullmatch(r'(?:Quickly )?[Rr]estore character (HP|MP) \+(\d+) within a certain period of time',description)
        if match:value=f'Restores {match[2]} {match[1]} over time.'
        if item in (301015,304001,308001):value='Restores 65 HP. Consumes one supply.'
        if item==306001:value='Revives your character when defeated.'
        if item==306002:value='Revives your character with full HP.'
        put('Item',rowid,'Description',value)
    roots = {}
    for rowid, name in original.execute('SELECT rowid,NpcName FROM NpcList'):
        current = connection.execute('SELECT NpcName FROM NpcList WHERE rowid=?',(rowid,)).fetchone()[0]
        value = clean_name(current)
        match = re.match(r'^(.*?)\s*\((.*?)\)\s*$', value)
        original_root = re.split(r'[（(]', name)[0].strip()
        if match:
            base = roots.setdefault(original_root, match[1].strip())
            role = ROLES.get(match[2].lower(), match[2].title())
            value = f'{base} ({role})'
        put('NpcList', rowid, 'NpcName', value)
    # Keep all other occurrences of the same displayed zone name consistent.
    zones = {a:b for a,b in connection.execute('SELECT MapCode,MapName FROM Map')}
    for rowid, code in original.execute('SELECT rowid,MapCode FROM MapTransferPoint'):
        if code in zones: put('MapTransferPoint',rowid,'MapName',zones[code])
    for rowid, code in original.execute('SELECT rowid,TargetMapCode FROM MapTransfer'):
        if code in zones: put('MapTransfer',rowid,'LandMarkName',zones[code])
    return changes
