package com.juhe.juhesdk.sdk;

/* loaded from: classes.dex */
public interface OnLoginCallback {
    void onHaveNewMessages();

    void onLoginFailed(int var1, String msg);

    void onLoginSuccess(String var1);

    void onLogoutSuccess(String var1);
}
