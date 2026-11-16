package com.rich.oauth.callback;

/* loaded from: classes.dex */
public interface LoginListener {
    void onAccesscodeFailureListener(String str, int i);

    void onAccesscodeSuccessListener(String str, int i);

    void onLoginFailureListener(String str, int i);

    void onLoginSuccessListener(String str, int i);

    void onPreLoginFailureListener(String str, int i);

    void onPreLoginSuccessListener(String str, int i);
}
