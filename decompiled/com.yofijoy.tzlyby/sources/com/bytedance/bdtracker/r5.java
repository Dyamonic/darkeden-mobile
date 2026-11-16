package com.bytedance.bdtracker;

import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class r5 {
    public final String a;
    public final String b;
    public final Boolean c;
    public final Long d;
    public final Long e;
    public final Integer f;
    public final Long g;

    public r5(String str, String str2, Boolean bool, Long l, Long l2, Integer num, Long l3) {
        this.a = str;
        this.b = str2;
        this.c = bool;
        this.d = l;
        this.e = l2;
        this.f = num;
        this.g = l3;
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        q5.a(hashMap, BreakpointSQLiteKey.ID, this.a);
        q5.a(hashMap, "req_id", this.b);
        q5.a(hashMap, "is_track_limited", String.valueOf(this.c));
        q5.a(hashMap, "take_ms", String.valueOf(this.d));
        q5.a(hashMap, "time", String.valueOf(this.e));
        q5.a(hashMap, "query_times", String.valueOf(this.f));
        q5.a(hashMap, "hw_id_version_code", String.valueOf(this.g));
        return hashMap;
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        q5.a(jSONObject, BreakpointSQLiteKey.ID, this.a);
        q5.a(jSONObject, "req_id", this.b);
        q5.a(jSONObject, "is_track_limited", this.c);
        q5.a(jSONObject, "take_ms", this.d);
        q5.a(jSONObject, "time", this.e);
        q5.a(jSONObject, "query_times", this.f);
        q5.a(jSONObject, "hw_id_version_code", this.g);
        return jSONObject;
    }

    public String toString() {
        return b().toString();
    }
}
