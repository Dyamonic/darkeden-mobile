package com.qq.gdt.action.j;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.qq.gdt.action.e.d;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class h {
    public static String a;
    private static String b;
    private static final Map<String, Integer> c = new HashMap<String, Integer>() { // from class: com.qq.gdt.action.j.h.1
        {
            put("46000", 1);
            put("46002", 1);
            put("46007", 1);
            put("46008", 1);
            put("46001", 2);
            put("46006", 2);
            put("46009", 2);
            put("46003", 3);
            put("46005", 3);
            put("46011", 3);
        }
    };

    public static String a() {
        String b2 = b();
        return v.a(b2) ? b2 : u.a(b2.toLowerCase());
    }

    public static String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static String b() {
        try {
            if (!v.a(b)) {
                return b;
            }
            Context g = com.qq.gdt.action.e.a().g();
            com.qq.gdt.action.e.a();
            String b2 = com.qq.gdt.action.e.b.b(g, com.qq.gdt.action.e.w());
            b = b2;
            return b2;
        } catch (Throwable th) {
            o.a("getImei e " + th, new Object[0]);
            return "";
        }
    }

    public static String c() {
        if (v.a(a)) {
            try {
                String readLine = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.product.cpu.abi").getInputStream())).readLine();
                if (readLine.contains("x86")) {
                    a = "x86";
                } else if (readLine.contains("x86_64")) {
                    a = "x86_64";
                } else if (readLine.contains("armeabi-v7a")) {
                    a = "armeabi-v7a";
                } else {
                    a = readLine.contains("arm64-v8a") ? "arm64-v8a" : "armeabi";
                }
            } catch (Exception unused) {
            }
        }
        return a;
    }

    public static String c(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static d.b d(Context context) {
        return com.qq.gdt.action.e.d.b(context);
    }

    public static String d() {
        try {
            return com.qq.gdt.action.e.a().g().getPackageName();
        } catch (Throwable th) {
            o.a("Get package name encountered exception: " + th.getMessage(), new Object[0]);
            return null;
        }
    }

    public static d.a e(Context context) {
        return com.qq.gdt.action.e.d.a(context, false);
    }

    public static Integer e() {
        String a2;
        try {
            a2 = com.qq.gdt.action.e.g.a();
        } catch (Throwable th) {
            o.a("Get carrier encounter exception: " + th.getMessage(), new Object[0]);
        }
        if (v.a(a2)) {
            return 0;
        }
        for (Map.Entry<String, Integer> entry : c.entrySet()) {
            if (a2.startsWith(entry.getKey())) {
                return entry.getValue();
            }
        }
        return 0;
    }

    public static String f() {
        try {
            return TimeZone.getDefault().getDisplayName(false, 0);
        } catch (AssertionError | Exception unused) {
            return "";
        }
    }

    public static void f(Context context) {
        com.qq.gdt.action.e.d.a(context);
    }

    public static JSONArray g(Context context) {
        Set<String> y;
        JSONArray jSONArray = new JSONArray();
        try {
            y = com.qq.gdt.action.b.a(context).y();
        } catch (Throwable unused) {
            o.a("get firstInstallTime error", new Object[0]);
        }
        if (y != null && !y.isEmpty()) {
            PackageManager packageManager = context.getPackageManager();
            for (String str : y) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("package_name", str);
                    jSONObject.putOpt("install_time", Long.valueOf(packageInfo.firstInstallTime));
                    jSONArray.put(jSONObject);
                } catch (PackageManager.NameNotFoundException unused2) {
                    o.a(v.a("package %s not exist", str), new Object[0]);
                }
            }
            return jSONArray;
        }
        return jSONArray;
    }
}
