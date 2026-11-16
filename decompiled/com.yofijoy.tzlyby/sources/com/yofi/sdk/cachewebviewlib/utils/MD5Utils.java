package com.yofi.sdk.cachewebviewlib.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.UByte;

/* loaded from: classes2.dex */
public class MD5Utils {
    public static String getMD5(String message) {
        return getMD5(message, true);
    }

    public static String getMD5(String message, boolean upperCase) {
        try {
            return bytesToHex(MessageDigest.getInstance("MD5").digest(message.getBytes()), upperCase);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String bytesToHex(byte[] bytes, boolean upperCase) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < bytes.length; i++) {
            int i2 = bytes[i];
            if (i2 < 0) {
                i2 += 256;
            }
            if (i2 < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i2));
        }
        if (upperCase) {
            return stringBuffer.toString().toUpperCase();
        }
        return stringBuffer.toString().toLowerCase();
    }

    public static String getMD5File(File file) {
        BigInteger bigInteger;
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            fileInputStream.close();
            bigInteger = new BigInteger(1, messageDigest.digest());
        } catch (IOException e) {
            e.printStackTrace();
            bigInteger = null;
            return bigInteger.toString(16);
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            bigInteger = null;
            return bigInteger.toString(16);
        }
        return bigInteger.toString(16);
    }

    public static String getMD5InputStream(InputStream inputStream) {
        BigInteger bigInteger;
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            inputStream.close();
            bigInteger = new BigInteger(1, messageDigest.digest());
        } catch (IOException e) {
            e.printStackTrace();
            bigInteger = null;
            return bigInteger.toString(16);
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            bigInteger = null;
            return bigInteger.toString(16);
        }
        return bigInteger.toString(16);
    }

    public static String getInputStreamMd5(InputStream inputStream) {
        int i;
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[2048];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            inputStream.close();
            for (byte b : messageDigest.digest()) {
                sb.append(Integer.toString((b & UByte.MAX_VALUE) + 256, 16).substring(1));
            }
            return sb.toString();
        } catch (IOException | NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }
}
