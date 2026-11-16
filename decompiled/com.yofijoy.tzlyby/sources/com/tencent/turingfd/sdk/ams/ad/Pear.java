package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class Pear {
    public static boolean a(Context context) {
        Context context2;
        PackageInfo packageInfo;
        if (context.getPackageManager() == null) {
            return false;
        }
        String a = Cfinally.a(Cfinally.l);
        try {
            if (TextUtils.isEmpty(a)) {
                return false;
            }
            synchronized (Ccase.class) {
                context2 = Ccase.a;
            }
            if (context2 != null && (packageInfo = context2.getPackageManager().getPackageInfo(a, 0)) != null && a.equals(packageInfo.packageName)) {
                return true;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int b(Context context) {
        boolean z;
        String[] split;
        System.currentTimeMillis();
        boolean z2 = false;
        int a = Cthis.a(0, a(context), 0);
        System.currentTimeMillis();
        try {
            String str = new String(Cstrictfp.a(Cfinally.a(Cfinally.n)));
            if (!TextUtils.isEmpty(str) && (split = str.split("\\n")) != null && split.length != 0) {
                String packageName = context.getPackageName();
                for (String str2 : split) {
                    if (a(packageName, str2)) {
                        z = true;
                        break;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        z = false;
        int a2 = Cthis.a(a, z, 1);
        System.currentTimeMillis();
        Object obj = new Object();
        AtomicReference atomicReference = new AtomicReference();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        atomicReference.set(Boolean.FALSE);
        Handler handler = new Handler(context.getMainLooper());
        System.currentTimeMillis();
        handler.post(new Peanut(atomicBoolean, atomicReference, obj));
        synchronized (obj) {
            try {
                obj.wait(100L);
            } catch (InterruptedException unused2) {
            }
        }
        atomicBoolean.set(true);
        int a3 = Cthis.a(a2, ((Boolean) atomicReference.get()).booleanValue(), 2);
        System.currentTimeMillis();
        try {
            ClassLoader.getSystemClassLoader().loadClass(Cfinally.a(Cfinally.E0));
            z2 = true;
        } catch (Throwable unused3) {
        }
        return Cthis.a(a3, z2, 3);
    }

    public static boolean a(String str, String str2) {
        int indexOf;
        if (str2 == null || (indexOf = str2.indexOf(47)) == -1) {
            return false;
        }
        String trim = str2.substring(indexOf).trim();
        if (!trim.startsWith("/data/")) {
            return false;
        }
        if (trim.startsWith("/data/data/" + str + "/")) {
            return false;
        }
        boolean endsWith = trim.endsWith(".so");
        return (endsWith || (!endsWith && trim.endsWith(".jar"))) && str2.contains(Cfinally.a(Cfinally.m));
    }
}
