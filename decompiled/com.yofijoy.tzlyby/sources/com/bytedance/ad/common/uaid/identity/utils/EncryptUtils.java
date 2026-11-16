package com.bytedance.ad.common.uaid.identity.utils;

import android.util.Base64;
import com.taptap.sdk.kit.internal.http.TapHttpUtil;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;

/* loaded from: classes.dex */
public class EncryptUtils {
    private static final byte[] sIvBytes = "0000000000000000".getBytes();

    public static String aesCipher(boolean z, byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str.getBytes(), com.rich.oauth.util.EncryptUtils.AES_Algorithm);
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(sIvBytes);
            if (z) {
                cipher.init(1, secretKeySpec, ivParameterSpec);
            } else {
                cipher.init(2, secretKeySpec, ivParameterSpec);
            }
            byte[] doFinal = cipher.doFinal(bArr);
            return z ? bytesToHex(doFinal) : new String(doFinal);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String bytesToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UByte.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static byte[] hexToBytes(String str) {
        if (str.length() % 2 != 0) {
            str = "0" + str;
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    public static String hmacSha1(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(StandardCharsets.UTF_8), TapHttpUtil.HMAC_SHA1);
            Mac mac = Mac.getInstance(TapHttpUtil.HMAC_SHA1);
            mac.init(secretKeySpec);
            return bytesToHex(mac.doFinal(str.getBytes(StandardCharsets.UTF_8)));
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String md5(String str) {
        try {
            return bytesToHex(MessageDigest.getInstance("MD5").digest(str.getBytes("utf-8")));
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String produceRandomStr() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(1024, new SecureRandom());
            return Base64.encodeToString(keyPairGenerator.generateKeyPair().getPrivate().getEncoded(), 0).substring(0, 16);
        } catch (NoSuchAlgorithmException unused) {
            return "";
        }
    }

    public static String rsaEncrypt(byte[] bArr, String str) {
        try {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING");
            cipher.init(1, rSAPublicKey);
            return bytesToHex(cipher.doFinal(bArr));
        } catch (Exception unused) {
            return null;
        }
    }
}
