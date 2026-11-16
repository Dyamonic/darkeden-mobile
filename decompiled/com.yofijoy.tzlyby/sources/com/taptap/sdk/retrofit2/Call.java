package com.taptap.sdk.retrofit2;

import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okio.Timeout;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface Call<T> extends Cloneable {
    void cancel();

    /* renamed from: clone */
    Call<T> m30clone();

    void enqueue(Callback<T> callback);

    Response<T> execute() throws IOException;

    boolean isCanceled();

    boolean isExecuted();

    Request request();

    Timeout timeout();
}
