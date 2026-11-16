"""Start app-UID instrumentation without Android's device-log crash monitor."""
from pathlib import Path
import os,subprocess
adb=Path.home()/'AppData/Local/Android/Sdk/platform-tools/adb.exe'
cmd=[str(adb),'-s',os.environ.get('ANDROID_SERIAL','emulator-5554')]
flags=getattr(subprocess,'CREATE_NO_WINDOW',0)
def run(args,check=True):return subprocess.run(cmd+args,check=check,creationflags=flags)
run(['shell','run-as','com.yofijoy.tzlyby','pkill','-f','^./mobile-frida-server'],False)
run(['shell','run-as','com.yofijoy.tzlyby','env','TMPDIR=/data/user/0/com.yofijoy.tzlyby/cache','./mobile-frida-server','--ignore-crashes','--daemonize'])
run(['forward','tcp:27042','tcp:27042'])
print('Started debugger with native crash/log monitoring disabled')
