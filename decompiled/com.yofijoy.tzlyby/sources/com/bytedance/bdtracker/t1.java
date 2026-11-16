package com.bytedance.bdtracker;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class t1 extends q1 {
    public final v1 e;

    public t1(v1 v1Var) {
        super(true, false);
        this.e = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Cdid";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        String a = o5.a(this.e.f);
        if (TextUtils.isEmpty(a)) {
            return false;
        }
        jSONObject.put("cdid", a);
        return true;
    }
}
