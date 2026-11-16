package com.qq.gdt.action.b;

import com.qq.gdt.action.j.o;
import java.io.DataInput;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public class f {
    static final byte[] a = {108, 116, 108, 111, 118, 101, 122, 104};

    public static String a(File file) {
        try {
            return b(file);
        } catch (Exception e) {
            o.a("" + e, new Object[0]);
            return "";
        }
    }

    private static short a(DataInput dataInput) throws IOException {
        byte[] bArr = new byte[2];
        dataInput.readFully(bArr);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getShort(0);
    }

    private static boolean a(byte[] bArr) {
        if (bArr.length != a.length) {
            return false;
        }
        int i = 0;
        while (true) {
            byte[] bArr2 = a;
            if (i >= bArr2.length) {
                return true;
            }
            if (bArr[i] != bArr2[i]) {
                return false;
            }
            i++;
        }
    }

    public static String b(File file) throws Exception {
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                long length = randomAccessFile2.length();
                byte[] bArr = new byte[a.length];
                long length2 = length - r6.length;
                randomAccessFile2.seek(length2);
                randomAccessFile2.readFully(bArr);
                if (!a(bArr)) {
                    throw new Exception("zip v1 magic not found");
                }
                long j = length2 - 2;
                randomAccessFile2.seek(j);
                int a2 = a(randomAccessFile2);
                if (a2 <= 0) {
                    throw new Exception("zip channel info not found");
                }
                randomAccessFile2.seek(j - a2);
                byte[] bArr2 = new byte[a2];
                randomAccessFile2.readFully(bArr2);
                String trim = new String(bArr2, "UTF-8").trim();
                randomAccessFile2.close();
                return trim;
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
}
