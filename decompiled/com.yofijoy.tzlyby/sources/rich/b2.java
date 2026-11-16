package rich;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* loaded from: classes2.dex */
public class b2 {
    public static byte[] a;

    public static void a() {
        SharedPreferences sharedPreferences = b0.a.getSharedPreferences("ssoconfigs", 0);
        sharedPreferences.edit().remove(b0.a("AES_KEY")).commit();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00c3, code lost:
    
        r2 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r10, boolean r11) {
        /*
            java.lang.String r0 = "CMCC_SDK_V1"
            java.lang.String r1 = "AndroidKeyStore"
            r2 = 1
            java.security.KeyStore r3 = java.security.KeyStore.getInstance(r1)     // Catch: java.lang.Exception -> L14
            r4 = 0
            r3.load(r4)     // Catch: java.lang.Exception -> L14
            java.security.Key r3 = r3.getKey(r0, r4)     // Catch: java.lang.Exception -> L14
            if (r3 == 0) goto L18
            return r2
        L14:
            r3 = move-exception
            r3.printStackTrace()
        L18:
            r3 = 0
            if (r11 == 0) goto Lc4
            int r11 = android.os.Build.VERSION.SDK_INT
            r4 = 23
            r5 = 1000(0x3e8, double:4.94E-321)
            java.lang.String r7 = "KeystoreUtil"
            if (r11 < r4) goto L73
            java.lang.String r10 = "AES"
            javax.crypto.KeyGenerator r10 = javax.crypto.KeyGenerator.getInstance(r10, r1)     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec$Builder r11 = new android.security.keystore.KeyGenParameterSpec$Builder     // Catch: java.lang.Exception -> L69
            r1 = 3
            r11.<init>(r0, r1)     // Catch: java.lang.Exception -> L69
            java.lang.String r0 = "SHA-256"
            java.lang.String r1 = "SHA-512"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec$Builder r11 = r11.setDigests(r0)     // Catch: java.lang.Exception -> L69
            java.lang.String r0 = "CBC"
            java.lang.String[] r0 = new java.lang.String[]{r0}     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec$Builder r11 = r11.setBlockModes(r0)     // Catch: java.lang.Exception -> L69
            java.lang.String r0 = "PKCS7Padding"
            java.lang.String[] r0 = new java.lang.String[]{r0}     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec$Builder r11 = r11.setEncryptionPaddings(r0)     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec$Builder r11 = r11.setRandomizedEncryptionRequired(r3)     // Catch: java.lang.Exception -> L69
            r0 = 256(0x100, float:3.59E-43)
            android.security.keystore.KeyGenParameterSpec$Builder r11 = r11.setKeySize(r0)     // Catch: java.lang.Exception -> L69
            android.security.keystore.KeyGenParameterSpec r11 = r11.build()     // Catch: java.lang.Exception -> L69
            r10.init(r11)     // Catch: java.lang.Exception -> L69
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L69
            r10.generateKey()     // Catch: java.lang.Exception -> L69
            goto Lc3
        L69:
            r10 = move-exception
            java.lang.String r10 = r10.getMessage()
            rich.c2.a(r7, r10)
        L71:
            r2 = r3
            goto Lc3
        L73:
            java.util.Calendar r11 = java.util.Calendar.getInstance()
            java.util.Calendar r4 = java.util.Calendar.getInstance()
            r8 = 30
            r4.add(r2, r8)
            int r8 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L69
            r9 = 18
            if (r8 < r9) goto L71
            android.security.KeyPairGeneratorSpec$Builder r8 = new android.security.KeyPairGeneratorSpec$Builder     // Catch: java.lang.Exception -> L69
            r8.<init>(r10)     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec$Builder r10 = r8.setAlias(r0)     // Catch: java.lang.Exception -> L69
            javax.security.auth.x500.X500Principal r0 = new javax.security.auth.x500.X500Principal     // Catch: java.lang.Exception -> L69
            java.lang.String r8 = "CN=CMCC_SDK_V1"
            r0.<init>(r8)     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec$Builder r10 = r10.setSubject(r0)     // Catch: java.lang.Exception -> L69
            java.math.BigInteger r0 = java.math.BigInteger.TEN     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec$Builder r10 = r10.setSerialNumber(r0)     // Catch: java.lang.Exception -> L69
            java.util.Date r11 = r11.getTime()     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec$Builder r10 = r10.setStartDate(r11)     // Catch: java.lang.Exception -> L69
            java.util.Date r11 = r4.getTime()     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec$Builder r10 = r10.setEndDate(r11)     // Catch: java.lang.Exception -> L69
            android.security.KeyPairGeneratorSpec r10 = r10.build()     // Catch: java.lang.Exception -> L69
            java.lang.String r11 = "RSA"
            java.security.KeyPairGenerator r11 = java.security.KeyPairGenerator.getInstance(r11, r1)     // Catch: java.lang.Exception -> L69
            r11.initialize(r10)     // Catch: java.lang.Exception -> L69
            java.lang.Thread.sleep(r5)     // Catch: java.lang.Exception -> L69
            r11.generateKeyPair()     // Catch: java.lang.Exception -> L69
        Lc3:
            return r2
        Lc4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: rich.b2.a(android.content.Context, boolean):boolean");
    }

    public static synchronized byte[] a(Context context) {
        Cipher cipher;
        String str;
        String str2;
        byte[] doFinal;
        Cipher cipher2;
        synchronized (b2.class) {
            try {
                KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                keyStore.load(null);
                if (!a(context, false)) {
                    return null;
                }
                String b = b0.b("AES_KEY", "");
                if (TextUtils.isEmpty(b)) {
                    doFinal = l2.a();
                    a = l2.a();
                    Key key = keyStore.getKey("CMCC_SDK_V1", null);
                    if (key instanceof SecretKey) {
                        c2.b("KeystoreUtil", "随机生成aes秘钥");
                        cipher2 = Cipher.getInstance("AES/CBC/PKCS7Padding");
                        cipher2.init(1, key, new IvParameterSpec(a));
                    } else {
                        if (!(key instanceof PrivateKey)) {
                            return null;
                        }
                        PublicKey publicKey = keyStore.getCertificate("CMCC_SDK_V1").getPublicKey();
                        Cipher cipher3 = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
                        c2.b("KeystoreUtil", "生成rsa密");
                        cipher3.init(1, publicKey);
                        cipher2 = cipher3;
                    }
                    String encodeToString = Base64.encodeToString(cipher2.doFinal(doFinal), 0);
                    String encodeToString2 = Base64.encodeToString(a, 0);
                    HashMap hashMap = new HashMap();
                    hashMap.put("AES_IV", encodeToString2);
                    hashMap.put("AES_KEY", encodeToString);
                    b0.a(hashMap);
                } else {
                    a = Base64.decode(b0.b("AES_IV", ""), 0);
                    byte[] decode = Base64.decode(b, 0);
                    Key key2 = keyStore.getKey("CMCC_SDK_V1", null);
                    if (key2 == null) {
                        return null;
                    }
                    if (key2 instanceof SecretKey) {
                        cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
                        cipher.init(2, key2, new IvParameterSpec(a));
                        str = "KeystoreUtil";
                        str2 = "使用aes";
                    } else {
                        if (!(key2 instanceof PrivateKey)) {
                            return null;
                        }
                        cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
                        cipher.init(2, key2);
                        str = "KeystoreUtil";
                        str2 = "使用rsa";
                    }
                    c2.b(str, str2);
                    doFinal = cipher.doFinal(decode);
                    StringBuilder sb = new StringBuilder();
                    sb.append("是否解密出秘钥：");
                    sb.append(!TextUtils.isEmpty(Base64.encodeToString(doFinal, 0)));
                    c2.b("KeystoreUtil", sb.toString());
                }
                return doFinal;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }
}
