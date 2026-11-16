package com.bytedance.bdtracker;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.applog.log.LoggerImpl;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class f5 {
    public static final CharSequence a = "amigo";
    public static final CharSequence b = "funtouch";
    public static final q4<Boolean> c = new a();

    /* loaded from: classes.dex */
    public static class a extends q4<Boolean> {
        @Override // com.bytedance.bdtracker.q4
        public Boolean a(Object[] objArr) {
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                return Boolean.valueOf("harmony".equals(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0])));
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    public static String a(String str) {
        String a2 = h5.a(str);
        if (!TextUtils.isEmpty(a2)) {
            return a2;
        }
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            BufferedReader bufferedReader = null;
            try {
                Process exec = Runtime.getRuntime().exec("getprop " + str);
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(exec.getInputStream()), 1024);
                try {
                    str2 = bufferedReader2.readLine();
                    exec.destroy();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        LoggerImpl.global().error("getSysPropByExec error", th, new Object[0]);
                        bufferedReader2 = bufferedReader;
                        return str2;
                    } finally {
                        k0.a((Closeable) bufferedReader);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return str2;
    }

    public static boolean a() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.version.emui");
            if (!TextUtils.isEmpty(str)) {
                LoggerImpl.global().debug("Honor# oldHonor device, version is" + str, new Object[0]);
                return true;
            }
        } catch (Exception e) {
            IAppLogLogger global = LoggerImpl.global();
            StringBuilder a2 = com.bytedance.bdtracker.a.a("Honor# ");
            a2.append(e.getMessage());
            global.error(a2.toString(), e, new Object[0]);
        }
        return false;
    }

    public static boolean b() {
        String str = Build.MANUFACTURER;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.toLowerCase().contains("oppo") || str.toLowerCase().contains("realme");
    }

    public static boolean c() {
        return (!TextUtils.isEmpty(Build.DISPLAY) && Build.DISPLAY.contains("Flyme")) || "flyme".equals(Build.USER);
    }

    public static boolean d() {
        return (!TextUtils.isEmpty(Build.BRAND) && Build.BRAND.toLowerCase().startsWith("honor")) || (!TextUtils.isEmpty(Build.MANUFACTURER) && Build.MANUFACTURER.toLowerCase().startsWith("honor"));
    }

    public static boolean e() {
        return (!TextUtils.isEmpty(Build.BRAND) && Build.BRAND.toLowerCase().startsWith("huawei")) || (!TextUtils.isEmpty(Build.MANUFACTURER) && Build.MANUFACTURER.toLowerCase().startsWith("huawei"));
    }

    public static boolean f() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Throwable unused) {
            return false;
        }
    }
}
