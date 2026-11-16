package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class n4 extends m4 {
    public n4(String str, Context context, String str2) {
        super(str, context, str2);
        Context context2 = this.c;
        StringBuilder a = a.a("security_store_");
        a.append(this.b);
        SharedPreferences a2 = j4.a(context2, a.toString(), 0);
        if (a2.contains("sks_kv") || !a2.contains("sks_hash")) {
            return;
        }
        o4.a(this.a, this.b);
    }

    @Override // com.bytedance.bdtracker.m4
    public String a() {
        return "";
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str) {
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            this.a.edit().remove(a).apply();
            LoggerImpl.global().debug("[{}][KVStore]BaseKVStore remove raw key: {}", this.b, a);
        }
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, boolean z) {
        this.a.edit().putBoolean(a() + str, z).apply();
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public boolean getBoolean(String str, boolean z) {
        boolean parseBoolean;
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    parseBoolean = Boolean.parseBoolean(p4.a(string, p4.a(this.c, this.b), this.b));
                } catch (Throwable th) {
                    LoggerImpl.global().error("[{}][KVStore]DefaultKVStore Boolean.parseBoolean failed, key: {}, ", th, this.b, str);
                }
                this.a.edit().remove(a).apply();
                a(str);
                a(str, parseBoolean);
                LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
            }
            parseBoolean = z;
            this.a.edit().remove(a).apply();
            a(str);
            a(str, parseBoolean);
            LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
        }
        return this.a.getBoolean(a() + str, z);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public int getInt(String str, int i) {
        int parseInt;
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    parseInt = Integer.parseInt(p4.a(string, p4.a(this.c, this.b), this.b));
                } catch (Throwable th) {
                    LoggerImpl.global().error("[{}][KVStore]DefaultKVStore Integer.parseInt failed, key: {}, ", th, this.b, str);
                }
                this.a.edit().remove(a).apply();
                a(str);
                a(str, parseInt);
                LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
            }
            parseInt = i;
            this.a.edit().remove(a).apply();
            a(str);
            a(str, parseInt);
            LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
        }
        return this.a.getInt(a() + str, i);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public long getLong(String str, long j) {
        long parseLong;
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    parseLong = Long.parseLong(p4.a(string, p4.a(this.c, this.b), this.b));
                } catch (Throwable th) {
                    LoggerImpl.global().error("[{}][KVStore]DefaultKVStore Long.parseLong failed, key: {}, ", th, this.b, str);
                }
                this.a.edit().remove(a).apply();
                a(str);
                a(str, parseLong);
                LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
            }
            parseLong = j;
            this.a.edit().remove(a).apply();
            a(str);
            a(str, parseLong);
            LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
        }
        return this.a.getLong(a() + str, j);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public String getString(String str, String str2) {
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, null);
            String a2 = TextUtils.isEmpty(string) ? str2 : p4.a(string, p4.a(this.c, this.b), this.b);
            this.a.edit().remove(a).apply();
            a(str);
            a(str, a2);
            LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
        }
        return this.a.getString(a() + str, str2);
    }

    @Override // com.bytedance.applog.store.kv.IKVStore
    public Set<String> getStringSet(String str, Set<String> set) {
        String a = a.a("sks", str);
        if (this.a.contains(a)) {
            String string = this.a.getString(a, null);
            Set<String> b = TextUtils.isEmpty(string) ? set : p4.b(p4.a(string, p4.a(this.c, this.b), this.b), this.b);
            this.a.edit().remove(a).apply();
            a(str);
            if (b == null) {
                b = new HashSet<>();
            }
            a(str, b);
            LoggerImpl.global().debug("[{}][KVStore]DefaultKVStore replace raw key: {}", this.b, str);
        }
        return this.a.getStringSet(a() + str, set);
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, int i) {
        this.a.edit().putInt(a() + str, i).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, long j) {
        this.a.edit().putLong(a() + str, j).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, String str2) {
        this.a.edit().putString(a() + str, str2).apply();
    }

    @Override // com.bytedance.bdtracker.m4
    public void a(String str, Set<String> set) {
        this.a.edit().putStringSet(a() + str, set).apply();
    }
}
