package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import com.bytedance.applog.store.kv.IKVStore;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class m4 implements IKVStore {
    public final SharedPreferences a;
    public final String b;
    public final Context c;

    public m4(String str, Context context, String str2) {
        this.b = str;
        this.c = context;
        this.a = j4.a(context, str2, 0);
    }

    public abstract String a();

    public abstract void a(String str);

    public abstract void a(String str, int i);

    public abstract void a(String str, long j);

    public abstract void a(String str, String str2);

    public abstract void a(String str, Set<String> set);

    public abstract void a(String str, boolean z);

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore clear() {
        this.a.edit().clear().apply();
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public boolean contains(String str) {
        return this.a.contains(a() + str);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public Map<String, ?> getAll() {
        return this.a.getAll();
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore putBoolean(String str, boolean z) {
        a(str);
        a(str, z);
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore putInt(String str, int i) {
        a(str);
        a(str, i);
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore putLong(String str, long j) {
        a(str);
        a(str, j);
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore putString(String str, String str2) {
        a(str);
        a(str, str2);
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore putStringSet(String str, Set<String> set) {
        a(str);
        if (set == null) {
            set = new HashSet<>();
        }
        a(str, set);
        return this;
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public IKVStore remove(String str) {
        this.a.edit().remove(a() + str).apply();
        return this;
    }
}
