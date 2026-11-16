package com.taptap.sdk.okhttp3.internal.cache;

import com.taptap.sdk.okio.Sink;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    Sink body() throws IOException;
}
