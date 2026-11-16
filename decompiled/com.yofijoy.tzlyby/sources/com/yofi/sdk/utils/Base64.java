package com.yofi.sdk.utils;

import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* loaded from: classes2.dex */
public final class Base64 {
    private static char PAD = '=';
    private static byte[] base64Alphabet = new byte[128];
    private static char[] lookUpBase64Alphabet = new char[64];

    private static boolean isWhiteSpace(char octect) {
        return octect == ' ' || octect == '\r' || octect == '\n' || octect == '\t';
    }

    static {
        int i;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < 128; i4++) {
            base64Alphabet[i4] = -1;
        }
        for (int i5 = 90; i5 >= 65; i5--) {
            base64Alphabet[i5] = (byte) (i5 - 65);
        }
        int i6 = 122;
        while (true) {
            i = 26;
            if (i6 < 97) {
                break;
            }
            base64Alphabet[i6] = (byte) ((i6 - 97) + 26);
            i6--;
        }
        int i7 = 57;
        while (true) {
            i2 = 52;
            if (i7 < 48) {
                break;
            }
            base64Alphabet[i7] = (byte) ((i7 - 48) + 52);
            i7--;
        }
        byte[] bArr = base64Alphabet;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
        for (int i8 = 0; i8 <= 25; i8++) {
            lookUpBase64Alphabet[i8] = (char) (i8 + 65);
        }
        int i9 = 0;
        while (i <= 51) {
            lookUpBase64Alphabet[i] = (char) (i9 + 97);
            i++;
            i9++;
        }
        while (i2 <= 61) {
            lookUpBase64Alphabet[i2] = (char) (i3 + 48);
            i2++;
            i3++;
        }
        char[] cArr = lookUpBase64Alphabet;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    private static boolean isPad(char octect) {
        return octect == PAD;
    }

    private static boolean isData(char octect) {
        return octect < 128 && base64Alphabet[octect] != -1;
    }

    public static String encode(byte[] binaryData) {
        if (binaryData == null) {
            return null;
        }
        int length = binaryData.length * 8;
        if (length == 0) {
            return "";
        }
        int i = length % 24;
        int i2 = length / 24;
        char[] cArr = new char[(i != 0 ? i2 + 1 : i2) * 4];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2) {
            int i6 = i4 + 1;
            byte b = binaryData[i4];
            int i7 = i6 + 1;
            byte b2 = binaryData[i6];
            int i8 = i7 + 1;
            byte b3 = binaryData[i7];
            byte b4 = (byte) (b2 & 15);
            byte b5 = (byte) (b & 3);
            int i9 = b & ByteCompanionObject.MIN_VALUE;
            int i10 = b >> 2;
            if (i9 != 0) {
                i10 ^= 192;
            }
            byte b6 = (byte) i10;
            int i11 = b2 & ByteCompanionObject.MIN_VALUE;
            int i12 = b2 >> 4;
            if (i11 != 0) {
                i12 ^= 240;
            }
            byte b7 = (byte) i12;
            int i13 = (b3 & ByteCompanionObject.MIN_VALUE) == 0 ? b3 >> 6 : (b3 >> 6) ^ 252;
            int i14 = i5 + 1;
            char[] cArr2 = lookUpBase64Alphabet;
            cArr[i5] = cArr2[b6];
            int i15 = i14 + 1;
            cArr[i14] = cArr2[(b5 << 4) | b7];
            int i16 = i15 + 1;
            cArr[i15] = cArr2[(b4 << 2) | ((byte) i13)];
            cArr[i16] = cArr2[b3 & Utf8.REPLACEMENT_BYTE];
            i3++;
            i5 = i16 + 1;
            i4 = i8;
        }
        if (i == 8) {
            byte b8 = binaryData[i4];
            byte b9 = (byte) (b8 & 3);
            int i17 = b8 & ByteCompanionObject.MIN_VALUE;
            int i18 = b8 >> 2;
            if (i17 != 0) {
                i18 ^= 192;
            }
            int i19 = i5 + 1;
            char[] cArr3 = lookUpBase64Alphabet;
            cArr[i5] = cArr3[(byte) i18];
            int i20 = i19 + 1;
            cArr[i19] = cArr3[b9 << 4];
            char c = PAD;
            cArr[i20] = c;
            cArr[i20 + 1] = c;
        } else if (i == 16) {
            byte b10 = binaryData[i4];
            byte b11 = binaryData[i4 + 1];
            byte b12 = (byte) (b11 & 15);
            byte b13 = (byte) (b10 & 3);
            int i21 = b10 & ByteCompanionObject.MIN_VALUE;
            int i22 = b10 >> 2;
            if (i21 != 0) {
                i22 ^= 192;
            }
            byte b14 = (byte) i22;
            int i23 = b11 & ByteCompanionObject.MIN_VALUE;
            int i24 = b11 >> 4;
            if (i23 != 0) {
                i24 ^= 240;
            }
            int i25 = i5 + 1;
            char[] cArr4 = lookUpBase64Alphabet;
            cArr[i5] = cArr4[b14];
            int i26 = i25 + 1;
            cArr[i25] = cArr4[((byte) i24) | (b13 << 4)];
            cArr[i26] = cArr4[b12 << 2];
            cArr[i26 + 1] = PAD;
        }
        return new String(cArr);
    }

    public static byte[] decode(String encoded) {
        if (encoded == null) {
            return null;
        }
        char[] charArray = encoded.toCharArray();
        int removeWhiteSpace = removeWhiteSpace(charArray);
        if (removeWhiteSpace % 4 != 0) {
            return null;
        }
        int i = removeWhiteSpace / 4;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i * 3];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < i - 1) {
            int i5 = i3 + 1;
            char c = charArray[i3];
            if (isData(c)) {
                int i6 = i5 + 1;
                char c2 = charArray[i5];
                if (isData(c2)) {
                    int i7 = i6 + 1;
                    char c3 = charArray[i6];
                    if (isData(c3)) {
                        int i8 = i7 + 1;
                        char c4 = charArray[i7];
                        if (isData(c4)) {
                            byte[] bArr2 = base64Alphabet;
                            byte b = bArr2[c];
                            byte b2 = bArr2[c2];
                            byte b3 = bArr2[c3];
                            byte b4 = bArr2[c4];
                            int i9 = i4 + 1;
                            bArr[i4] = (byte) ((b << 2) | (b2 >> 4));
                            int i10 = i9 + 1;
                            bArr[i9] = (byte) (((b2 & 15) << 4) | ((b3 >> 2) & 15));
                            i4 = i10 + 1;
                            bArr[i10] = (byte) ((b3 << 6) | b4);
                            i2++;
                            i3 = i8;
                        }
                    }
                }
            }
            return null;
        }
        int i11 = i3 + 1;
        char c5 = charArray[i3];
        if (!isData(c5)) {
            return null;
        }
        int i12 = i11 + 1;
        char c6 = charArray[i11];
        if (!isData(c6)) {
            return null;
        }
        byte[] bArr3 = base64Alphabet;
        byte b5 = bArr3[c5];
        byte b6 = bArr3[c6];
        int i13 = i12 + 1;
        char c7 = charArray[i12];
        char c8 = charArray[i13];
        if (isData(c7) && isData(c8)) {
            byte[] bArr4 = base64Alphabet;
            byte b7 = bArr4[c7];
            byte b8 = bArr4[c8];
            int i14 = i4 + 1;
            bArr[i4] = (byte) ((b5 << 2) | (b6 >> 4));
            bArr[i14] = (byte) (((b6 & 15) << 4) | ((b7 >> 2) & 15));
            bArr[i14 + 1] = (byte) (b8 | (b7 << 6));
            return bArr;
        }
        if (isPad(c7) && isPad(c8)) {
            if ((b6 & 15) != 0) {
                return null;
            }
            int i15 = i2 * 3;
            byte[] bArr5 = new byte[i15 + 1];
            System.arraycopy(bArr, 0, bArr5, 0, i15);
            bArr5[i4] = (byte) ((b5 << 2) | (b6 >> 4));
            return bArr5;
        }
        if (isPad(c7) || !isPad(c8)) {
            return null;
        }
        byte b9 = base64Alphabet[c7];
        if ((b9 & 3) != 0) {
            return null;
        }
        int i16 = i2 * 3;
        byte[] bArr6 = new byte[i16 + 2];
        System.arraycopy(bArr, 0, bArr6, 0, i16);
        bArr6[i4] = (byte) ((b5 << 2) | (b6 >> 4));
        bArr6[i4 + 1] = (byte) (((b9 >> 2) & 15) | ((b6 & 15) << 4));
        return bArr6;
    }

    private static int removeWhiteSpace(char[] data) {
        if (data == null) {
            return 0;
        }
        int length = data.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (!isWhiteSpace(data[i2])) {
                data[i] = data[i2];
                i++;
            }
        }
        return i;
    }
}
