package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.Process;

/* loaded from: classes2.dex */
public class Triangulum {
    public static int a(Context context, String str) {
        return context.checkPermission(str, Process.myPid(), Process.myUid());
    }

    public static boolean a() {
        Context context;
        int i = Build.VERSION.SDK_INT;
        if (i < 16) {
            return true;
        }
        synchronized (Ccase.class) {
            context = Ccase.a;
        }
        if (a(context, "android.permission.READ_EXTERNAL_STORAGE") != 0) {
            return false;
        }
        if (i >= 29) {
            return Environment.isExternalStorageLegacy();
        }
        return true;
    }
}
