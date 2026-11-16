package com.juhe.juhesdk.middle.common;

import okhttp3.Request;
import okhttp3.Response;

/* loaded from: classes.dex */
public interface MyCallBack {
    void onError(Response response);

    void onFailure(Request request, Exception e);

    void onLoadingBefore(Request request);

    void onSuccess(String response);
}
