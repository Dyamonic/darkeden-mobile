package com.bytedance.bdtracker;

import android.os.Build;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.tencent.connect.common.Constants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class r1 extends q1 {
    public final v1 e;
    public final d f;

    public r1(d dVar, v1 v1Var) {
        super(true, false);
        this.f = dVar;
        this.e = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Build";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        jSONObject.put(Constants.PARAM_PLATFORM, "Android");
        jSONObject.put("sdk_lib", "Android");
        jSONObject.put(TapEventParamConstants.PARAM_SUB_DEVICE_MODEL, Build.MODEL);
        jSONObject.put("device_brand", Build.BRAND);
        jSONObject.put("device_manufacturer", Build.MANUFACTURER);
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("sdk_target_version", 29);
        jSONObject.put("git_hash", "0122b9a");
        if (!f5.c.b(new Object[0]).booleanValue() || !this.e.c.isHarmonyEnabled()) {
            jSONObject.put(TapEventParamConstants.PARAM_SUB_OS, "Android");
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("os_version", Build.VERSION.RELEASE);
            return true;
        }
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OS, "Harmony");
        try {
            jSONObject.put("os_api", h5.a("hw_sc.build.os.apiversion"));
            jSONObject.put("os_version", h5.a("hw_sc.build.platform.version"));
            return true;
        } catch (Throwable th) {
            this.f.D.error("loadHarmonyInfo failed", th, new Object[0]);
            return true;
        }
    }
}
