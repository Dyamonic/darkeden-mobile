package com.bytedance.applog.convert;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface IIdProvider {
    void getIdAndSetIntoJson(JSONObject jSONObject, Context context) throws JSONException;
}
