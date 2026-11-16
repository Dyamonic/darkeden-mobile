"""Recover original Lua archives or pack a reproducible offline build overlay."""
from pathlib import Path
import argparse
import io
import struct
import zipfile
import xxtea

ROOT = Path(__file__).resolve().parents[1]
KEY = b'qLfSSHqy8PXUtf6I'
SIGN = b'xtnWpV'
ARCHIVES = {
    'bil': 'res/bil.pk', 'edoc': 'res/edoc.pk',
    'bil2': 'win32/res/bil2.pk', 'emag': 'win32/res/emag.pk',
    'protobuf': 'win32/res/protobuf.pk',
}


def decrypt(data):
    assert data.startswith(SIGN), 'Unrecognized archive signature'
    raw = xxtea.decrypt(data[len(SIGN):], KEY, padding=False)
    size = struct.unpack('<I', raw[-4:])[0]
    assert len(raw) - 7 <= size <= len(raw) - 4, 'Invalid decrypted length'
    return raw[:size]


def encrypt(data):
    raw = data + b'\0' * (-len(data) % 4) + struct.pack('<I', len(data))
    return SIGN + xxtea.encrypt(raw, KEY, padding=False)


def unpack():
    for name, rel in ARCHIVES.items():
        target = ROOT / 'reverse-engineering/unpacked' / name
        target.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(io.BytesIO(decrypt((ROOT / 'editable-apk/assets' / rel).read_bytes()))) as z:
            for entry in z.infolist():
                dest = (target / entry.filename).resolve()
                assert target.resolve() in dest.parents
                dest.parent.mkdir(parents=True, exist_ok=True)
                dest.write_bytes(z.read(entry))
            print(name, len(z.namelist()), 'modules')


def pack():
    for name in ['bil', 'bil2', 'edoc', 'emag']:
        sources = ROOT / 'reverse-engineering/unpacked' / name
        entries = {p.name: p.read_bytes() for p in sources.iterdir() if p.is_file()}
        localized = ROOT / 'reverse-engineering/localized' / name
        if localized.exists():
            entries.update({p.name:p.read_bytes() for p in localized.iterdir() if p.is_file()})
        if name == 'bil':
            entries['main'] = (ROOT / 'reverse-engineering/offline/bootstrap.lua').read_bytes()
        elif name == 'emag':
            for p in (ROOT / 'reverse-engineering/offline').glob('*.lua'):
                if p.stem in {'Bridge', 'Store', 'World', 'Navigation', 'StartScene', 'Roster', 'EnglishUI', 'Locations', 'WorldData'}:
                    entries['app.offline.' + p.stem] = p.read_bytes()
        buf = io.BytesIO()
        with zipfile.ZipFile(buf, 'w', zipfile.ZIP_DEFLATED) as z:
            for key, data in sorted(entries.items()):
                info = zipfile.ZipInfo(key, (2026, 11, 15, 0, 0, 0))
                info.compress_type = zipfile.ZIP_DEFLATED
                z.writestr(info, data)
        encrypted = encrypt(buf.getvalue())
        assert decrypt(encrypted) == buf.getvalue()
        path = ROOT / 'editable-apk/assets' / ARCHIVES[name]
        backup = path.with_suffix('.pk.original')
        if not backup.exists():
            backup.write_bytes(path.read_bytes())
        path.write_bytes(encrypted)
        print('Packed', name, len(entries), 'modules')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('action', choices=['unpack', 'pack'])
    args = parser.parse_args()
    {'unpack': unpack, 'pack': pack}[args.action]()
