package com.qq.gdt.action.e;

import android.text.TextUtils;

/* loaded from: classes.dex */
final class a {
    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String a = f.a(str, "UTF-8");
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return a.toLowerCase();
    }
}
