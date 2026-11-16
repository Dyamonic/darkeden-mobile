"""Manage this project's hidden local server and emulator connection."""
from pathlib import Path
import argparse,datetime,json,os,secrets,sqlite3,subprocess,sys,time,urllib.request
from engine import Engine,ROOT
STATE=Path(os.environ.get('LOCALAPPDATA',Path.home()))/'DarkEdenMobileServer'
ADB=Path.home()/'AppData/Local/Android/Sdk/platform-tools/adb.exe'
def health():
    try:
        with urllib.request.urlopen('http://127.0.0.1:8088/health',timeout=1) as r:return json.load(r).get('protocol')==1
    except Exception:return False
def main():
    p=argparse.ArgumentParser();p.add_argument('action',choices=['setup','start','stop','status','connect']);p.add_argument('--serial',default='emulator-5554');args=p.parse_args()
    STATE.mkdir(parents=True,exist_ok=True)
    def adb(*cmd):return subprocess.run([str(ADB),'-s',args.serial,*cmd],check=True,capture_output=True)
    if args.action=='setup':
        probe=Engine(STATE/'world.sqlite3')
        imported=bool(probe.db.execute("SELECT 1 FROM metadata WHERE key='imported'").fetchone());probe.db.close()
        if not imported:
            stamp=datetime.datetime.now().strftime('%Y%m%d-%H%M%S');backup=STATE/'backups'/stamp;backup.mkdir(parents=True)
            for name in ['offline-characters-v2.json','offline-characters-v2.json.bak','offline-save-v1.json','offline-save-v1.json.bak']:
                r=subprocess.run([str(ADB),'-s',args.serial,'exec-out','run-as','com.yofijoy.tzlyby','cat','files/'+name],capture_output=True)
                if r.returncode==0:(backup/name).write_bytes(r.stdout)
            roster=json.loads((backup/'offline-characters-v2.json').read_text(encoding='utf-8'))
            game=Engine(STATE/'world.sqlite3');game.import_roster(roster);game.db.close()
            print('Backed up and imported',len(roster['characters']),'characters; originals:',backup)
        else:print('Existing server database retained')
    if args.action in ['setup','start']:
        if not health():
            log=(STATE/'stdout.log').open('ab')
            subprocess.Popen([sys.executable,str(ROOT/'server/run.py'),'--state-dir',str(STATE)],cwd=ROOT,stdout=log,stderr=log,
                creationflags=getattr(subprocess,'CREATE_NO_WINDOW',0));log.close()
            for _ in range(100):
                if health():break
                time.sleep(.1)
            if not health():raise RuntimeError('Server did not start; inspect '+str(STATE/'stdout.log'))
        print('Private server ready at 127.0.0.1:8088')
    if args.action in ['setup','start','connect']:
        secret=json.loads((STATE/'connection.json').read_text())
        config=STATE/'mobile-server.json';config.write_text(json.dumps({'url':'http://127.0.0.1:8088','token':secret['token']}))
        adb('reverse','tcp:8088','tcp:8088')
        adb('push',str(config),'/data/local/tmp/mobile-server-config.json')
        adb('shell','run-as','com.yofijoy.tzlyby','cp','/data/local/tmp/mobile-server-config.json','files/mobile-server.json')
        adb('shell','rm','/data/local/tmp/mobile-server-config.json')
        print('Connected',args.serial,'using its private app configuration')
    if args.action=='stop':
        (STATE/'shutdown').write_text('stop')
        for _ in range(100):
            if not health():break
            time.sleep(.1)
        print('Server stopped' if not health() else 'Server is still shutting down')
    if args.action=='status':print('running' if health() else 'stopped')

if __name__=='__main__':main()
