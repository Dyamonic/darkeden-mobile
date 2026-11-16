package com.qq.gdt.action.e;

import android.text.TextUtils;

/* loaded from: classes.dex */
final class c {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String a = f.a(str.toLowerCase(), "UTF-8");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return a.toLowerCase();
    }
}
