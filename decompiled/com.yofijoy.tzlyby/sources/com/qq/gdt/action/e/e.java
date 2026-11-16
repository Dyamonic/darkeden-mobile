package com.qq.gdt.action.e;

import com.qq.gdt.action.j.o;
import com.rich.oauth.util.LogToFile;

/* loaded from: classes.dex */
final class e {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', LogToFile.DEBUG, LogToFile.ERROR, 'f'};

    public static String a(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        try {
            char[] cArr = new char[length << 1];
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = i + 1;
                char[] cArr2 = a;
                cArr[i] = cArr2[(bArr[i2] >>> 4) & 15];
                i = i3 + 1;
                cArr[i3] = cArr2[bArr[i2] & 15];
            }
            return new String(cArr);
        } catch (Throwable th) {
            o.b("bytes2HexString", th);
            return null;
        }
    }
}
