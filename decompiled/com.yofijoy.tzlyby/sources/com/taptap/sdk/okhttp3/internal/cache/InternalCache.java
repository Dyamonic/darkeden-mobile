package com.taptap.sdk.okhttp3.internal.cache;

import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okhttp3.Response;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface InternalCache {
    Response get(Request request) throws IOException;

    CacheRequest put(Response response) throws IOException;

    void remove(Request request) throws IOException;

    void trackConditionalCacheHit();

    void trackResponse(CacheStrategy cacheStrategy);

    void update(Response response, Response response2);
}
