package com.yofi.sdk.utils;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;

/* loaded from: classes2.dex */
public class SignUtils {
    private static final String ALGORITHM = "RSA";
    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final String SIGN_ALGORITHMS = "SHA1WithRSA";

    public static String sign(String content, String privateKey) {
        try {
            PrivateKey generatePrivate = KeyFactory.getInstance(ALGORITHM).generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(privateKey)));
            Signature signature = Signature.getInstance(SIGN_ALGORITHMS);
            signature.initSign(generatePrivate);
            signature.update(content.getBytes("UTF-8"));
            return Base64.encode(signature.sign());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
