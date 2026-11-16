package com.bytedance.bdtracker;

import android.content.Context;
import com.bytedance.applog.store.kv.IKVStore;
import com.taptap.sdk.core.internal.event.constants.TapEventParamConstants;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class e2 extends q1 {
    public final Context e;
    public final v1 f;

    public e2(Context context, v1 v1Var) {
        super(true, false);
        this.e = context;
        this.f = v1Var;
    }

    @Override // com.bytedance.bdtracker.q1
    public String a() {
        return "Oaid";
    }

    @Override // com.bytedance.bdtracker.q1
    public boolean a(JSONObject jSONObject) {
        IKVStore iKVStore = this.f.f;
        if (!r0.k()) {
            return true;
        }
        Map a = o5.a(this.e);
        if (a == null) {
            return false;
        }
        jSONObject.put(TapEventParamConstants.PARAM_SUB_OAID, new JSONObject(a));
        return true;
    }
}
