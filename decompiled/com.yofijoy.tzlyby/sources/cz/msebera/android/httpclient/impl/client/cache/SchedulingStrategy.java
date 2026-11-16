package cz.msebera.android.httpclient.impl.client.cache;

import java.io.Closeable;

/* loaded from: classes3.dex */
public interface SchedulingStrategy extends Closeable {
    void schedule(AsynchronousValidationRequest asynchronousValidationRequest);
}
