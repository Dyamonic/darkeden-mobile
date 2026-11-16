package com.rich.oauth.callback;

import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes.dex */
public interface AuthLoginClickListener {
    void onLoginClickComplete(Context context, JSONObject jSONObject);

    void onLoginClickStart(Context context, JSONObject jSONObject);
}
