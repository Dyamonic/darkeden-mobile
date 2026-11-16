package com.yofi.sdk;

/* loaded from: classes2.dex */
public interface OnLoginCallback {
    void onHaveNewMessages();

    void onLoginFailed(int var1);

    void onLoginSuccess(String var1);

    void onLogoutSuccess(String var1);

    void onTapTapMomentMessage(boolean hasMessage);
}
