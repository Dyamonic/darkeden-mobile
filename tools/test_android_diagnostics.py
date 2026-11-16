from pathlib import Path
import zipfile,sys,hashlib,struct,zlib
sys.path.insert(0,'tools')
from android_diagnostics import disable_device_log_collectors,targets
base=Path('android-studio-project/app/build/outputs/apk/apktool/offline-launcher-unsigned.apk')
final=zipfile.ZipFile(sys.argv[1]) if len(sys.argv)>1 else None
with zipfile.ZipFile(base) as z:
 count=0
 for name in z.namelist():
  if not (name.startswith('classes') and name.endswith('.dex')):continue
  old=z.read(name);new,changes=disable_device_log_collectors(old);count+=len(changes)
  if final:assert final.read(name)==new, name+' differs from expected patched DEX'
  assert len(old)==len(new)
  again,_=disable_device_log_collectors(new);assert again==new
  mask=bytearray(len(old));mask[8:32]=b'\1'*24
  for c in changes:mask[c['offset']:c['offset']+c['bytes']]=b'\1'*c['bytes']
  assert all(a==b or mask[i] for i,(a,b) in enumerate(zip(old,new)))
  assert hashlib.sha1(new[32:]).digest()==new[12:32]
  assert zlib.adler32(new[12:])&0xffffffff==struct.unpack_from('<I',new,8)[0]
  for code,void,method in targets(new)[1]:
   assert new[code+16:code+18]==(b'\x0e\0' if void else b'\x1a\0'),method
  print(name,len(changes),'disabled diagnostic methods')
 assert count>=6
if final:final.close()
print('PASS native diagnostic entry points disabled; DEX layout/other code preserved; checksums valid; patch idempotent')
