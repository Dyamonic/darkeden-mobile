package com.bytedance.bdtracker;

import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class o extends p {
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public boolean h;
    public boolean i;
    public String j;
    public String k;
    public String l;
    public String m;
    public String n;
    public String o;
    public String p;
    public String q;
    public String r;
    public String s;
    public String t;

    @Override // com.bytedance.bdtracker.p
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("aid", this.b);
        jSONObject.put(TapEventParamConstants.PARAM_DEVICE_ID, this.c);
        jSONObject.put("bd_did", this.d);
        jSONObject.put("install_id", this.e);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OS, this.f);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_CAID, this.g);
        jSONObject.put("androidid", this.l);
        jSONObject.put("imei", this.m);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, this.n);
        jSONObject.put("google_aid", this.o);
        jSONObject.put("ip", this.p);
        jSONObject.put("ua", this.q);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_DEVICE_MODEL, this.r);
        jSONObject.put("os_version", this.s);
        jSONObject.put("is_new_user", this.h);
        jSONObject.put("exist_app_cache", this.i);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_APP_VERSION, this.j);
        jSONObject.put(TapEventParamConstants.PARAM_SUB_CHANNEL, this.k);
        jSONObject.put("package", this.t);
        return jSONObject;
    }

    @Override // com.bytedance.bdtracker.p
    public void a(JSONObject jSONObject) {
    }
}
