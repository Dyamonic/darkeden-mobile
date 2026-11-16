"""Disable bundled device-log collection without changing DEX layout or indices."""
import hashlib,struct,zlib


def uleb(data,pos):
    result=shift=0
    while True:
        b=data[pos];pos+=1;result|=(b&127)<<shift
        if not b&128:return result,pos
        shift+=7
        assert shift<=35


def targets(raw):
    assert raw[:4]==b'dex\n'
    def table(offset):return struct.unpack_from('<II',raw,offset)
    count,start=table(56);strings=[]
    for i in range(count):
        p=struct.unpack_from('<I',raw,start+4*i)[0];_,p=uleb(raw,p)
        strings.append(raw[p:raw.index(0,p)].decode('utf8',errors='replace'))
    count,start=table(64);types=[strings[struct.unpack_from('<I',raw,start+4*i)[0]] for i in range(count)]
    count,start=table(72);protos=[]
    for i in range(count):
        _,ret,p=struct.unpack_from('<III',raw,start+12*i);args=[]
        if p:
            n=struct.unpack_from('<I',raw,p)[0]
            args=[types[struct.unpack_from('<H',raw,p+4+2*j)[0]] for j in range(n)]
        protos.append('('+''.join(args)+')'+types[ret])
    count,start=table(88);methods=[]
    for i in range(count):
        cls,proto,name=struct.unpack_from('<HHI',raw,start+8*i);methods.append((types[cls],strings[name],protos[proto]))
    count,start=table(96);found=[]
    for i in range(count):
        p=struct.unpack_from('<I',raw,start+32*i+24)[0]
        if not p:continue
        sizes=[]
        for _ in range(4):n,p=uleb(raw,p);sizes.append(n)
        for _ in range(sizes[0]+sizes[1]):_,p=uleb(raw,p);_,p=uleb(raw,p)
        for size in sizes[2:]:
            idx=0
            for _ in range(size):
                diff,p=uleb(raw,p);idx+=diff;_,p=uleb(raw,p);code,p=uleb(raw,p)
                cls,name,proto=methods[idx]
                void=(cls=='Lcom/tencent/bugly/crashreport/CrashReport;' and name in {'initCrashReport','startCrashReport','enableBugly'} and proto.endswith('V'))
                logs=(cls=='Lcom/tencent/bugly/proguard/ap;' and name=='a' and proto=='(ILjava/lang/String;)Ljava/lang/String;')
                if code and (void or logs):found.append((code,void,cls+'->'+name+proto))
    return strings,found


def disable_device_log_collectors(raw):
    strings,methods=targets(raw)
    if not methods:return raw,[]
    patched=bytearray(raw);changes=[]
    # Only original leading instructions are replaced; code items, exception
    # handlers, method IDs, debug offsets and all other instructions keep layout.
    widths={0x00:1,0x0e:1,0x11:1,0x12:1,0x13:2,0x1a:2,0x1b:3,
            **{x:2 for x in range(0x32,0x3e)},**{x:2 for x in range(0x60,0x6e)},
            **{x:3 for x in range(0x6e,0x73)}}
    for code,void,name in methods:
        start=code+16
        stub=[0x000e] if void else [0x001a,strings.index(''),0x0011]
        words=0
        while words<len(stub):
            opcode=raw[start+2*words];assert opcode in widths,(name,hex(opcode))
            words+=widths[opcode]
        assert words<=struct.unpack_from('<I',raw,code+12)[0]
        data=struct.pack('<'+'H'*words,*(stub+[0]*(words-len(stub))))
        patched[start:start+len(data)]=data;changes.append({'method':name,'offset':start,'bytes':len(data)})
    patched[12:32]=hashlib.sha1(patched[32:]).digest()
    struct.pack_into('<I',patched,8,zlib.adler32(patched[12:])&0xffffffff)
    return bytes(patched),changes
