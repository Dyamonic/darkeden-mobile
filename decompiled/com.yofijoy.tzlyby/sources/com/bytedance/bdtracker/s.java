package com.bytedance.bdtracker;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.bdtracker.b;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class s implements b.f {
    public final /* synthetic */ h4 a;

    public s(h4 h4Var) {
        this.a = h4Var;
    }

    @Override // com.bytedance.bdtracker.b.f
    public x3 a() {
        h4 h4Var = (h4) this.a.m9clone();
        JSONObject optJSONObject = h4Var.h().optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
        if (optJSONObject == null) {
            optJSONObject = new JSONObject();
        }
        try {
            optJSONObject.put("$page_duration", h4Var.s);
        } catch (Throwable th) {
            LoggerImpl.global().error("[Navigator] JSON handle failed", th, new Object[0]);
        }
        e4 e4Var = new e4("$bav2b_page_leave");
        e4Var.a(0L);
        e4Var.o = optJSONObject;
        return e4Var;
    }
}
