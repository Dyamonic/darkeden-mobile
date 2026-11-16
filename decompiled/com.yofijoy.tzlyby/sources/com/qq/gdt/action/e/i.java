package com.qq.gdt.action.e;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import com.qq.gdt.action.j.o;
import com.qq.gdt.action.j.q;
import com.qq.gdt.action.j.v;

/* loaded from: classes.dex */
final class i {
    private static String a() {
        h hVar = new h("Tencent/ams/cache", "meta.dat");
        h hVar2 = new h("Android/data/com.tencent.ams/cache", "meta.dat");
        String str = null;
        if (hVar.a() && hVar2.a()) {
            String a = hVar.a(10240);
            String a2 = hVar2.a(10240);
            o.a("jsonUUIDString:" + a + "/jsonUUIDStringBackup:" + a2, new Object[0]);
            if (!v.a(a)) {
                str = a;
            } else if (!v.a(a2)) {
                str = a2;
            }
        }
        hVar.b();
        hVar2.b();
        return str;
    }

    public static String a(Context context, boolean z, boolean z2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.qq.gdt.action.DeviceIdPref", 0);
        boolean a = a(context, z2);
        o.a("create:" + z + "/preCheck:" + a, new Object[0]);
        if (!a) {
            return sharedPreferences.getString("uuid_standard", "");
        }
        String string = z ? "" : sharedPreferences.getString("uuid_standard", "");
        if (!TextUtils.isEmpty(string)) {
            return string;
        }
        String a2 = a();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("uuid_standard", a2);
        edit.apply();
        return a2;
    }

    private static boolean a(Context context, boolean z) {
        return (!z || q.a(context, "android.permission.WRITE_EXTERNAL_STORAGE")) && TextUtils.equals(Environment.getExternalStorageState(), "mounted");
    }
}
