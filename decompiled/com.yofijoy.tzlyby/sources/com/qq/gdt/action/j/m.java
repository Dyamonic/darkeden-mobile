package com.qq.gdt.action.j;

import android.provider.Settings;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class m {
    private static Boolean a = null;
    private static String b = "";

    public static void a(JSONObject jSONObject) {
        try {
            if (com.qq.gdt.action.e.a().g() == null) {
                o.a("fillHarmonyInfo getApplicationContext is null  ", new Object[0]);
                jSONObject.putOpt("is_harmony_open", false);
                return;
            }
            boolean z = com.qq.gdt.action.b.a(com.qq.gdt.action.e.a().g()).n() == 0;
            o.a("fillHarmonyInfo harmonyCollect = " + z, new Object[0]);
            jSONObject.putOpt("is_harmony_open", Boolean.valueOf(z));
            if (z) {
                boolean a2 = a();
                jSONObject.putOpt("is_harmony_os", Boolean.valueOf(a2));
                if (a2) {
                    jSONObject.putOpt("harmony_version", b());
                    jSONObject.putOpt("harmony_pure_mode", Integer.valueOf(c()));
                }
            }
        } catch (Throwable th) {
            o.c("fillHarmonyInfo error" + th);
        }
    }

    private static boolean a() {
        Boolean bool = a;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            a = Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0])));
        } catch (Throwable th) {
            o.a("isHarmonyOS" + th, new Object[0]);
            a = false;
        }
        return a.booleanValue();
    }

    private static String b() {
        if (!a()) {
            return "";
        }
        if (!v.a(b)) {
            return b;
        }
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            b = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "hw_sc.build.platform.version");
            o.a("getHarmonyInfoFromSystemProperties value: " + b, new Object[0]);
        } catch (Throwable th) {
            b = "0.0.0";
            o.a("HarmonyOS getVersion" + th, new Object[0]);
        }
        return b;
    }

    private static int c() {
        try {
            if (com.qq.gdt.action.e.a().g() != null) {
                return Settings.Secure.getInt(com.qq.gdt.action.e.a().g().getContentResolver(), "pure_mode_state", -1);
            }
            return -1;
        } catch (Throwable th) {
            o.a("HarmonyOS getPureMode" + th, new Object[0]);
            return -1;
        }
    }
}
