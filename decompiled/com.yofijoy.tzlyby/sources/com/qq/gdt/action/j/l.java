package com.qq.gdt.action.j;

import android.util.Base64;

/* loaded from: classes.dex */
public class l {
    private static String a(String str) {
        try {
            return u.c(r.b(Base64.decode(str, 2)));
        } catch (Throwable th) {
            o.b("rsa decrypt exception", th);
            return null;
        }
    }

    public static boolean a(String str, String str2) {
        if (v.a(str) || v.a(str2)) {
            return false;
        }
        String a = a(str);
        boolean equals = str2.equals(a);
        o.a("VerifySign result: " + equals + ", expect = " + str2 + ", decrypted = " + a, new Object[0]);
        return equals;
    }

    public static byte[] a(byte[] bArr) {
        try {
            return r.a(bArr);
        } catch (Throwable th) {
            o.b("Exception while encrypt plainBytes", th);
            return null;
        }
    }
}
