package com.bytedance.bdtracker;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class k2 extends q1 {
    public final Context e;

    public k2(Context context) {
        super(true, false);
        this.e = context;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "SimCountry";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        TelephonyManager telephonyManager = (TelephonyManager) this.e.getSystemService("phone");
        if (telephonyManager == null) {
            return true;
        }
        x1.a(jSONObject, "sim_region", telephonyManager.getSimCountryIso());
        return true;
    }
}
