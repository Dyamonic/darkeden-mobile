package com.qq.gdt.action.j;

import com.rich.oauth.util.LogToFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class u {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', LogToFile.DEBUG, LogToFile.ERROR, 'f'};

    public static String a(String str) {
        return a(str.getBytes());
    }

    public static String a(byte[] bArr) {
        return c(b(bArr));
    }

    private static byte[] a(byte[] bArr, String str) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                o.c(e.getMessage());
            }
        }
        return null;
    }

    public static byte[] b(byte[] bArr) {
        return a(bArr, "MD5");
    }

    public static String c(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
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
    }
}
