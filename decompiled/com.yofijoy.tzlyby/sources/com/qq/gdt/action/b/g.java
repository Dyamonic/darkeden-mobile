package com.qq.gdt.action.b;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class g {
    public static ByteBuffer a(File file) throws e, IOException {
        RandomAccessFile randomAccessFile = null;
        if (file == null || !file.exists() || !file.isFile()) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                d<ByteBuffer, Long> a = a.a(randomAccessFile2);
                ByteBuffer a2 = a.a();
                long longValue = a.b().longValue();
                if (h.a(randomAccessFile2, longValue)) {
                    throw new e("ZIP64 APK not supported");
                }
                ByteBuffer a3 = a.a(randomAccessFile2, a.a(a2, longValue)).a();
                randomAccessFile2.close();
                return a3;
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Map<Integer, ByteBuffer> a(ByteBuffer byteBuffer) throws e {
        a.a(byteBuffer);
        ByteBuffer a = a.a(byteBuffer, 8, byteBuffer.capacity() - 24);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        while (a.hasRemaining()) {
            i++;
            if (a.remaining() < 8) {
                throw new e("Insufficient data to read size of APK Signing Block entry #" + i);
            }
            long j = a.getLong();
            if (j < 4 || j > 2147483647L) {
                throw new e("APK Signing Block entry #" + i + " size out of range: " + j);
            }
            int i2 = (int) j;
            int position = a.position() + i2;
            if (i2 > a.remaining()) {
                throw new e("APK Signing Block entry #" + i + " size out of range: " + i2 + ", available: " + a.remaining());
            }
            linkedHashMap.put(Integer.valueOf(a.getInt()), a.a(a, i2 - 4));
            a.position(position);
        }
        if (!linkedHashMap.isEmpty()) {
            return linkedHashMap;
        }
        throw new e("not have Id-Value Pair in APK Signing Block entry #" + i);
    }
}
