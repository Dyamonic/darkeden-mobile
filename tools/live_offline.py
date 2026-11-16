"""Debug-only: run an offline source revision on the emulator's GL thread.

Requires a matching frida-server started with --ignore-crashes as the game's UID and a
localhost adb forward on port 27042. Does not authenticate to any game server.
Use start_game_debugger.py: the default native crash monitor can request Android
device-log access even when the game does not declare READ_LOGS.
"""
from pathlib import Path
import json
import subprocess
import threading
import re
import sys
import frida

ROOT = Path(__file__).resolve().parents[1]
ADB = Path.home() / 'AppData/Local/Android/Sdk/platform-tools/adb.exe'
pid = int(subprocess.check_output([str(ADB), 'shell', 'pidof', 'com.yofijoy.tzlyby']))
device = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
session = device.attach(pid, realm='emulated')
source = ROOT / 'reverse-engineering/offline'
lua = []
for path in source.glob('*.lua'):
    if path.stem == 'bootstrap':
        continue
    # Lua long string syntax avoids shell escaping and preserves source exactly.
    content = path.read_text(encoding='utf-8')
    delimiter = '='
    while ']' + delimiter + ']' in content:
        delimiter += '='
    module = 'app.offline.' + path.stem
    lua.append(f'package.loaded["{module}"]=nil; package.preload["{module}"]=assert(loadstring([{delimiter}[{content}]{delimiter}],"{module}"))')
bootstrap=source.joinpath('bootstrap.lua').read_text(encoding='utf-8')
bootstrap=bootstrap.replace('    package.loaded.game = nil', '\n'.join(lua)+'\n    package.loaded.game = nil')
code = 'for k in pairs(package.loaded) do if k:sub(1,4)=="app." then package.loaded[k]=nil end end\n'+bootstrap
if len(sys.argv)>1:
    if sys.argv[1]=='--bridge':
        content=source.joinpath('Bridge.lua').read_text(encoding='utf-8')
        delimiter='===='
        code='local fresh=assert(loadstring(['+delimiter+'['+content+']'+delimiter+']))(); for k,v in pairs(fresh) do _G_OFFLINE_BRIDGE[k]=v end; '
        if len(sys.argv)>2: code+=Path(sys.argv[2]).read_text(encoding='utf-8-sig')
    else:
        code=Path(sys.argv[1]).read_text(encoding='utf-8-sig')
script = session.create_script('''
const m=Process.getModuleByName('libcocos2dlua.so');
const getEngine=new NativeFunction(m.base.add(0x997798),'pointer',[]);
const execute=new NativeFunction(m.base.add(0x997918),'int',['pointer','pointer']);
const source=Memory.allocUtf8String(CODE);
let fired=false;
const hook=Interceptor.attach(m.base.add(0x8a8e44),{onEnter(){
  if(fired)return; fired=true;
  try { const result=execute(getEngine(),source);send({result}); }
  catch(e){send({error:String(e)});}
}});
'''.replace('CODE', json.dumps(code)))
finished = threading.Event()


def message(m, data):
    print(m)
    finished.set()


script.on('message', message)
script.load()
if not finished.wait(20):
    raise TimeoutError('GL thread did not execute the offline revision')
session.detach()
