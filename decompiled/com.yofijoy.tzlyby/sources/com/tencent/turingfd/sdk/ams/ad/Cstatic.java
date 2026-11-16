package com.tencent.turingfd.sdk.ams.ad;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.static, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cstatic {
    public static byte[] a() {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            String a = Cfinally.a(Cfinally.D0);
            int[] iArr = {-36, -46, -45, -77, -22, -10, 47, -77, -72, -69, -32, 25, 21, -21, -6, -75, -71, 31, -39, -49, -49};
            for (int i = 0; i < a.length(); i++) {
                stringBuffer.append((char) (a.charAt(i) + iArr[i]));
            }
            return stringBuffer.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] b(byte[] bArr, byte[] bArr2) {
        byte[] a = a(bArr2);
        if (bArr == null || a == null || bArr.length == 0) {
            return bArr;
        }
        int length = bArr.length % 4 == 0 ? (bArr.length >>> 2) + 1 : (bArr.length >>> 2) + 2;
        int[] iArr = new int[length];
        a(bArr, iArr);
        int i = length - 1;
        iArr[i] = bArr.length;
        int length2 = a.length % 4 == 0 ? a.length >>> 2 : (a.length >>> 2) + 1;
        int i2 = length2 >= 4 ? length2 : 4;
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr2[i3] = 0;
        }
        a(a, iArr2);
        int i4 = iArr[i];
        int i5 = iArr[0];
        int i6 = (52 / (i + 1)) + 6;
        int i7 = 0;
        while (true) {
            int i8 = i6 - 1;
            if (i6 > 0) {
                i7 -= 1640531527;
                int i9 = (i7 >>> 2) & 3;
                int i10 = 0;
                while (i10 < i) {
                    int i11 = i10 + 1;
                    int i12 = iArr[i11];
                    i4 = ((((i4 >>> 5) ^ (i12 << 2)) + ((i12 >>> 3) ^ (i4 << 4))) ^ ((i12 ^ i7) + (i4 ^ iArr2[(i10 & 3) ^ i9]))) + iArr[i10];
                    iArr[i10] = i4;
                    i10 = i11;
                }
                int i13 = iArr[0];
                i4 = ((((i4 >>> 5) ^ (i13 << 2)) + ((i13 >>> 3) ^ (i4 << 4))) ^ ((i13 ^ i7) + (i4 ^ iArr2[i9 ^ (i10 & 3)]))) + iArr[i];
                iArr[i] = i4;
                i6 = i8;
            } else {
                byte[] bArr3 = new byte[length << 2];
                a(iArr, length, bArr3);
                return bArr3;
            }
        }
    }

    public static void a(byte[] bArr, int[] iArr) {
        int length = bArr.length >> 2;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            iArr[i] = bArr[i2] & 255;
            int i4 = i3 + 1;
            iArr[i] = iArr[i] | ((bArr[i3] & 255) << 8);
            int i5 = i4 + 1;
            iArr[i] = iArr[i] | ((bArr[i4] & 255) << 16);
            iArr[i] = iArr[i] | ((bArr[i5] & 255) << 24);
            i++;
            i2 = i5 + 1;
        }
        if (i2 < bArr.length) {
            int i6 = i2 + 1;
            iArr[i] = bArr[i2] & 255;
            int i7 = 8;
            while (i6 < bArr.length) {
                iArr[i] = iArr[i] | ((bArr[i6] & 255) << i7);
                i6++;
                i7 += 8;
            }
        }
    }

    public static void a(int[] iArr, int i, byte[] bArr) {
        int i2;
        int length = bArr.length >> 2;
        if (length > i) {
            length = i;
        }
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = 8;
            if (i3 >= length) {
                break;
            }
            int i5 = i4 + 1;
            bArr[i4] = (byte) (iArr[i3] & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) ((iArr[i3] >>> 8) & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) ((iArr[i3] >>> 16) & 255);
            i4 = i7 + 1;
            bArr[i7] = (byte) ((iArr[i3] >>> 24) & 255);
            i3++;
        }
        if (i <= length || i4 >= bArr.length) {
            return;
        }
        bArr[i4] = (byte) (iArr[i3] & 255);
        for (int i8 = i4 + 1; i2 <= 24 && i8 < bArr.length; i8++) {
            bArr[i8] = (byte) ((iArr[i3] >>> i2) & 255);
            i2 += 8;
        }
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null || bArr.length <= 16) {
            return bArr;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] a = a(bArr2);
        if (bArr == null || a == null || bArr.length == 0) {
            return bArr;
        }
        if (bArr.length % 4 == 0 && bArr.length >= 8) {
            int length = bArr.length >>> 2;
            int[] iArr = new int[length];
            a(bArr, iArr);
            int length2 = a.length % 4 == 0 ? a.length >>> 2 : (a.length >>> 2) + 1;
            int i = length2 >= 4 ? length2 : 4;
            int[] iArr2 = new int[i];
            for (int i2 = 0; i2 < i; i2++) {
                iArr2[i2] = 0;
            }
            a(a, iArr2);
            int i3 = length - 1;
            int i4 = iArr[i3];
            int i5 = iArr[0];
            for (int i6 = ((52 / (i3 + 1)) + 6) * (-1640531527); i6 != 0; i6 -= -1640531527) {
                int i7 = (i6 >>> 2) & 3;
                int i8 = i3;
                while (i8 > 0) {
                    int i9 = iArr[i8 - 1];
                    i5 = iArr[i8] - (((i5 ^ i6) + (i9 ^ iArr2[(i8 & 3) ^ i7])) ^ (((i9 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i9 << 4))));
                    iArr[i8] = i5;
                    i8--;
                }
                int i10 = iArr[i3];
                i5 = iArr[0] - (((i5 ^ i6) + (iArr2[i7 ^ (i8 & 3)] ^ i10)) ^ (((i10 >>> 5) ^ (i5 << 2)) + ((i5 >>> 3) ^ (i10 << 4))));
                iArr[0] = i5;
            }
            int i11 = iArr[i3];
            if (i11 >= 0 && i11 <= (i3 << 2)) {
                byte[] bArr3 = new byte[i11];
                a(iArr, i3, bArr3);
                return bArr3;
            }
        }
        return null;
    }
}
