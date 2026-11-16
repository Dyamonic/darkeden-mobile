package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.ISensitiveInfoProvider;
import com.bytedance.applog.store.kv.IKVStore;
import com.bytedance.applog.util.SensitiveUtils;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class h2 extends q1 {
    public final ISensitiveInfoProvider e;
    public final Context f;
    public final v1 g;
    public final x1 h;

    public h2(Context context, v1 v1Var, x1 x1Var, ISensitiveInfoProvider iSensitiveInfoProvider) {
        super(true, false);
        this.e = iSensitiveInfoProvider;
        this.f = context;
        this.g = v1Var;
        this.h = x1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "SensitiveLoader";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        String[] e;
        x1.a(jSONObject, SensitiveUtils.KEY_ALIYUN_UUID, this.g.c.getAliyunUdid());
        v1 v1Var = this.g;
        if (v1Var.c.isMacEnable() && !v1Var.a("mac")) {
            String macAddress = SensitiveUtils.getMacAddress(this.e, this.f);
            IKVStore iKVStore = this.g.f;
            String string = iKVStore.getString(SensitiveUtils.KEY_MAC, null);
            if (!TextUtils.isEmpty(macAddress)) {
                if (!TextUtils.equals(string, macAddress)) {
                    iKVStore.putString(SensitiveUtils.KEY_MAC, macAddress);
                }
                jSONObject.put(SensitiveUtils.KEY_MC, macAddress);
            } else if (!TextUtils.isEmpty(string)) {
                jSONObject.put(SensitiveUtils.KEY_MC, string);
            }
        }
        x1.a(jSONObject, "udid", this.h.h.f());
        JSONArray g = this.h.h.g();
        if (SensitiveUtils.validMultiImei(g)) {
            jSONObject.put("udid_list", g);
        }
        if (this.g.c.isSerialNumberEnable()) {
            jSONObject.put(SensitiveUtils.KEY_BUILD_SERIAL, SensitiveUtils.getSerialNumber(this.f));
            x1.a(jSONObject, "serial_number", this.h.h.d());
        }
        v1 v1Var2 = this.g;
        if ((v1Var2.c.isIccIdEnabled() && !v1Var2.a("ICCID")) && this.h.r() && (e = this.h.h.e()) != null) {
            JSONArray jSONArray = new JSONArray();
            for (String str : e) {
                jSONArray.put(new JSONObject().put("sim_serial_number", str));
            }
            jSONObject.put("sim_serial_number", jSONArray);
        }
        return true;
    }
}
