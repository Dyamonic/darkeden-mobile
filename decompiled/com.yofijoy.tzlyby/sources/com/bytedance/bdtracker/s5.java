package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import com.bytedance.applog.store.kv.IKVStore;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class s5 {
    public final IKVStore a;

    public s5(Context context) {
        this.a = o4.a(context, "device_register_oaid_refine");
    }

    public r5 a() {
        String string = this.a.getString(TapEventParamConstants.PARAM_SUB_OAID, "");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(string);
            return new r5(jSONObject.optString(BreakpointSQLiteKey.ID, null), jSONObject.optString("req_id", null), jSONObject.has("is_track_limited") ? Boolean.valueOf(jSONObject.optBoolean("is_track_limited")) : null, jSONObject.has("take_ms") ? Long.valueOf(jSONObject.optLong("take_ms", -1L)) : null, jSONObject.has("time") ? Long.valueOf(jSONObject.optLong("time", -1L)) : null, jSONObject.has("query_times") ? Integer.valueOf(jSONObject.optInt("query_times", -1)) : null, jSONObject.has("hw_id_version_code") ? Long.valueOf(jSONObject.optLong("hw_id_version_code", -1L)) : null);
        } catch (Throwable th) {
            LoggerImpl.global().error(1, "Oaid#Create model failed", th, new Object[0]);
            return null;
        }
    }

    public void a(r5 r5Var) {
        if (r5Var == null) {
            return;
        }
        this.a.putString(TapEventParamConstants.PARAM_SUB_OAID, r5Var.b().toString());
    }
}
