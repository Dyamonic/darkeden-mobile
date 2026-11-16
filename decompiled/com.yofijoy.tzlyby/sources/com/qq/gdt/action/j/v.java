package com.qq.gdt.action.j;

import java.util.Locale;

/* loaded from: classes.dex */
public class v {
    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static boolean a(String str) {
        return str == null || str.trim().length() == 0;
    }
}
