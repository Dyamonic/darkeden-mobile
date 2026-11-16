package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Cascara {
    public static final HashMap<String, Cif> a = new HashMap<>();
    public static final Object b;

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Cascara$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Runnable {
        public final /* synthetic */ Cif a;

        public Cdo(Cif cif) {
            this.a = cif;
        }

        @Override // java.lang.Runnable
        public void run() {
            Context context;
            FileChannel fileChannel;
            RandomAccessFile randomAccessFile;
            System.currentTimeMillis();
            String cif = this.a.toString();
            synchronized (Ccase.class) {
                context = Ccase.a;
            }
            File file = new File(context.getDir("turingfd", 0), Foxnut.f);
            int length = cif.length();
            synchronized (Cascara.b) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                FileLock fileLock = null;
                try {
                    randomAccessFile = new RandomAccessFile(file, "rw");
                    try {
                        fileChannel = randomAccessFile.getChannel();
                    } catch (Throwable unused) {
                        fileChannel = null;
                    }
                } catch (Throwable unused2) {
                    fileChannel = null;
                    randomAccessFile = null;
                }
                try {
                    fileLock = fileChannel.lock();
                    if (randomAccessFile.length() != 0) {
                        ByteBuffer allocate = ByteBuffer.allocate(1024);
                        while (true) {
                            int read = fileChannel.read(allocate);
                            if (read <= 0) {
                                break;
                            }
                            byteArrayOutputStream.write(allocate.array(), 0, read);
                            allocate.clear();
                        }
                        cif = byteArrayOutputStream + "," + cif;
                        if (cif.length() > (length + 1) * 50) {
                            cif = cif.substring(cif.indexOf(",") + 1);
                        }
                    }
                    fileChannel.position(0L);
                    ByteBuffer wrap = ByteBuffer.wrap(cif.getBytes());
                    while (wrap.hasRemaining()) {
                        fileChannel.write(wrap);
                    }
                    fileChannel.truncate(wrap.position());
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException unused3) {
                        }
                    }
                    Auriga.a(fileChannel);
                } catch (Throwable unused4) {
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException unused5) {
                        }
                    }
                    Auriga.a(fileChannel);
                    Auriga.a(randomAccessFile);
                }
                Auriga.a(randomAccessFile);
            }
        }
    }

    /* renamed from: com.tencent.turingfd.sdk.ams.ad.Cascara$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static final class Cif {
        public final long a;
        public final String b;

        public Cif(long j, String str) {
            this.a = j;
            this.b = str;
        }

        public String toString() {
            return this.a + ":" + this.b;
        }
    }

    static {
        new AtomicBoolean(false);
        b = new Object();
        new AtomicReference();
    }

    public static void a(long j, String str) {
        int i;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Cif cif = new Cif(j, str);
        byte[] bytes = str.getBytes();
        ByteBuffer wrap = ByteBuffer.wrap(bytes);
        int length = bytes.length;
        long j10 = (length * (-4132994306676758123L)) ^ 0;
        int i2 = 0;
        int i3 = 0;
        while (i3 < (length >> 3)) {
            int i4 = i2 + (i3 << 3);
            long j11 = ((wrap.get(i4 + 0) & 255) + ((wrap.get(i4 + 1) & 255) << 8) + ((wrap.get(i4 + 2) & 255) << 16) + ((wrap.get(i4 + 3) & 255) << 24) + ((wrap.get(i4 + 4) & 255) << 32) + ((wrap.get(i4 + 5) & 255) << 40) + ((wrap.get(i4 + 6) & 255) << 48) + ((wrap.get(i4 + 7) & 255) << 56)) * (-4132994306676758123L);
            j10 = (j10 ^ ((j11 ^ (j11 >>> 47)) * (-4132994306676758123L))) * (-4132994306676758123L);
            i3++;
            i2 = 0;
        }
        long j12 = j10;
        switch (length & 7) {
            case 1:
                i = 0;
                j2 = j12;
                long j13 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j13 * (-4132994306676758123L);
                break;
            case 2:
                i = 0;
                j3 = j12;
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j132 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j132 * (-4132994306676758123L);
                break;
            case 3:
                i = 0;
                j4 = j12;
                j3 = j4 ^ (wrap.get(((i + length) - r3) + 2) << 16);
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j1322 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j1322 * (-4132994306676758123L);
                break;
            case 4:
                i = 0;
                j5 = j12;
                j4 = j5 ^ (wrap.get(((i + length) - r3) + 3) << 24);
                j3 = j4 ^ (wrap.get(((i + length) - r3) + 2) << 16);
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j13222 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j13222 * (-4132994306676758123L);
                break;
            case 5:
                i = 0;
                j6 = j12;
                j5 = j6 ^ (wrap.get(((i + length) - r3) + 4) << 32);
                j4 = j5 ^ (wrap.get(((i + length) - r3) + 3) << 24);
                j3 = j4 ^ (wrap.get(((i + length) - r3) + 2) << 16);
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j132222 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j132222 * (-4132994306676758123L);
                break;
            case 6:
                j7 = j12;
                i = 0;
                j6 = j7 ^ (wrap.get(((0 + length) - r3) + 5) << 40);
                j5 = j6 ^ (wrap.get(((i + length) - r3) + 4) << 32);
                j4 = j5 ^ (wrap.get(((i + length) - r3) + 3) << 24);
                j3 = j4 ^ (wrap.get(((i + length) - r3) + 2) << 16);
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j1322222 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j1322222 * (-4132994306676758123L);
                break;
            case 7:
                j7 = j12 ^ (wrap.get(((length + 0) - r3) + 6) << 48);
                i = 0;
                j6 = j7 ^ (wrap.get(((0 + length) - r3) + 5) << 40);
                j5 = j6 ^ (wrap.get(((i + length) - r3) + 4) << 32);
                j4 = j5 ^ (wrap.get(((i + length) - r3) + 3) << 24);
                j3 = j4 ^ (wrap.get(((i + length) - r3) + 2) << 16);
                j2 = j3 ^ (wrap.get(((i + length) - r3) + 1) << 8);
                long j13222222 = wrap.get((i + length) - r3) ^ j2;
                j8 = -4132994306676758123L;
                j9 = j13222222 * (-4132994306676758123L);
                break;
            default:
                j8 = -4132994306676758123L;
                j9 = j12;
                break;
        }
        long j14 = (j9 ^ (j9 >>> 47)) * j8;
        String valueOf = String.valueOf((j14 >>> 47) ^ j14);
        HashMap<String, Cif> hashMap = a;
        synchronized (hashMap) {
            hashMap.put(valueOf, cif);
        }
        Cpackage.a.submit(new Cdo(cif));
    }
}
