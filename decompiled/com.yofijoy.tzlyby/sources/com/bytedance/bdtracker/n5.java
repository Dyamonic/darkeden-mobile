package com.bytedance.bdtracker;

import android.text.TextUtils;
import com.bytedance.applog.store.kv.IKVStore;
import java.util.UUID;

/* loaded from: classes.dex */
public final class n5 {
    public static m5<String> a = new a();

    /* loaded from: classes.dex */
    public static class a extends m5<String> {
        @Override // com.bytedance.bdtracker.m5
        public String a(Object[] objArr) {
            IKVStore iKVStore = (IKVStore) objArr[0];
            String string = iKVStore.getString("cdid", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            String uuid = UUID.randomUUID().toString();
            iKVStore.putString("cdid", uuid);
            return uuid;
        }
    }
}
