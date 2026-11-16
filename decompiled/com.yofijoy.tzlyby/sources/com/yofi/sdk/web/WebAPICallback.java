package com.yofi.sdk.web;

import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface WebAPICallback {
    void onFailure(int code, String var1);

    void onSuccess(JSONObject res);
}
