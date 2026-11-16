package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.applog.store.kv.IKVStore;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class x1 {
    public static final String[] m = {TapEventParamConstants.PARAM_SUB_CHANNEL, "package", TapEventParamConstants.PARAM_SUB_APP_VERSION};
    public volatile boolean a;
    public final Context b;
    public final v1 c;
    public volatile JSONObject d;
    public boolean e;
    public final IKVStore g;
    public final u4 h;
    public final d i;

    @Deprecated
    public boolean l;
    public final Set<q1> f = new LinkedHashSet(32);
    public int j = 0;
    public Set<String> k = new HashSet(4);

    /* loaded from: classes.dex */
    public class a implements EventBus.DataFetcher {
        public a() {
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", x1.this.i.m);
                jSONObject.put("did", x1.this.d.optString(TapEventParamConstants.PARAM_DEVICE_ID, ""));
                jSONObject.put("bdDid", x1.this.c());
                jSONObject.put("ssid", x1.this.i());
                jSONObject.put("installId", x1.this.f());
                jSONObject.put("uuid", x1.this.k());
                jSONObject.put("uuidType", x1.this.l());
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    /* loaded from: classes.dex */
    public class b implements EventBus.DataFetcher {
        public final /* synthetic */ JSONObject a;

        public b(JSONObject jSONObject) {
            this.a = jSONObject;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            k0.c(this.a, jSONObject);
            try {
                jSONObject.put("appId", x1.this.i.m);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public x1(d dVar, Context context, v1 v1Var) {
        this.l = false;
        this.i = dVar;
        this.b = context;
        this.c = v1Var;
        IKVStore iKVStore = v1Var.f;
        this.g = iKVStore;
        this.d = new JSONObject();
        this.h = dVar.d.a(dVar, context, v1Var);
        this.l = iKVStore.getBoolean("forbid_report_phone_detail_info", false);
        boolean z = v1Var.f.getBoolean("is_first_app_launch", true);
        String userUniqueId = v1Var.c.getUserUniqueId();
        String userUniqueIdType = v1Var.c.getUserUniqueIdType();
        if (k0.d(userUniqueId) && z) {
            h(userUniqueId);
        }
        if (k0.d(userUniqueIdType) && z) {
            i(userUniqueIdType);
        }
        if (z) {
            v1Var.f.putBoolean("is_first_app_launch", false);
        }
    }

    public static void a(JSONObject jSONObject, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public static boolean e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        return (k0.a(jSONObject.optString(TapEventParamConstants.PARAM_DEVICE_ID, "")) || k0.a(jSONObject.optString("bd_did", ""))) && k0.a(jSONObject.optString("install_id", ""));
    }

    public final String a(Set<String> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(",");
            }
        }
        return sb.toString();
    }

    public final synchronized void a(String str) {
        String optString = this.d.optString("ab_sdk_version");
        if (!TextUtils.isEmpty(optString)) {
            for (String str2 : optString.split(",")) {
                if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
                    this.i.D.debug(Collections.singletonList("DeviceManager"), com.bytedance.bdtracker.a.a("addExposedVid ready added: ", optString), new Object[0]);
                    return;
                }
            }
            str = optString + "," + str;
        }
        e(str);
        a(str, this.c.c());
    }

    public void b(String str) {
        u4 u4Var = this.h;
        if (u4Var instanceof u4) {
            u4Var.e.D.debug(u4Var.g, "DeviceParamsProvider#clearDidAndIid clearKey=" + str + " sDeviceId=" + u4.l, new Object[0]);
            if (!TextUtils.isEmpty(str)) {
                u4.l = null;
                String a2 = com.bytedance.bdtracker.a.a("clear_key_prefix", str);
                InitConfig initConfig = u4Var.f.c;
                IKVStore a3 = o4.a(initConfig, u4Var.a, initConfig.getSpName());
                if (!a3.getBoolean(a2, false)) {
                    a3.putBoolean(a2, true);
                    if (a3.contains(TapEventParamConstants.PARAM_DEVICE_ID)) {
                        a3.remove(TapEventParamConstants.PARAM_DEVICE_ID);
                    }
                    if (a3.contains("install_id")) {
                        a3.remove("install_id");
                    }
                    u4Var.b.a(TapEventParamConstants.PARAM_DEVICE_ID);
                    u4Var.e.D.debug(u4Var.g, "clearKey:{} installId and deviceId finish", str);
                } else {
                    u4Var.e.D.debug(u4Var.g, "clearKey:{} is already cleared", str);
                }
            }
        }
        this.c.f.remove("device_token");
    }

    public final void b(JSONObject jSONObject) {
        this.d = jSONObject;
        if (LogUtils.isDisabled()) {
            return;
        }
        LogUtils.sendJsonFetcher("set_header", new b(jSONObject));
    }

    public String c() {
        return this.d.optString("bd_did", "");
    }

    public final Set<String> c(String str) {
        String[] split;
        HashSet hashSet = new HashSet();
        if (!TextUtils.isEmpty(str) && (split = str.split(",")) != null && split.length > 0) {
            for (String str2 : split) {
                if (!TextUtils.isEmpty(str2)) {
                    hashSet.add(str2);
                }
            }
        }
        return hashSet;
    }

    public final JSONObject d() {
        if (this.a) {
            return this.d.optJSONObject(SchedulerSupport.CUSTOM);
        }
        v1 v1Var = this.c;
        if (v1Var == null) {
            return null;
        }
        try {
            return new JSONObject(v1Var.d.getString("header_custom_info", null));
        } catch (Exception unused) {
            return null;
        }
    }

    public void d(String str) {
        JSONObject d;
        if (TextUtils.isEmpty(str) || (d = d()) == null || !d.has(str)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        k0.a(jSONObject, d);
        jSONObject.remove(str);
        c(jSONObject);
    }

    public JSONObject e() {
        if (this.a) {
            return this.d;
        }
        return null;
    }

    public String f() {
        return this.d.optString("install_id", "");
    }

    public String g() {
        return this.d.optString("openudid", "");
    }

    public boolean g(String str) {
        if (!a("ssid", (Object) str)) {
            return false;
        }
        this.g.putString(this.c.e(), str);
        return true;
    }

    public int h() {
        if (e(this.d)) {
            return this.g.getInt("version_code", 0) == this.d.optInt("version_code", -1) ? 1 : 2;
        }
        return 0;
    }

    public String i() {
        if (this.a) {
            return this.d.optString("ssid", "");
        }
        v1 v1Var = this.c;
        return v1Var != null ? v1Var.f.getString(v1Var.e(), "") : "";
    }

    public String j() {
        return this.d.optString("udid", "");
    }

    public String k() {
        if (this.a) {
            return this.d.optString("user_unique_id", "");
        }
        v1 v1Var = this.c;
        return v1Var != null ? v1Var.f() : "";
    }

    public String l() {
        return this.d.optString("user_unique_id_type", this.c.g());
    }

    public int m() {
        int optInt = this.a ? this.d.optInt("version_code", -1) : a5.a(this.b);
        for (int i = 0; i < 3 && optInt == -1; i++) {
            optInt = this.a ? this.d.optInt("version_code", -1) : a5.a(this.b);
        }
        return optInt;
    }

    public String n() {
        String optString = this.a ? this.d.optString(TapEventParamConstants.PARAM_SUB_APP_VERSION) : a5.b(this.b);
        for (int i = 0; i < 3 && TextUtils.isEmpty(optString); i++) {
            optString = this.a ? this.d.optString(TapEventParamConstants.PARAM_SUB_APP_VERSION) : a5.b(this.b);
        }
        return optString;
    }

    public boolean o() {
        return this.e;
    }

    public boolean p() {
        return e(this.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0166, code lost:
    
        if ((!r16.c.i() && r11.d) != false) goto L89;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean q() {
        /*
            Method dump skipped, instructions count: 748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.x1.q():boolean");
    }

    @Deprecated
    public boolean r() {
        return !this.l;
    }

    public void e(String str) {
        if (a("ab_sdk_version", (Object) str)) {
            this.c.d.putString("ab_sdk_version", str);
        }
    }

    public final void c(JSONObject jSONObject) {
        if (a(SchedulerSupport.CUSTOM, jSONObject)) {
            this.c.d.putString("header_custom_info", jSONObject != null ? jSONObject.toString() : "");
        }
    }

    public synchronized void f(String str) {
        Set<String> c = c(this.c.c());
        String c2 = this.c.c();
        Set<String> c3 = c(this.d.optString("ab_sdk_version"));
        c3.removeAll(c);
        c3.addAll(c(str));
        v1 v1Var = this.c;
        v1Var.b.D.debug(Collections.singletonList("ConfigManager"), "setExternalAbVersion:{}", str);
        v1Var.d.putString("external_ab_version", str);
        v1Var.h = null;
        e(a(c3));
        if (!k0.a(c2, this.c.c())) {
            a(a(), this.c.c());
        }
    }

    public String a() {
        if (this.a) {
            return this.d.optString("ab_sdk_version", "");
        }
        v1 v1Var = this.c;
        return v1Var != null ? v1Var.d.getString("ab_sdk_version", "") : "";
    }

    public final synchronized void d(JSONObject jSONObject) {
        if (jSONObject == null) {
            this.i.D.warn("null abconfig", new Object[0]);
        }
        String optString = this.d.optString("ab_sdk_version");
        if (!TextUtils.isEmpty(optString)) {
            Set<String> c = c(optString);
            HashSet hashSet = new HashSet();
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (next instanceof String) {
                        String str = next;
                        if (!TextUtils.isEmpty(str)) {
                            try {
                                hashSet.add(jSONObject.getJSONObject(str).optString("vid"));
                            } catch (JSONException e) {
                                this.i.D.error(Collections.singletonList("DeviceManager"), "JSON handle failed", e, new Object[0]);
                            }
                        }
                    }
                }
            }
            String c2 = this.c.c();
            hashSet.addAll(c(c2));
            c.retainAll(hashSet);
            String a2 = a(c);
            e(a2);
            if (!TextUtils.equals(optString, a2)) {
                a(a2, c2);
            }
        }
    }

    public void i(String str) {
        if (a("user_unique_id_type", (Object) str)) {
            this.c.d.putString("user_unique_id_type", str);
        }
    }

    public boolean h(String str) {
        if (!a("user_unique_id", (Object) str)) {
            return false;
        }
        this.c.d.putString("user_unique_id", k0.a((Object) str));
        return true;
    }

    public <T> T a(String str, T t, Class<T> cls) {
        return (T) this.i.j.a(this.d, str, (String) t, (Class<String>) cls);
    }

    public final void a(String str, String str2) {
        if (this.c.h() && this.c.c.isAbEnable()) {
            Set<String> c = c(str);
            c.removeAll(c(str2));
            i1 i1Var = this.i.y;
            if (i1Var != null) {
                i1Var.onAbVidsChange(a(c), str2);
            }
        }
    }

    public String b() {
        return this.c.c.getAid();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x01d8 A[Catch: all -> 0x01ea, TRY_LEAVE, TryCatch #0 {all -> 0x01ea, blocks: (B:15:0x009e, B:17:0x00b4, B:18:0x00bb, B:20:0x00d5, B:21:0x00dc, B:28:0x0106, B:31:0x0115, B:32:0x0118, B:34:0x015a, B:36:0x0168, B:37:0x0182, B:41:0x018d, B:43:0x0195, B:44:0x019d, B:46:0x01a9, B:48:0x01b1, B:49:0x01b9, B:51:0x01c5, B:54:0x01d2, B:56:0x01d8, B:72:0x00eb, B:74:0x00f8), top: B:14:0x009e, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean a(org.json.JSONObject r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.x1.a(org.json.JSONObject, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public void a(JSONObject jSONObject) {
        v1 v1Var = this.c;
        v1Var.b.D.debug(Collections.singletonList("ConfigManager"), "setAbConfig:{}", jSONObject);
        v1Var.d.putString("ab_configure", jSONObject == null ? "" : jSONObject.toString());
        v1Var.g = null;
        if (!LogUtils.isDisabled()) {
            LogUtils.sendJsonFetcher("set_abconfig", new w1(v1Var, jSONObject));
        }
        d(jSONObject);
    }

    public void a(HashMap<String, Object> hashMap) {
        JSONObject jSONObject;
        if (hashMap == null || hashMap.isEmpty()) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            JSONObject d = d();
            if (d != null) {
                k0.a(jSONObject, d);
            }
            try {
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (Throwable th) {
                this.i.D.error(Collections.singletonList("DeviceManager"), "Set custom header failed", th, new Object[0]);
            }
        }
        c(jSONObject);
    }

    public final boolean a(String str, Object obj) {
        Object opt = this.d.opt(str);
        if (obj == opt || (obj != null && obj.equals(opt))) {
            if (this.a || obj != null || opt != null) {
                return false;
            }
            this.i.D.debug(com.bytedance.bdtracker.a.a("未初始化时都为 null 无法做到赋值的: ", str), new Object[0]);
            return true;
        }
        synchronized (this) {
            try {
                JSONObject jSONObject = this.d;
                JSONObject jSONObject2 = new JSONObject();
                k0.a(jSONObject2, jSONObject);
                jSONObject2.put(str, obj);
                if (!this.a && obj == null) {
                    this.k.add(str);
                }
                b(jSONObject2);
            } catch (JSONException e) {
                this.i.D.error(Collections.singletonList("DeviceManager"), "Update header:{} to value:{} failed", e, str, obj);
            }
        }
        this.i.D.debug(Collections.singletonList("DeviceManager"), "Update header:{} from old:{} to new value:{}", str, opt, obj);
        return true;
    }
}
