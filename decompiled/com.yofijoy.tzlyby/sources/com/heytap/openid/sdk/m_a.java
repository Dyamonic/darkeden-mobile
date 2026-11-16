package com.heytap.openid.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import com.tencent.tauth.Tencent;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.UByte;

/* loaded from: classes.dex */
public class m_a {
    public static final ThreadPoolExecutor m_a = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    public static int m_a(int i) {
        if (i > m_e.m_a || i <= 0) {
            return Tencent.REQUEST_LOGIN;
        }
        return 10000;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0025 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m_a(android.content.Context r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.heytap.openid.sdk.m_a.m_a(android.content.Context, java.lang.String):java.lang.String");
    }

    public static String m_a(Context context, String str, String str2) {
        Signature[] signatureArr;
        try {
            signatureArr = context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (PackageManager.NameNotFoundException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("1011 ");
            sb.append(e.getMessage());
            Log.e("IDHelper", sb.toString() != null ? e.getMessage() : e.getLocalizedMessage());
            signatureArr = null;
        }
        if (signatureArr == null) {
            return null;
        }
        for (Signature signature : signatureArr) {
            if ("SHA1".equals(str2)) {
                byte[] byteArray = signature.toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                    if (messageDigest == null) {
                        return null;
                    }
                    byte[] digest = messageDigest.digest(byteArray);
                    StringBuilder sb2 = new StringBuilder();
                    for (byte b : digest) {
                        sb2.append(Integer.toHexString((b & UByte.MAX_VALUE) | 256).substring(1, 3));
                    }
                    return sb2.toString();
                } catch (NoSuchAlgorithmException e2) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("1012 ");
                    sb3.append(e2.getMessage());
                    Log.e("IDHelper", sb3.toString() != null ? e2.getMessage() : e2.getLocalizedMessage());
                    return null;
                }
            }
        }
        return null;
    }

    public static String m_a(String str) {
        try {
            String str2 = new String(Base64.decode(str, 0));
            m_h.m_a("4025: " + str2);
            return str2;
        } catch (Exception e) {
            m_h.m_a("4025: " + e.toString());
            return null;
        }
    }

    public static void m_a(Context context, Map<String, m_f> map) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("cache", 0);
            m_a(sharedPreferences, map, "GUID", "GUID_TIME", "GUID_IV");
            m_a(sharedPreferences, map, "APID", "APID_TIME", "APID_IV");
            m_a(sharedPreferences, map, "DUID", "DUID_TIME");
            m_a(sharedPreferences, map, "AUID", "AUID_TIME");
            m_a(sharedPreferences, map, "OUID", "OUID_TIME");
            m_a(sharedPreferences, map, "OUID_STATUS", "OUID_STATUS_TIME");
        } catch (IllegalStateException e) {
            StringBuilder sb = new StringBuilder();
            sb.append("1020:");
            sb.append(e.getMessage());
            Log.e("IDHelper", sb.toString() != null ? e.getMessage() : e.getLocalizedMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m_a(android.content.SharedPreferences.Editor r4, com.heytap.openid.sdk.m_f r5, java.lang.String r6, java.lang.String r7, java.lang.String r8) {
        /*
            java.lang.String r0 = "U3RkSWRBcHBLZXk="
            java.lang.String r0 = m_a(r0)
            java.lang.String r1 = r5.m_a
            byte[] r1 = r1.getBytes()
            java.lang.String r2 = "AES/GCM/NoPadding"
            javax.crypto.Cipher r2 = javax.crypto.Cipher.getInstance(r2)     // Catch: java.lang.Exception -> L34
            javax.crypto.SecretKey r0 = com.heytap.openid.sdk.m_g.m_b(r0)     // Catch: java.lang.Exception -> L34
            if (r0 != 0) goto L19
            goto L5a
        L19:
            r3 = 1
            r2.init(r3, r0)     // Catch: java.lang.Exception -> L34
            byte[] r0 = r2.doFinal(r1)     // Catch: java.lang.Exception -> L34
            android.util.Pair r1 = new android.util.Pair     // Catch: java.lang.Exception -> L34
            r3 = 2
            java.lang.String r0 = android.util.Base64.encodeToString(r0, r3)     // Catch: java.lang.Exception -> L34
            byte[] r2 = r2.getIV()     // Catch: java.lang.Exception -> L34
            java.lang.String r2 = android.util.Base64.encodeToString(r2, r3)     // Catch: java.lang.Exception -> L34
            r1.<init>(r0, r2)     // Catch: java.lang.Exception -> L34
            goto L5b
        L34:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "1018"
            r1.append(r2)
            java.lang.String r2 = r0.getMessage()
            if (r2 == 0) goto L4a
            java.lang.String r0 = r0.getMessage()
            goto L4e
        L4a:
            java.lang.String r0 = r0.getLocalizedMessage()
        L4e:
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "IDHelper"
            android.util.Log.e(r1, r0)
        L5a:
            r1 = 0
        L5b:
            if (r1 == 0) goto L70
            java.lang.Object r0 = r1.first
            java.lang.String r0 = (java.lang.String) r0
            r4.putString(r6, r0)
            long r5 = r5.m_b
            r4.putLong(r7, r5)
            java.lang.Object r5 = r1.second
            java.lang.String r5 = (java.lang.String) r5
            r4.putString(r8, r5)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.heytap.openid.sdk.m_a.m_a(android.content.SharedPreferences$Editor, com.heytap.openid.sdk.m_f, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public static void m_a(SharedPreferences sharedPreferences, Map<String, m_f> map, String str, String str2) {
        if (map.containsKey(str)) {
            return;
        }
        String string = sharedPreferences.getString(str, null);
        long j = sharedPreferences.getLong(str2, 0L);
        if (string == null || j == 0) {
            return;
        }
        map.put(str, new m_f(string, j));
    }

    public static void m_a(SharedPreferences sharedPreferences, Map<String, m_f> map, String str, String str2, String str3) {
        if (map.containsKey(str)) {
            return;
        }
        String string = sharedPreferences.getString(str, null);
        long j = sharedPreferences.getLong(str2, 0L);
        String string2 = sharedPreferences.getString(str3, null);
        if (string == null || j == 0 || string2 == null) {
            return;
        }
        try {
            byte[] m_a2 = m_g.m_a(m_a("U3RkSWRBcHBLZXk="), string, string2);
            if (m_a2 != null) {
                map.put(str, new m_f(new String(m_a2, "ISO-8859-1"), j));
            }
        } catch (UnsupportedEncodingException e) {
            Log.e("IDHelper", e.getMessage() != null ? e.getMessage() : e.getLocalizedMessage());
        }
    }

    public static long m_b(String str) {
        str.hashCode();
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case 2015626:
                if (str.equals("APID")) {
                    c = 0;
                    break;
                }
                break;
            case 2020431:
                if (str.equals("AUID")) {
                    c = 1;
                    break;
                }
                break;
            case 2109804:
                if (str.equals("DUID")) {
                    c = 2;
                    break;
                }
                break;
            case 2199177:
                if (str.equals("GUID")) {
                    c = 3;
                    break;
                }
                break;
            case 2437505:
                if (str.equals("OUID")) {
                    c = 4;
                    break;
                }
                break;
            case 572132464:
                if (str.equals("OUID_STATUS")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 3:
                return 259200000L;
            case 1:
                return 604800000L;
            case 2:
                return 86400000L;
            case 4:
            case 5:
                return 7200000L;
            default:
                return 0L;
        }
    }
}
