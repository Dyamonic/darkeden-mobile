package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.util.HardwareUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class y1 extends q1 {
    public final Context e;
    public final x1 f;
    public final v1 g;

    public y1(Context context, v1 v1Var, x1 x1Var) {
        super(false, false);
        this.e = context;
        this.f = x1Var;
        this.g = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "DeviceParams";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        v1 v1Var = this.g;
        if (v1Var.c.isOperatorInfoEnabled() && !v1Var.a("carrier")) {
            String operatorName = HardwareUtils.getOperatorName(this.e);
            if (k0.d(operatorName)) {
                x1.a(jSONObject, "carrier", operatorName);
            }
            String operatorMccMnc = HardwareUtils.getOperatorMccMnc(this.e);
            if (k0.d(operatorMccMnc)) {
                x1.a(jSONObject, "mcc_mnc", operatorMccMnc);
            }
        }
        x1.a(jSONObject, "clientudid", this.f.h.a());
        x1.a(jSONObject, "openudid", this.f.h.c());
        return true;
    }
}
