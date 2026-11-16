package com.qq.gdt.action.j;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.util.Arrays;

/* loaded from: classes.dex */
public class q {
    private static String[] a = {"android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE"};
    private static String[] b = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.READ_PHONE_STATE", "android.permission.WRITE_EXTERNAL_STORAGE"};

    public static boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
            String[] strArr = packageInfo != null ? packageInfo.requestedPermissions : null;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            return Arrays.asList(strArr).containsAll(Arrays.asList(b));
        } catch (Exception e) {
            o.b(e.getMessage());
            return false;
        }
    }

    public static boolean a(Context context, String str) {
        Class<?> cls;
        try {
            cls = Class.forName("androidx.core.content.ContextCompat");
        } catch (Exception unused) {
            cls = null;
        }
        if (cls == null) {
            try {
                cls = Class.forName("androidx.core.content.ContextCompat");
            } catch (Exception unused2) {
            }
        }
        try {
            if (cls == null) {
                o.a("PermissionUtil contextCompat is null", new Object[0]);
                return true;
            }
            if (((Integer) cls.getMethod("checkSelfPermission", Context.class, String.class).invoke(null, context, str)).intValue() == 0) {
                return true;
            }
            o.a("请在AndroidManifest.xml文件中添加:\n<uses-permission android:name=\"" + str + "\" />", new Object[0]);
            return false;
        } catch (Exception e) {
            o.b("Exception while check has permission " + str, e);
            return true;
        }
    }

    public static boolean b(Context context) {
        for (String str : a) {
            if (!a(context, str)) {
                return false;
            }
        }
        return true;
    }
}
