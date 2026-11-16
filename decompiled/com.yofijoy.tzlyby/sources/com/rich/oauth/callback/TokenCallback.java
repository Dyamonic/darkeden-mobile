package com.rich.oauth.callback;

/* loaded from: classes.dex */
public interface TokenCallback {
    void onTokenFailureResult(String str);

    void onTokenSuccessResult(String str, String str2);
}
