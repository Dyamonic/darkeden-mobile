package com.rich.oauth.callback;

/* loaded from: classes.dex */
public interface ModelCallback {
    void onFailureResult(String str, int i);

    void onGetAccessCodeFailureResult(String str, int i);

    void onGetAccessCodeSuccessResult(String str, int i);

    void onPreLoginFailuresResult(String str, int i);

    void onPreLoginSuccessResult(String str, int i);

    void onSuccessResult(String str, int i);
}
