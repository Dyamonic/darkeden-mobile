package com.qq.gdt.action.g;

import android.content.Context;

/* loaded from: classes.dex */
public class e {
    static boolean a;

    public static void a(Context context) {
        if (!com.qq.gdt.action.e.a().z() || a) {
            return;
        }
        b.a().b();
    }

    public static void b(Context context) {
        a = false;
        if (com.qq.gdt.action.e.a().z()) {
            b.a().b();
        }
    }

    public static void c(Context context) {
        a = true;
    }
}
