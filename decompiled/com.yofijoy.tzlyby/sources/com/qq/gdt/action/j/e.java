package com.qq.gdt.action.j;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class e {
    public static void a() {
        SharedPreferences.Editor edit = com.qq.gdt.action.e.a().g().getApplicationContext().getSharedPreferences("BuglySdkInfos", 0).edit();
        edit.putString("f11874d335", com.qq.gdt.action.f.a());
        edit.commit();
    }
}
