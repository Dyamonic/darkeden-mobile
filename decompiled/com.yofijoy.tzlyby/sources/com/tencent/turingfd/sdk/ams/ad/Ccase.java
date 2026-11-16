package com.tencent.turingfd.sdk.ams.ad;

import android.content.Context;

/* renamed from: com.tencent.turingfd.sdk.ams.ad.case, reason: invalid class name */
/* loaded from: classes2.dex */
public class Ccase {
    public static Context a;

    public static synchronized boolean a(Context context) {
        synchronized (Ccase.class) {
            if (a != null) {
                return true;
            }
            if (context == null) {
                return false;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                return false;
            }
            a = applicationContext;
            return true;
        }
    }

    public static synchronized Context a() {
        Context context;
        synchronized (Ccase.class) {
            context = a;
        }
        return context;
    }
}
