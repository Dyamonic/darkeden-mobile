package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.store.kv.IKVStore;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class i2 extends q1 {
    public final v1 e;

    public i2(Context context, v1 v1Var, x1 x1Var) {
        super(true, false, false);
        this.e = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "ServerId";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        IKVStore iKVStore = this.e.f;
        String string = iKVStore.getString(TapEventParamConstants.PARAM_DEVICE_ID, null);
        x1.a(jSONObject, TapEventParamConstants.PARAM_DEVICE_ID, string);
        String string2 = iKVStore.getString("bd_did", null);
        x1.a(jSONObject, "bd_did", string2);
        String string3 = iKVStore.getString("install_id", null);
        String string4 = iKVStore.getString(this.e.e(), null);
        x1.a(jSONObject, "install_id", string3);
        x1.a(jSONObject, "ssid", string4);
        long j = 0;
        long j2 = iKVStore.getLong("register_time", 0L);
        if ((k0.a(string3) && ((k0.a(string) || k0.a(string2)) && k0.a(string4))) || j2 == 0) {
            j = j2;
        } else {
            this.e.f.putLong("register_time", 0L);
        }
        jSONObject.put("register_time", j);
        return true;
    }
}
