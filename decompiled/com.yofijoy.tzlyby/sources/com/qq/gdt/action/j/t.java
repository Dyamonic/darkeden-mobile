package com.qq.gdt.action.j;

import android.content.Context;
import android.content.SharedPreferences;
import cz.msebera.android.httpclient.cookie.ClientCookie;

/* loaded from: classes.dex */
public class t {
    private static long a(Context context, String str) {
        return context.getApplicationContext().getSharedPreferences("com.qq.gdt.action.SessionTimePref", 0).getLong(str, 0L);
    }

    public static String a() {
        return "com.qq.gdt.action.SessionTimePref_" + u.a(com.qq.gdt.action.e.a().r());
    }

    public static void a(Context context, long j) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        if (j > 0) {
            edit.putLong("ActivateTimeRevised", j);
        }
        edit.apply();
    }

    public static void a(Context context, long j, long j2) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putLong("AppStartTime", j);
        if (j2 > 0) {
            edit.putLong("AppStartTimeRevised", j2);
        }
        edit.apply();
    }

    public static void a(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putBoolean("ActivateWithImei", z);
        edit.apply();
    }

    public static boolean a(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getBoolean("ActivateWithImei", false);
    }

    public static void b(Context context, long j) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putLong("SessionStartTimeV1", j);
        edit.apply();
    }

    public static void b(Context context, boolean z) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putBoolean("ActivateWithOaid", z);
        edit.apply();
    }

    public static boolean b(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getBoolean("ActivateWithOaid", false);
    }

    public static long c(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getLong("ActivateTimeRevised", -1L);
    }

    public static void c(Context context, long j) {
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putLong("SessionEndTimeV1", j);
        edit.apply();
    }

    public static long d(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getLong("AppStartTime", -1L);
    }

    public static void d(Context context, long j) {
        o.a("setLastRefreshTraceIdTime:" + j, new Object[0]);
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putLong("RefreshTraceIdTime", j);
        edit.apply();
    }

    public static long e(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getLong("AppStartTimeRevised", -1L);
    }

    public static void e(Context context, long j) {
        o.a("setLastRefreshOpenUrlTime:" + j, new Object[0]);
        SharedPreferences.Editor edit = context.getApplicationContext().getSharedPreferences(a(), 0).edit();
        edit.putLong("RefreshOpenUrlTime", j);
        edit.apply();
    }

    public static synchronized void f(Context context) {
        synchronized (t.class) {
            try {
                SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a(), 0);
                if (sharedPreferences.getInt(ClientCookie.VERSION_ATTR, 0) == 0) {
                    long a = a(context, "SessionStartTime");
                    long a2 = a(context, "ActivateTimeRevised");
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putInt(ClientCookie.VERSION_ATTR, 1);
                    if (a > 0) {
                        edit.putLong("AppStartTime", a);
                        if (a2 <= 0) {
                            edit.putLong("ActivateTimeRevised", a);
                        }
                        edit.putBoolean("ActivateWithImei", true);
                        edit.putBoolean("ActivateWithOaid", true);
                    }
                    edit.apply();
                }
            } catch (Throwable unused) {
                o.c("Exception while upgrade preference");
            }
        }
    }

    public static boolean g(Context context) {
        return System.currentTimeMillis() - i(context) > 2592000000L;
    }

    public static boolean h(Context context) {
        return System.currentTimeMillis() - j(context) > 2592000000L;
    }

    private static long i(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getLong("RefreshTraceIdTime", -1L);
    }

    private static long j(Context context) {
        return context.getApplicationContext().getSharedPreferences(a(), 0).getLong("RefreshOpenUrlTime", -1L);
    }
}
