package com.juhe.juhesdk.web;

import org.json.JSONObject;

/* loaded from: classes.dex */
public interface WebAPICallback {
    void onFailure(int code, String var1);

    void onSuccess(JSONObject res);
}
