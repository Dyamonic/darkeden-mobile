package com.bytedance.applog;

import com.bytedance.bdtracker.b;
import com.bytedance.bdtracker.k0;

/* loaded from: classes.dex */
public final class AppLogManager {
    public static IAppLogInstance getInstance(String str) {
        if (k0.c(str)) {
            return null;
        }
        return b.a(str);
    }
}
