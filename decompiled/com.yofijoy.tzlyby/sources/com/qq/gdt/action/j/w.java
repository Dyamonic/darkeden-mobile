package com.qq.gdt.action.j;

import android.os.SystemClock;

/* loaded from: classes.dex */
public class w {
    private static volatile Long a;

    public static void a(long j) {
        if (j <= 0 || a()) {
            return;
        }
        a = Long.valueOf(j - SystemClock.elapsedRealtime());
    }

    public static boolean a() {
        return a != null;
    }

    public static long b() {
        if (a()) {
            return SystemClock.elapsedRealtime() + a.longValue();
        }
        return -1L;
    }
}
