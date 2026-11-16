package com.bun.miitmdid;

import android.content.Context;
import com.bun.miitmdid.interfaces.IIdConfig;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class b implements IIdConfig {
    public a a = new a();

    /* loaded from: classes.dex */
    public class a {
        public y a;

        public a() {
        }
    }

    public static native b a(Context context);

    public static boolean a(b bVar, JSONObject jSONObject) {
        if (jSONObject == null || bVar == null) {
            return false;
        }
        JSONObject optJSONObject = jSONObject.optJSONObject("vivo");
        y yVar = new y();
        if (optJSONObject != null) {
            yVar.a = optJSONObject.optString("appid");
            bVar.a.a = yVar;
        }
        return bVar.a.a != null;
    }

    @Override // com.bun.miitmdid.interfaces.IIdConfig
    public native String getVivoAppID();
}
