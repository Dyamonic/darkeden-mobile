package com.qq.gdt.action.e.a;

import android.os.Build;
import android.os.SystemClock;
import com.qq.gdt.action.j.o;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.UByte;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b {
    static List<String> a = Arrays.asList("/", "/system", "/system/build.prop", "/system/etc", "/system/framework", "/system/fonts", "/system/usr", "/system/vendor", "/system/app", "/system/bin", "/system/lib", "/system/media", "/data", "/storage/emulated/0", "/storage/emulated");
    private static a b;

    public static a a(String str) {
        a aVar = b;
        return aVar == null ? b(str) : aVar;
    }

    private static String a() {
        return com.qq.gdt.action.e.a.a.a.a("/proc/sys/kernel/random/boot_id");
    }

    private static void a(a aVar) {
        try {
            aVar.o(Locale.getDefault().getLanguage());
            aVar.m(Locale.getDefault().getCountry());
            aVar.n(TimeZone.getDefault().getID());
        } catch (Exception e) {
            a("fillROMInfo", e.toString());
        }
    }

    private static void a(a aVar, String str) {
        try {
            aVar.e(Build.BOARD);
            aVar.f(Build.BRAND);
            aVar.g(Build.DEVICE);
            aVar.h(Build.TIME + "");
            aVar.i(str);
            aVar.j(Build.VERSION.INCREMENTAL);
            aVar.k(Build.VERSION.RELEASE);
            aVar.l(Build.MANUFACTURER);
        } catch (Exception e) {
            e.printStackTrace();
            a("fillROMInfo", e.toString());
        }
    }

    private static void a(String str, String str2) {
        o.a("tag AcidNode " + str + " value = " + str2, new Object[0]);
    }

    private static long b() {
        long currentTimeMillis = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        a("bootTime", currentTimeMillis + "");
        return currentTimeMillis;
    }

    private static a b(String str) {
        a aVar = b;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        try {
            aVar2.a(System.currentTimeMillis() + "");
            long b2 = b();
            aVar2.b(b2 + "");
            aVar2.c((b2 / 10) + "");
            aVar2.d(a());
            String c = c();
            aVar2.q(c);
            aVar2.p(c(c));
            a(aVar2, str);
            a(aVar2);
            a aVar3 = new a();
            aVar3.p(c(c));
            a(aVar3, str);
            a(aVar3);
            aVar2.r(c(aVar3.toString()));
            b = aVar2;
            a("lastResult", aVar3.toString());
            a("aCaidInfo", aVar2.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return aVar2;
    }

    private static String c() {
        long currentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObject = new JSONObject();
        for (int i = 0; i < a.size(); i++) {
            try {
                String str = a.get(i);
                try {
                    System.currentTimeMillis();
                    jSONObject.put(str, com.qq.gdt.action.e.a.a.b.a(a.get(i)));
                } catch (Exception e) {
                    try {
                        jSONObject.put(str, WebLoginFragment.QUERY_KEY_ERROR);
                    } catch (Exception unused) {
                        e.printStackTrace();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        String jSONObject2 = jSONObject.toString();
        a("nodeinfo cost  ", (System.currentTimeMillis() - currentTimeMillis) + " nodeinfo = " + jSONObject2);
        return jSONObject2;
    }

    private static String c(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & UByte.MAX_VALUE) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "hashfail";
        }
    }
}
