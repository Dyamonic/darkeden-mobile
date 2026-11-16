package com.taptap.sdk.okhttp3;

import com.taptap.sdk.okio.ByteString;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public interface WebSocket {

    /* loaded from: classes.dex */
    public interface Factory {
        WebSocket newWebSocket(Request request, WebSocketListener webSocketListener);
    }

    void cancel();

    boolean close(int i, @Nullable String str);

    long queueSize();

    Request request();

    boolean send(ByteString byteString);

    boolean send(String str);
}
