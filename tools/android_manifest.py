"""Remove device-wide log access from the compiled offline manifest."""
import struct

READ_LOGS = 'android.permission.READ_LOGS'


def remove_device_log_permission(raw):
    assert struct.unpack_from('<H', raw)[0] == 3, 'Expected binary Android XML'
    pos = struct.unpack_from('<H', raw, 2)[0]
    chunks = []
    strings = None
    skip_depth = 0
    removed = 0
    while pos < len(raw):
        kind, header, size = struct.unpack_from('<HHI', raw, pos)
        assert size >= header >= 8 and pos + size <= len(raw)
        chunk = raw[pos:pos + size]
        if kind == 1:
            count, _, flags, start = struct.unpack_from('<IIII', chunk, 8)
            strings = []
            def length(offset, utf8):
                if utf8:
                    n = chunk[offset]; offset += 1
                    if n & 128:
                        n = ((n & 127) << 8) | chunk[offset]; offset += 1
                else:
                    n = struct.unpack_from('<H', chunk, offset)[0]; offset += 2
                    if n & 32768:
                        n = ((n & 32767) << 16) | struct.unpack_from('<H', chunk, offset)[0]; offset += 2
                return n, offset
            for i in range(count):
                offset = start + struct.unpack_from('<I', chunk, header + i * 4)[0]
                n, offset = length(offset, bool(flags & 256))
                if flags & 256:
                    n, offset = length(offset, True)
                    strings.append(chunk[offset:offset + n].decode('utf-8'))
                else:
                    strings.append(chunk[offset:offset + n * 2].decode('utf-16-le'))
        if skip_depth:
            if kind == 0x102: skip_depth += 1
            if kind == 0x103: skip_depth -= 1
        elif kind == 0x102:
            name = strings[struct.unpack_from('<I', chunk, 20)[0]]
            attr_start, attr_size, count = struct.unpack_from('<HHH', chunk, 24)
            forbidden = False
            for i in range(count):
                a = 16 + attr_start + i * attr_size
                key, value = struct.unpack_from('<II', chunk, a + 4)
                if value == 0xFFFFFFFF and chunk[a + 15] == 3:
                    value = struct.unpack_from('<I', chunk, a + 16)[0]
                if (name in ('uses-permission', 'uses-permission-sdk-23')
                        and strings[key] == 'name' and value != 0xFFFFFFFF
                        and strings[value] == READ_LOGS):
                    forbidden = True
            if forbidden:
                skip_depth = 1; removed += 1
            else:
                chunks.append(chunk)
        else:
            chunks.append(chunk)
        pos += size
    assert not skip_depth
    result = bytearray(raw[:8] + b''.join(chunks))
    struct.pack_into('<I', result, 4, len(result))
    return bytes(result), removed
