package com.bytedance.bdtracker;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.store.kv.IKVStore;
import com.bytedance.applog.store.kv.KVStoreConfig;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class o4 {
    public static final Map<String, IKVStore> a = new HashMap();

    public static IKVStore a(Context context, String str) {
        Map<String, IKVStore> map = a;
        if (map.containsKey(str)) {
            LoggerImpl.global().debug("[{}][KVStore]KVStoreUtil find KVStore cache, sp_name: {}", "global", str);
            return map.get(str);
        }
        LoggerImpl.global().debug("[{}][KVStore]KVStoreUtil create global default KVStore, sp_name: {}", "global", str);
        n4 n4Var = new n4("global", context, str);
        map.put(str, n4Var);
        return n4Var;
    }

    public static IKVStore a(InitConfig initConfig, Context context, String str) {
        IKVStore n4Var;
        KVStoreConfig kVStoreConfig = KVStoreConfig.DEFAULT_CONFIG;
        String str2 = "";
        if (initConfig != null) {
            kVStoreConfig = initConfig.getKvStoreConfig();
            str2 = initConfig.getAid();
        } else {
            LoggerImpl.global().warn("[{}][KVStore]KVStoreUtil createKVStore init config is null", "");
        }
        Map<String, IKVStore> map = a;
        if (map.containsKey(str)) {
            LoggerImpl.global().debug("[{}][KVStore]KVStoreUtil find KVStore cache, sp_name: {}", str2, str);
            return map.get(str);
        }
        if (kVStoreConfig.isSecurityMode()) {
            String aesKey = kVStoreConfig.getAesKey();
            try {
                LoggerImpl.global().debug("[{}][KVStore]KVStoreUtil createKVStore use SecurityKVStore, sp_name: {}", str2, str);
                n4Var = TextUtils.isEmpty(aesKey) ? new p4(str2, context, str) : new p4(str2, context, str, aesKey);
            } catch (Exception e) {
                LoggerImpl.global().error("[{}][KVStore]KVStoreUtil createKVStore use SecurityKVStore failed, use DefaultKVStore, sp_name: {}", e, str2, str);
                a(j4.a(context, str, 0), str2);
                n4Var = new n4(str2, context, str);
            }
        } else {
            LoggerImpl.global().debug("[{}][KVStore]KVStoreUtil createKVStore use DefaultKVStore, sp_name: {}", str2, str);
            n4Var = new n4(str2, context, str);
        }
        a.put(str, n4Var);
        return n4Var;
    }

    public static void a(SharedPreferences sharedPreferences, String str) {
        if (sharedPreferences == null) {
            LoggerImpl.global().debug("[{}][KVStore]kv clear failed, preferences == null: {}", str);
            return;
        }
        for (String str2 : sharedPreferences.getAll().keySet()) {
            sharedPreferences.edit().remove(str2).apply();
            LoggerImpl.global().debug("[{}][KVStore]SecurityKVStore kv change, delete key: {}", str, str2);
        }
    }
}
