package rich;

import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.UUID;

/* loaded from: classes2.dex */
public class l2 {
    public static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = a;
            cArr[i] = cArr2[(b >>> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public static void a(l0 l0Var, String str) {
        if (TextUtils.isEmpty(l0Var.b("interfaceType", ""))) {
            l0Var.a("interfaceType", str);
            return;
        }
        l0Var.a("interfaceType", l0Var.b("interfaceType", "") + ";" + str);
    }

    public static byte[] a() {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public static String b() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    public static void b(l0 l0Var, String str) {
        if (TextUtils.isEmpty(l0Var.b("interfaceCode", ""))) {
            l0Var.a("interfaceCode", str);
            return;
        }
        l0Var.a("interfaceCode", l0Var.b("interfaceCode", "") + ";" + str);
    }

    public static String c() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static boolean a(h0 h0Var) {
        return b0.a("logCloseTime", 0L) + ((long) (((h0Var.l * 60) * 60) * 1000)) >= System.currentTimeMillis();
    }

    public static void c(l0 l0Var, String str) {
        if (TextUtils.isEmpty(l0Var.b("interfaceElasped", ""))) {
            l0Var.a("interfaceElasped", str);
            return;
        }
        l0Var.a("interfaceElasped", l0Var.b("interfaceElasped", "") + ";" + str);
    }
}
