package com.bytedance.bdtracker;

import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class l extends p {
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public Integer p;
    public String q;
    public String r;
    public String s;
    public String t;
    public String u;
    public String v;

    @Override // com.bytedance.bdtracker.p
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("token", this.o);
        jSONObject.put("aid", this.b);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OS, this.l);
        jSONObject.put("bd_did", this.c);
        jSONObject.put("ssid", this.d);
        jSONObject.put("user_unique_id", this.e);
        jSONObject.put("androidid", this.h);
        jSONObject.put("imei", this.i);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, this.j);
        jSONObject.put("os_version", this.m);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_DEVICE_MODEL, this.n);
        jSONObject.put("google_aid", this.k);
        jSONObject.put("click_time", this.p);
        jSONObject.put("tr_shareuser", this.q);
        jSONObject.put("tr_admaster", this.r);
        jSONObject.put("tr_param1", this.s);
        jSONObject.put("tr_param2", this.t);
        jSONObject.put("tr_param3", this.u);
        jSONObject.put("tr_param4", this.v);
        jSONObject.put("ab_version", this.f);
        jSONObject.put("tr_web_ssid", this.g);
        return jSONObject;
    }

    public final void a(String str) {
        this.b = str;
    }

    @Override // com.bytedance.bdtracker.p
    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.o = jSONObject.optString("tr_token", null);
            this.b = jSONObject.optString("aid", null);
            this.l = jSONObject.optString(TapEventParamConstants.PARAM_SUB_OS, null);
            this.c = jSONObject.optString("bd_did", null);
            this.d = jSONObject.optString("ssid", null);
            this.e = jSONObject.optString("user_unique_id", null);
            this.h = jSONObject.optString("androidid", null);
            this.i = jSONObject.optString("imei", null);
            this.j = jSONObject.optString(TapEventParamConstants.PARAM_SUB_OAID, null);
            this.m = jSONObject.optString("os_version", null);
            this.n = jSONObject.optString(TapEventParamConstants.PARAM_SUB_DEVICE_MODEL, null);
            this.k = jSONObject.optString("google_aid", null);
            this.p = Integer.valueOf(jSONObject.optInt("click_time"));
            this.q = jSONObject.optString("tr_shareuser", null);
            this.r = jSONObject.optString("tr_admaster", null);
            this.s = jSONObject.optString("tr_param1", null);
            this.t = jSONObject.optString("tr_param2", null);
            this.u = jSONObject.optString("tr_param3", null);
            this.v = jSONObject.optString("tr_param4", null);
            this.f = jSONObject.optString("ab_version", null);
            this.g = jSONObject.optString("tr_web_ssid", null);
        }
    }

    public final void b(String str) {
        this.c = str;
    }

    public final String c() {
        return this.f;
    }

    public final void c(String str) {
        this.d = str;
    }

    public final String d() {
        return this.o;
    }

    public final void d(String str) {
        this.e = str;
    }

    public final String e() {
        return this.g;
    }
}
