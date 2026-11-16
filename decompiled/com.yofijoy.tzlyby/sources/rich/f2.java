package rich;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public class f2 {
    public static String a = null;
    public static String b = null;
    public static long c = 0;
    public static int d = -1;

    public static long a() {
        long a2;
        long j;
        long currentTimeMillis = System.currentTimeMillis();
        if (TextUtils.isEmpty(a)) {
            String b2 = b0.b("phonescripcache", "");
            a2 = b0.a("phonescripstarttime", 0L);
            if (TextUtils.isEmpty(b2)) {
                j = 0;
                return Math.max(j / 1000, 0L);
            }
        } else {
            c2.b("PhoneScripUtils", b + " " + c);
            a2 = c;
        }
        j = (a2 - currentTimeMillis) - 10000;
        return Math.max(j / 1000, 0L);
    }

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String b2 = b0.b("phonescripcache", "");
        String str = null;
        if (TextUtils.isEmpty(b2)) {
            c2.a("PhoneScripUtils", "null");
            return null;
        }
        c = b0.a("phonescripstarttime", 0L);
        b = b0.b("pre_sim_key", "");
        d = b0.a("phonescripversion", -1);
        if (!TextUtils.isEmpty(b2)) {
            byte[] a2 = b2.a(context);
            if (a2 != null) {
                str = b0.b(a2, b2, b2.a);
            } else {
                b2.a();
            }
        }
        a = str;
        return str;
    }

    public static boolean a(long j) {
        long currentTimeMillis = System.currentTimeMillis();
        c2.b("PhoneScripUtils", j + "");
        c2.b("PhoneScripUtils", currentTimeMillis + "");
        return j - currentTimeMillis > 10000;
    }

    public static void a(boolean z, boolean z2) {
        i2 m1664a = b0.m1664a();
        m1664a.a.remove(b0.a("phonescripstarttime"));
        m1664a.a.remove(b0.a("phonescripcache"));
        m1664a.a.remove(b0.a("pre_sim_key"));
        m1664a.a.remove(b0.a("phonescripversion"));
        if (z2) {
            m1664a.a.apply();
        } else {
            m1664a.a.commit();
        }
        if (z) {
            a = null;
            b = null;
            c = 0L;
            d = -1;
        }
    }

    public static boolean a(l0 l0Var) {
        String b2;
        String b3 = l0Var.b("scripKey", "");
        if (TextUtils.isEmpty(b)) {
            b2 = b0.b("pre_sim_key", "");
            b = b2;
        } else {
            b2 = b;
        }
        int i = TextUtils.isEmpty(b2) ? 0 : b2.equals(b3) ? 1 : 2;
        l0Var.a("imsiState", i + "");
        c2.b("PhoneScripUtils", "simState = " + i);
        if (i == 0) {
            return false;
        }
        if (d == -1) {
            d = b0.a("phonescripversion", -1);
        }
        if (d != 1) {
            a(true, false);
            b2.a();
            c2.b("PhoneScripUtils", "phoneScriptVersion change");
            return false;
        }
        if (i == 2) {
            a(true, false);
            return false;
        }
        if (TextUtils.isEmpty(a)) {
            return !TextUtils.isEmpty(b0.b("phonescripcache", "")) && a(b0.a("phonescripstarttime", 0L));
        }
        c2.b("PhoneScripUtils", b + " " + c);
        return a(c);
    }
}
