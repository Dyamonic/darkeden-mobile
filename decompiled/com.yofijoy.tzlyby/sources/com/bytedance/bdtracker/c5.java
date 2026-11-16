package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.store.kv.IKVStore;

/* loaded from: classes.dex */
public class c5 {
    public static boolean a;
    public static final q4<IKVStore> b = new a();

    /* loaded from: classes.dex */
    public static class a extends q4<IKVStore> {
        @Override // com.bytedance.bdtracker.q4
        public IKVStore a(Object[] objArr) {
            return o4.a((Context) objArr[0], "ug_install_settings_pref");
        }
    }

    public static boolean a(Context context) {
        if (context == null) {
            return false;
        }
        if (a) {
            return true;
        }
        return b.b(context).getBoolean("_install_started_v2", false);
    }
}
