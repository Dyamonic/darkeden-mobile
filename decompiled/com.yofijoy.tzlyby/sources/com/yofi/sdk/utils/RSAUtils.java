package com.yofi.sdk.utils;

import java.io.ByteArrayOutputStream;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
public class RSAUtils {
    public static final String KEY_ALGORITHM = "RSA/ECB/PKCS1Padding";
    private static final String PUBLIC_KEY = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCvpbgcdrpv5jRD4JZ33M3XVm8yOetRUGKoMx2uKoXZWazlqN9GboxnPQUFL6bALm2mZBN6nsZl2/FINcSciBMjPnyttmN28Fe0x7YQSEG6wms5XonHFMnJOplRj8ufwxSjsNeAuYWZ/paUEkM+RUEpRW19Nf4My7WBm17/NvQXOQIDAQAB";

    public static String decryptByPublicKey(String str) throws Exception {
        byte[] doFinal;
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(PUBLIC_KEY)));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(2, generatePublic);
        byte[] decode = Base64.decode(str);
        int length = decode.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (true) {
            int i2 = length - i;
            if (i2 > 0) {
                if (i2 > 128) {
                    doFinal = cipher.doFinal(decode, i, 128);
                } else {
                    doFinal = cipher.doFinal(decode, i, i2);
                }
                byteArrayOutputStream.write(doFinal);
                i += 128;
            } else {
                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
            }
        }
    }
}
