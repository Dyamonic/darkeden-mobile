package com.bytedance.applog.event;

import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.a;
import com.bytedance.bdtracker.d;
import com.bytedance.bdtracker.e4;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class EventBuilder {
    public final d a;
    public String b;
    public String c;
    public JSONObject d;

    public EventBuilder(d dVar) {
        this.a = dVar;
    }

    public EventBuilder addParam(String str, Object obj) {
        if (this.d == null) {
            this.d = new JSONObject();
        }
        try {
            this.d.put(str, obj);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return this;
    }

    public e4 build() {
        String str = this.a.m;
        String str2 = this.b;
        JSONObject jSONObject = this.d;
        e4 e4Var = new e4(str, str2, false, jSONObject != null ? jSONObject.toString() : null, 0);
        e4Var.j = this.c;
        this.a.D.debug(4, "EventBuilder build: {}", e4Var);
        return e4Var;
    }

    public EventBuilder setAbSdkVersion(String str) {
        this.c = str;
        return this;
    }

    public EventBuilder setEvent(String str) {
        this.b = str;
        return this;
    }

    public void track() {
        e4 build = build();
        IAppLogLogger iAppLogLogger = this.a.D;
        StringBuilder a = a.a("EventBuilder track: ");
        a.append(this.b);
        iAppLogLogger.debug(4, a.toString(), new Object[0]);
        this.a.receive(build);
    }
}
