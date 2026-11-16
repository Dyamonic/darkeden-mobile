package com.bytedance.bdtracker;

import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d2 extends q1 {
    public final Context e;

    public d2(Context context) {
        super(true, true);
        this.e = context;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Net";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        x1.a(jSONObject, "access", z4.a(this.e, true));
        return true;
    }
}
