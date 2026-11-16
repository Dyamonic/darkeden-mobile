package com.rich.oauth.callback;

import org.json.JSONObject;

/* loaded from: classes.dex */
public interface AuthPageInListener {
    void onAuthPageInFailure(JSONObject jSONObject);

    void onAuthPageInSuccess(JSONObject jSONObject);
}
