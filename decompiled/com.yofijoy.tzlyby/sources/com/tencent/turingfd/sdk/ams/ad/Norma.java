package com.tencent.turingfd.sdk.ams.ad;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public class Norma {
    public static String a(byte[] bArr) {
        byte[] bArr2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            bArr2 = messageDigest.digest();
        } catch (NoSuchAlgorithmException unused) {
            bArr2 = null;
        }
        return Damson.a(bArr2);
    }
}
