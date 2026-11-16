package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.store.kv.IKVStore;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class f1 {
    public HashSet<String> a;
    public HashMap<String, HashSet<String>> b;

    public f1(HashSet<String> hashSet, HashMap<String, HashSet<String>> hashMap) {
        this.a = hashSet;
        this.b = hashMap;
    }

    public static f1 a(Context context, String str, JSONObject jSONObject) {
        JSONObject optJSONObject;
        try {
            IKVStore a = o4.a(context, str);
            a.clear();
            if (jSONObject == null || !jSONObject.has("event_list") || (optJSONObject = jSONObject.optJSONObject("event_list")) == null) {
                return null;
            }
            int optInt = optJSONObject.optInt("is_block", 0);
            a.putInt("is_block", optInt);
            HashSet hashSet = new HashSet();
            JSONArray optJSONArray = optJSONObject.optJSONArray("events");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    String optString = optJSONArray.optString(i);
                    if (!TextUtils.isEmpty(optString)) {
                        hashSet.add(optString);
                    }
                }
            }
            if (hashSet.size() > 0) {
                a.putStringSet("events", hashSet);
            }
            HashMap hashMap = new HashMap();
            JSONObject optJSONObject2 = optJSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
            if (optJSONObject2 != null) {
                Iterator<String> keys = optJSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!TextUtils.isEmpty(next)) {
                        HashSet hashSet2 = new HashSet();
                        JSONArray optJSONArray2 = optJSONObject2.optJSONArray(next);
                        if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                                String optString2 = optJSONArray2.optString(i2);
                                if (!TextUtils.isEmpty(optString2)) {
                                    hashSet2.add(optString2);
                                }
                            }
                        }
                        if (hashSet2.size() > 0) {
                            hashMap.put(next, hashSet2);
                        }
                    }
                }
            }
            if (hashMap.size() > 0) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    a.putStringSet((String) entry.getKey(), (Set) entry.getValue());
                }
            }
            return optInt > 0 ? new h1(hashSet, hashMap) : new g1(hashSet, hashMap);
        } catch (Throwable unused) {
            return null;
        }
    }

    public abstract boolean a(String str);

    public final boolean a(String str, String str2) {
        HashMap<String, HashSet<String>> hashMap;
        HashSet<String> hashSet;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        HashSet<String> hashSet2 = this.a;
        if (hashSet2 != null && hashSet2.size() > 0) {
            if (a(str)) {
                return false;
            }
            if (TextUtils.isEmpty(str2)) {
                return true;
            }
            JSONObject jSONObject = null;
            try {
                jSONObject = new JSONObject(str2);
            } catch (JSONException unused) {
            }
            if (jSONObject != null && (hashMap = this.b) != null && hashMap.size() > 0 && this.b.containsKey(str) && (hashSet = this.b.get(str)) != null && hashSet.size() > 0) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    if (a(hashSet, keys.next())) {
                        try {
                            keys.remove();
                        } catch (Throwable unused2) {
                        }
                    }
                }
            }
        }
        return true;
    }

    public abstract boolean a(HashSet<String> hashSet, String str);
}
