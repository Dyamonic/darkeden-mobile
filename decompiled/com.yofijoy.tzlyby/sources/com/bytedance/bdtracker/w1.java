package com.bytedance.bdtracker;

import com.bytedance.applog.log.EventBus;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class w1 implements EventBus.DataFetcher {
    public final /* synthetic */ JSONObject a;
    public final /* synthetic */ v1 b;

    public w1(v1 v1Var, JSONObject jSONObject) {
        this.b = v1Var;
        this.a = jSONObject;
    }

    @Override // com.bytedance.applog.log.EventBus.DataFetcher
    public Object fetch() {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        k0.c(this.a, jSONObject2);
        try {
            jSONObject.put("appId", this.b.b.m);
            jSONObject.put("config", jSONObject2);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }
}
