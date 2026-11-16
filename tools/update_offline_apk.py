"""Replace offline Lua archives in a built APK without recompressing game assets.

The result is unsigned; run zipalign and apksigner before installing.
"""
from pathlib import Path
import argparse
import copy
import shutil
import struct
import zipfile
import json
from android_manifest import remove_device_log_permission
from android_diagnostics import disable_device_log_collectors

ROOT = Path(__file__).resolve().parents[1]


def update(source, target):
    replacements = {
        'assets/res/bil.pk': ROOT / 'editable-apk/assets/res/bil.pk',
        'assets/win32/res/emag.pk': ROOT / 'editable-apk/assets/win32/res/emag.pk',
        'assets/win32/res/bil2.pk': ROOT / 'editable-apk/assets/win32/res/bil2.pk',
        'assets/res/edoc.pk': ROOT / 'editable-apk/assets/res/edoc.pk',
    }
    for manifest in ['asset-replacements.json','image-replacements.json','android-replacements.json']:
        path=ROOT/'game-translation'/manifest
        if path.exists():
            for name in json.loads(path.read_text(encoding='utf-8')):
                name=name.replace('\\','/')
                replacements[name]=ROOT/'editable-apk'/name
    assert source.resolve() != target.resolve()
    with zipfile.ZipFile(source) as zin, zipfile.ZipFile(target, 'w', allowZip64=True) as zout:
        for original in zin.infolist():
            name = original.filename
            if name.endswith(('.original', '.before-offline')):
                continue
            if name.upper().startswith('META-INF/') and name.upper().endswith(('.RSA', '.SF', '.DSA', '.EC', 'MANIFEST.MF')):
                continue
            if name == 'AndroidManifest.xml':
                manifest, removed = remove_device_log_permission(zin.read(name))
                zout.writestr(name, manifest, compress_type=original.compress_type)
                print('Removed device-log permissions:', removed)
                continue
            if name.startswith('classes') and name.endswith('.dex'):
                dex, changes = disable_device_log_collectors(zin.read(name))
                zout.writestr(name, dex, compress_type=original.compress_type)
                if changes: print('Disabled device-log diagnostic methods:',len(changes))
                continue
            if name in replacements:
                zout.writestr(name, replacements[name].read_bytes(), compress_type=original.compress_type)
                continue
            info = copy.copy(original)
            zin.fp.seek(original.header_offset)
            header = zin.fp.read(30)
            assert header[:4] == b'PK\x03\x04'
            filename_len, extra_len = struct.unpack_from('<HH', header, 26)
            record_size = 30 + filename_len + extra_len + original.compress_size
            if original.flag_bits & 8:
                zin.fp.seek(original.header_offset + record_size)
                marker = zin.fp.read(4)
                record_size += (24 if original.file_size > 0xFFFFFFFF else 16) if marker == b'PK\x07\x08' else 12
            info.header_offset = zout.fp.tell()
            zin.fp.seek(original.header_offset)
            remaining = record_size
            while remaining:
                block = zin.fp.read(min(4*1024*1024, remaining))
                if not block:
                    raise EOFError(name)
                zout.fp.write(block)
                remaining -= len(block)
            zout.filelist.append(info)
            zout.NameToInfo[name] = info
            zout.start_dir = zout.fp.tell()
            zout._didModify = True
    with zipfile.ZipFile(target) as check:
        for name, path in replacements.items():
            assert check.read(name) == path.read_bytes()
    print('Updated APK', target)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('source', type=Path)
    parser.add_argument('target', type=Path)
    args = parser.parse_args()
    update(args.source, args.target)
