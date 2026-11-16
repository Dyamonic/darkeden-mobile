package com.taptap.sdk.okhttp3.internal.http;

import com.taptap.sdk.okhttp3.Interceptor;
import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okhttp3.Response;
import com.taptap.sdk.okhttp3.internal.Util;
import com.taptap.sdk.okhttp3.internal.connection.RealConnection;
import com.taptap.sdk.okhttp3.internal.connection.StreamAllocation;
import com.taptap.sdk.okio.Buffer;
import com.taptap.sdk.okio.BufferedSink;
import com.taptap.sdk.okio.ForwardingSink;
import com.taptap.sdk.okio.Okio;
import com.taptap.sdk.okio.Sink;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes2.dex */
public final class CallServerInterceptor implements Interceptor {
    private final boolean forWebSocket;

    public CallServerInterceptor(boolean z) {
        this.forWebSocket = z;
    }

    @Override // com.taptap.sdk.okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response build;
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        HttpCodec httpStream = realInterceptorChain.httpStream();
        StreamAllocation streamAllocation = realInterceptorChain.streamAllocation();
        RealConnection realConnection = (RealConnection) realInterceptorChain.connection();
        Request request = realInterceptorChain.request();
        long currentTimeMillis = System.currentTimeMillis();
        realInterceptorChain.eventListener().requestHeadersStart(realInterceptorChain.call());
        httpStream.writeRequestHeaders(request);
        realInterceptorChain.eventListener().requestHeadersEnd(realInterceptorChain.call(), request);
        Response.Builder builder = null;
        if (HttpMethod.permitsRequestBody(request.method()) && request.body() != null) {
            if (HTTP.EXPECT_CONTINUE.equalsIgnoreCase(request.header("Expect"))) {
                httpStream.flushRequest();
                realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
                builder = httpStream.readResponseHeaders(true);
            }
            if (builder == null) {
                realInterceptorChain.eventListener().requestBodyStart(realInterceptorChain.call());
                CountingSink countingSink = new CountingSink(httpStream.createRequestBody(request, request.body().contentLength()));
                BufferedSink buffer = Okio.buffer(countingSink);
                request.body().writeTo(buffer);
                buffer.close();
                realInterceptorChain.eventListener().requestBodyEnd(realInterceptorChain.call(), countingSink.successfulCount);
            } else if (!realConnection.isMultiplexed()) {
                streamAllocation.noNewStreams();
            }
        }
        httpStream.finishRequest();
        if (builder == null) {
            realInterceptorChain.eventListener().responseHeadersStart(realInterceptorChain.call());
            builder = httpStream.readResponseHeaders(false);
        }
        Response build2 = builder.request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
        int code = build2.code();
        if (code == 100) {
            build2 = httpStream.readResponseHeaders(false).request(request).handshake(streamAllocation.connection().handshake()).sentRequestAtMillis(currentTimeMillis).receivedResponseAtMillis(System.currentTimeMillis()).build();
            code = build2.code();
        }
        realInterceptorChain.eventListener().responseHeadersEnd(realInterceptorChain.call(), build2);
        if (this.forWebSocket && code == 101) {
            build = build2.newBuilder().body(Util.EMPTY_RESPONSE).build();
        } else {
            build = build2.newBuilder().body(httpStream.openResponseBody(build2)).build();
        }
        if ("close".equalsIgnoreCase(build.request().header("Connection")) || "close".equalsIgnoreCase(build.header("Connection"))) {
            streamAllocation.noNewStreams();
        }
        if ((code != 204 && code != 205) || build.body().contentLength() <= 0) {
            return build;
        }
        throw new ProtocolException("HTTP " + code + " had non-zero Content-Length: " + build.body().contentLength());
    }

    /* loaded from: classes2.dex */
    static final class CountingSink extends ForwardingSink {
        long successfulCount;

        CountingSink(Sink sink) {
            super(sink);
        }

        @Override // com.taptap.sdk.okio.ForwardingSink, com.taptap.sdk.okio.Sink
        public void write(Buffer buffer, long j) throws IOException {
            super.write(buffer, j);
            this.successfulCount += j;
        }
    }
}
