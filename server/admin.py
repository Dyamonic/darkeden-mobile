"""Local administrator operations; no remote promotion/import endpoints exist."""
from pathlib import Path
import argparse,json,os,sqlite3
from engine import Engine

def main():
    p=argparse.ArgumentParser();p.add_argument('--state-dir',type=Path,default=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer')
    sub=p.add_subparsers(dest='action',required=True)
    imp=sub.add_parser('import');imp.add_argument('roster',type=Path)
    gm=sub.add_parser('gm');gm.add_argument('name');gm.add_argument('--revoke',action='store_true')
    sub.add_parser('status');args=p.parse_args();args.state_dir.mkdir(parents=True,exist_ok=True)
    game=Engine(args.state_dir/'world.sqlite3')
    if args.action=='import':
        roster=json.loads(args.roster.read_text(encoding='utf-8-sig'));game.import_roster(roster);print('Imported',len(roster['characters']),'characters; original roster kept')
    elif args.action=='gm':
        count=game.db.execute('UPDATE characters SET gm=? WHERE name=?',(0 if args.revoke else 1,args.name.casefold())).rowcount
        game.db.commit();assert count==1,'Character not found';print('GM role updated; reconnect this character')
    else:
        for row in game.db.execute('SELECT name,gm FROM characters'):print(row[0], 'GM' if row[1] else 'player')
    game.db.close()

if __name__=='__main__':main()
