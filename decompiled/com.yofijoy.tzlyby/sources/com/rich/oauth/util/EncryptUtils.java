package com.rich.oauth.util;

import android.util.Base64;
import com.taptap.sdk.kit.internal.http.TapHttpUtil;
import java.io.File;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class EncryptUtils {
    public static final String AES_Algorithm = "AES";
    public static final String DES_Algorithm = "DES";
    public static final String TripleDES_Algorithm = "DESede";
    public static final char[] hexDigits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public EncryptUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static byte[] base64Decode(byte[] bArr) {
        return Base64.decode(bArr, 2);
    }

    public static byte[] base64Encode(byte[] bArr) {
        return Base64.encode(bArr, 2);
    }

    public static String bytes2HexString(byte[] bArr) {
        int length;
        if (bArr == null || (length = bArr.length) <= 0) {
            return null;
        }
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = hexDigits;
            cArr[i] = cArr2[(bArr[i2] >>> 4) & 15];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    public static byte[] decrypt3DES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, TripleDES_Algorithm, str, bArr3, false);
    }

    public static byte[] decryptAES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, AES_Algorithm, str, bArr3, false);
    }

    public static byte[] decryptBase64AES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return decryptAES(base64Decode(bArr), bArr2, str, bArr3);
    }

    public static byte[] decryptBase64DES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return decryptDES(base64Decode(bArr), bArr2, str, bArr3);
    }

    public static byte[] decryptBase64_3DES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return decrypt3DES(base64Decode(bArr), bArr2, str, bArr3);
    }

    public static byte[] decryptDES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, DES_Algorithm, str, bArr3, false);
    }

    public static byte[] decryptHexString3DES(String str, byte[] bArr, String str2, byte[] bArr2) {
        return decrypt3DES(hexString2Bytes(str), bArr, str2, bArr2);
    }

    public static byte[] decryptHexStringAES(String str, byte[] bArr, String str2, byte[] bArr2) {
        return decryptAES(hexString2Bytes(str), bArr, str2, bArr2);
    }

    public static byte[] decryptHexStringDES(String str, byte[] bArr, String str2, byte[] bArr2) {
        return decryptDES(hexString2Bytes(str), bArr, str2, bArr2);
    }

    public static byte[] desTemplate(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, boolean z) {
        if (bArr != null && bArr.length != 0 && bArr2 != null && bArr2.length != 0) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str);
                Cipher cipher = Cipher.getInstance(str2);
                int i = 1;
                if (bArr3 != null && bArr3.length != 0) {
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
                    if (!z) {
                        i = 2;
                    }
                    cipher.init(i, secretKeySpec, ivParameterSpec);
                    return cipher.doFinal(bArr);
                }
                i = 2;
                cipher.init(i, secretKeySpec);
                return cipher.doFinal(bArr);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static byte[] encrypt3DES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, TripleDES_Algorithm, str, bArr3, true);
    }

    public static byte[] encrypt3DES2Base64(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return base64Encode(encrypt3DES(bArr, bArr2, str, bArr3));
    }

    public static String encrypt3DES2HexString(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return bytes2HexString(encrypt3DES(bArr, bArr2, str, bArr3));
    }

    public static byte[] encryptAES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, AES_Algorithm, str, bArr3, true);
    }

    public static byte[] encryptAES2Base64(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return base64Encode(encryptAES(bArr, bArr2, str, bArr3));
    }

    public static String encryptAES2HexString(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return bytes2HexString(encryptAES(bArr, bArr2, str, bArr3));
    }

    public static byte[] encryptDES(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return desTemplate(bArr, bArr2, DES_Algorithm, str, bArr3, true);
    }

    public static byte[] encryptDES2Base64(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return base64Encode(encryptDES(bArr, bArr2, str, bArr3));
    }

    public static String encryptDES2HexString(byte[] bArr, byte[] bArr2, String str, byte[] bArr3) {
        return bytes2HexString(encryptDES(bArr, bArr2, str, bArr3));
    }

    public static byte[] encryptHmacMD5(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, "HmacMD5");
    }

    public static String encryptHmacMD5ToString(String str, String str2) {
        return encryptHmacMD5ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacMD5ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacMD5(bArr, bArr2));
    }

    public static byte[] encryptHmacSHA1(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, TapHttpUtil.HMAC_SHA1);
    }

    public static String encryptHmacSHA1ToString(String str, String str2) {
        return encryptHmacSHA1ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacSHA1ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacSHA1(bArr, bArr2));
    }

    public static byte[] encryptHmacSHA224(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, "HmacSHA224");
    }

    public static String encryptHmacSHA224ToString(String str, String str2) {
        return encryptHmacSHA224ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacSHA224ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacSHA224(bArr, bArr2));
    }

    public static byte[] encryptHmacSHA256(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, TapHttpUtil.HMAC_SHA256);
    }

    public static String encryptHmacSHA256ToString(String str, String str2) {
        return encryptHmacSHA256ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacSHA256ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacSHA256(bArr, bArr2));
    }

    public static byte[] encryptHmacSHA384(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, "HmacSHA384");
    }

    public static String encryptHmacSHA384ToString(String str, String str2) {
        return encryptHmacSHA384ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacSHA384ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacSHA384(bArr, bArr2));
    }

    public static byte[] encryptHmacSHA512(byte[] bArr, byte[] bArr2) {
        return hmacTemplate(bArr, bArr2, "HmacSHA512");
    }

    public static String encryptHmacSHA512ToString(String str, String str2) {
        return encryptHmacSHA512ToString(str.getBytes(), str2.getBytes());
    }

    public static String encryptHmacSHA512ToString(byte[] bArr, byte[] bArr2) {
        return bytes2HexString(encryptHmacSHA512(bArr, bArr2));
    }

    public static byte[] encryptMD2(byte[] bArr) {
        return hashTemplate(bArr, "MD2");
    }

    public static String encryptMD2ToString(String str) {
        return encryptMD2ToString(str.getBytes());
    }

    public static String encryptMD2ToString(byte[] bArr) {
        return bytes2HexString(encryptMD2(bArr));
    }

    public static byte[] encryptMD5(byte[] bArr) {
        return hashTemplate(bArr, "MD5");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0048: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:45:0x0048 */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] encryptMD5File(java.io.File r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35 java.security.NoSuchAlgorithmException -> L37
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L33 java.io.IOException -> L35 java.security.NoSuchAlgorithmException -> L37
            java.lang.String r4 = "MD5"
            java.security.MessageDigest r4 = java.security.MessageDigest.getInstance(r4)     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            java.security.DigestInputStream r2 = new java.security.DigestInputStream     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            r2.<init>(r1, r4)     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            r4 = 262144(0x40000, float:3.67342E-40)
            byte[] r4 = new byte[r4]     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
        L18:
            int r3 = r2.read(r4)     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            if (r3 > 0) goto L18
            java.security.MessageDigest r4 = r2.getMessageDigest()     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            byte[] r4 = r4.digest()     // Catch: java.io.IOException -> L2f java.security.NoSuchAlgorithmException -> L31 java.lang.Throwable -> L47
            r1.close()     // Catch: java.io.IOException -> L2a
            goto L2e
        L2a:
            r0 = move-exception
            r0.printStackTrace()
        L2e:
            return r4
        L2f:
            r4 = move-exception
            goto L39
        L31:
            r4 = move-exception
            goto L39
        L33:
            r4 = move-exception
            goto L49
        L35:
            r4 = move-exception
            goto L38
        L37:
            r4 = move-exception
        L38:
            r1 = r0
        L39:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L47
            if (r1 == 0) goto L46
            r1.close()     // Catch: java.io.IOException -> L42
            goto L46
        L42:
            r4 = move-exception
            r4.printStackTrace()
        L46:
            return r0
        L47:
            r4 = move-exception
            r0 = r1
        L49:
            if (r0 == 0) goto L53
            r0.close()     // Catch: java.io.IOException -> L4f
            goto L53
        L4f:
            r0 = move-exception
            r0.printStackTrace()
        L53:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rich.oauth.util.EncryptUtils.encryptMD5File(java.io.File):byte[]");
    }

    public static byte[] encryptMD5File(String str) {
        return encryptMD5File(isSpace(str) ? null : new File(str));
    }

    public static String encryptMD5File2String(File file) {
        return bytes2HexString(encryptMD5File(file));
    }

    public static String encryptMD5File2String(String str) {
        return encryptMD5File2String(isSpace(str) ? null : new File(str));
    }

    public static String encryptMD5ToString(String str) {
        return encryptMD5ToString(str.getBytes());
    }

    public static String encryptMD5ToString(String str, String str2) {
        return bytes2HexString(encryptMD5((str + str2).getBytes()));
    }

    public static String encryptMD5ToString(byte[] bArr) {
        return bytes2HexString(encryptMD5(bArr));
    }

    public static String encryptMD5ToString(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return null;
        }
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bytes2HexString(encryptMD5(bArr3));
    }

    public static byte[] encryptSHA1(byte[] bArr) {
        return hashTemplate(bArr, "SHA1");
    }

    public static String encryptSHA1ToString(String str) {
        return encryptSHA1ToString(str.getBytes());
    }

    public static String encryptSHA1ToString(byte[] bArr) {
        return bytes2HexString(encryptSHA1(bArr));
    }

    public static byte[] encryptSHA224(byte[] bArr) {
        return hashTemplate(bArr, "SHA224");
    }

    public static String encryptSHA224ToString(String str) {
        return encryptSHA224ToString(str.getBytes());
    }

    public static String encryptSHA224ToString(byte[] bArr) {
        return bytes2HexString(encryptSHA224(bArr));
    }

    public static byte[] encryptSHA256(byte[] bArr) {
        return hashTemplate(bArr, "SHA256");
    }

    public static String encryptSHA256ToString(String str) {
        return encryptSHA256ToString(str.getBytes());
    }

    public static String encryptSHA256ToString(byte[] bArr) {
        return bytes2HexString(encryptSHA256(bArr));
    }

    public static byte[] encryptSHA384(byte[] bArr) {
        return hashTemplate(bArr, "SHA384");
    }

    public static String encryptSHA384ToString(String str) {
        return encryptSHA384ToString(str.getBytes());
    }

    public static String encryptSHA384ToString(byte[] bArr) {
        return bytes2HexString(encryptSHA384(bArr));
    }

    public static byte[] encryptSHA512(byte[] bArr) {
        return hashTemplate(bArr, "SHA512");
    }

    public static String encryptSHA512ToString(String str) {
        return encryptSHA512ToString(str.getBytes());
    }

    public static String encryptSHA512ToString(byte[] bArr) {
        return bytes2HexString(encryptSHA512(bArr));
    }

    public static byte[] hashTemplate(byte[] bArr, String str) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static int hex2Dec(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c < 'A' || c > 'F') {
            throw new IllegalArgumentException();
        }
        return (c - 'A') + 10;
    }

    public static byte[] hexString2Bytes(String str) {
        if (isSpace(str)) {
            return null;
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        char[] charArray = str.toUpperCase().toCharArray();
        byte[] bArr = new byte[length >> 1];
        for (int i = 0; i < length; i += 2) {
            bArr[i >> 1] = (byte) ((hex2Dec(charArray[i]) << 4) | hex2Dec(charArray[i + 1]));
        }
        return bArr;
    }

    public static byte[] hmacTemplate(byte[] bArr, byte[] bArr2, String str) {
        if (bArr != null && bArr.length != 0 && bArr2 != null && bArr2.length != 0) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, str);
                Mac mac = Mac.getInstance(str);
                mac.init(secretKeySpec);
                return mac.doFinal(bArr);
            } catch (InvalidKeyException | NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static boolean isSpace(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
