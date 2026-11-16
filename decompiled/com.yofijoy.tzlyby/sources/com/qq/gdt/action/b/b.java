package com.qq.gdt.action.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;

/* loaded from: classes.dex */
public class b {
    private static String a;
    private static String b;

    public static String a(Context context) {
        if (a == null) {
            c(context);
        }
        return a;
    }

    public static String b(Context context) {
        if (b == null) {
            c(context);
        }
        return b;
    }

    public static void c(Context context) {
        if (a == null || b == null) {
            try {
                File file = new File(d(context));
                b = c.a(file, -2012129808);
                String a2 = c.a(file, -2012129793);
                a = a2;
                if (a2 == "") {
                    a = f.a(file);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private static String d(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo == null) {
                return null;
            }
            return applicationInfo.sourceDir;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
