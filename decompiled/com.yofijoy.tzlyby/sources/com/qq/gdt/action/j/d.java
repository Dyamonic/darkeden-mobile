package com.qq.gdt.action.j;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import kotlin.UByte;

/* loaded from: classes.dex */
public class d {
    private static Context a = null;
    private static String b = "";
    private static String c = "";
    private static boolean d;

    public static String a() {
        return Build.VERSION.SDK_INT >= 28 ? Application.getProcessName() : "";
    }

    public static String a(Context context) {
        try {
            if (!v.a(b)) {
                return b;
            }
            String a2 = a();
            b = a2;
            if (!v.a(a2)) {
                return b;
            }
            String b2 = b();
            b = b2;
            if (!v.a(b2)) {
                return b;
            }
            String c2 = c();
            b = c2;
            return c2;
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String a(File file) {
        try {
            byte[] bArr = new byte[8192];
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream = new FileInputStream(file);
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b2 : digest) {
                int i = b2 & UByte.MAX_VALUE;
                if (i < 16) {
                    sb.append("0");
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            o.a("file2MD5", e);
            return "";
        }
    }

    public static String b() {
        try {
            Method declaredMethod = Class.forName("android.app.ActivityThread", false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, new Object[0]);
            return invoke instanceof String ? (String) invoke : "";
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static synchronized String b(Context context) {
        synchronized (d.class) {
            if (!d && TextUtils.isEmpty(c)) {
                com.qq.gdt.action.h.a.a(2900);
                if (context == null) {
                    o.a("readFirstApkFile context is null", new Object[0]);
                    com.qq.gdt.action.h.a.a(2901);
                    return c;
                }
                try {
                    ApplicationInfo applicationInfo = context.getApplicationInfo();
                    File file = new File(applicationInfo.sourceDir);
                    if (file.exists()) {
                        c = a(file);
                        o.a("readFirstApkFile Apk file " + applicationInfo.sourceDir + " file2MD5 = " + c, new Object[0]);
                        d = true;
                        if (TextUtils.isEmpty(c)) {
                            com.qq.gdt.action.h.a.a(2903);
                        } else {
                            com.qq.gdt.action.h.a.a(2902);
                        }
                    } else {
                        o.a("readFirstApkFile package:" + applicationInfo.packageName + " Apk file " + applicationInfo.sourceDir + " doesn't exist", new Object[0]);
                        com.qq.gdt.action.h.a.a(2905);
                    }
                } catch (Exception e) {
                    o.a("readFirstApkFile", e);
                    com.qq.gdt.action.h.a.a(2904);
                }
                com.qq.gdt.action.h.a.a(2906);
                return c;
            }
            return c;
        }
    }

    public static String c() {
        BufferedReader bufferedReader;
        Throwable th;
        try {
            bufferedReader = new BufferedReader(new FileReader(new File("/proc/" + Process.myPid() + "/cmdline")));
            try {
                String trim = bufferedReader.readLine().replace((char) 0, TokenParser.SP).trim();
                try {
                    bufferedReader.close();
                    return trim;
                } catch (Exception e) {
                    e.printStackTrace();
                    return trim;
                }
            } catch (Throwable th2) {
                th = th2;
                try {
                    th.printStackTrace();
                    return "";
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }

    public static boolean d() {
        try {
            String a2 = a(com.qq.gdt.action.e.a().g());
            boolean equals = h.d().equals(a2);
            o.a("isMainProcess = " + equals + " getApplicationContext().getPackageName() = " + com.qq.gdt.action.e.a().g().getPackageName() + " processName = " + a2, new Object[0]);
            return equals;
        } catch (Exception e) {
            o.a("isMainProcess exception = " + e, new Object[0]);
            return false;
        }
    }

    public static Context e() {
        if (a == null) {
            synchronized (d.class) {
                if (a == null) {
                    try {
                        Class<?> cls = Class.forName("android.app.ActivityThread");
                        Object invoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(cls, new Object[0]);
                        a = (Context) invoke.getClass().getMethod("getApplication", new Class[0]).invoke(invoke, new Object[0]);
                        o.a(" AppInfoUtil getContext CONTEXT_INSTANCE = " + a, new Object[0]);
                        com.qq.gdt.action.h.a.a(2101);
                    } catch (Throwable th) {
                        com.qq.gdt.action.h.a.a(2102);
                        o.a(" AppInfoUtil getContext ex = " + th, new Object[0]);
                    }
                }
            }
        }
        return a;
    }

    public static String f() {
        return c;
    }
}
