package com.taptap.sdk.kit.internal.http;

import android.util.Log;
import com.loopj.android.http.AsyncHttpClient;
import com.qq.gdt.action.ActionUtils;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.okhttp3.Headers;
import com.taptap.sdk.okhttp3.Interceptor;
import com.taptap.sdk.okhttp3.MediaType;
import com.taptap.sdk.okhttp3.Request;
import com.taptap.sdk.okhttp3.RequestBody;
import com.taptap.sdk.okhttp3.Response;
import com.taptap.sdk.okhttp3.ResponseBody;
import com.taptap.sdk.okhttp3.internal.http.HttpHeaders;
import com.taptap.sdk.okio.Buffer;
import com.taptap.sdk.okio.BufferedSource;
import com.taptap.sdk.okio.GzipSource;
import cz.msebera.android.httpclient.message.TokenParser;
import cz.msebera.android.httpclient.protocol.HTTP;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.text.StringsKt;

/* compiled from: TapLogInterceptor.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000  2\u00020\u0001:\u0003 !\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001c\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u00060\u0019j\u0002`\u001aH\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor;", "Lcom/taptap/sdk/okhttp3/Interceptor;", "enableLog", "", ActionUtils.LEVEL, "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;", "(ZLcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;)V", "bodyHasUnknownEncoding", "headers", "Lcom/taptap/sdk/okhttp3/Headers;", "intercept", "Lcom/taptap/sdk/okhttp3/Response;", "chain", "Lcom/taptap/sdk/okhttp3/Interceptor$Chain;", "isPlaintext", "buffer", "Lcom/taptap/sdk/okio/Buffer;", "log", "", "message", "", "logException", "request", "Lcom/taptap/sdk/okhttp3/Request;", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "logRequest", "logResponse", "startTime", "Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;", "response", "Companion", "Level", "LogTime", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapLogInterceptor implements Interceptor {
    private static final Charset UTF8 = Charset.forName("UTF-8");
    private final boolean enableLog;
    private final Level level;

    /* compiled from: TapLogInterceptor.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$Level;", "", "(Ljava/lang/String;I)V", "BASIC", "HEADERS", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum Level {
        BASIC,
        HEADERS
    }

    public TapLogInterceptor(boolean z, Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.enableLog = z;
        this.level = level;
    }

    /* compiled from: TapLogInterceptor.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapLogInterceptor$LogTime;", "", "()V", "startNs", "", "tookMs", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class LogTime {
        private final long startNs = System.nanoTime();

        public final long tookMs() {
            return TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - this.startNs);
        }
    }

    @Override // com.taptap.sdk.okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Object m56constructorimpl;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        try {
            Result.Companion companion = Result.INSTANCE;
            Intrinsics.checkNotNullExpressionValue(request, "request");
            logRequest(request);
            Result.m56constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m56constructorimpl(ResultKt.createFailure(th));
        }
        LogTime logTime = new LogTime();
        try {
            Response proceed = chain.proceed(request);
            Intrinsics.checkNotNullExpressionValue(proceed, "chain.proceed(request)");
            try {
                Result.Companion companion3 = Result.INSTANCE;
                logResponse(logTime, proceed);
                m56constructorimpl = Result.m56constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                m56constructorimpl = Result.m56constructorimpl(ResultKt.createFailure(th2));
            }
            Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(m56constructorimpl);
            if (m59exceptionOrNullimpl != null) {
                TapLogger.logd("TapHttp", "logResponse error: " + m59exceptionOrNullimpl, m59exceptionOrNullimpl);
            }
            return proceed;
        } catch (Exception e) {
            Intrinsics.checkNotNullExpressionValue(request, "request");
            logException(request, e);
            throw e;
        }
    }

    private final void logException(Request request, Exception e) {
        StringBuilder sb = new StringBuilder("<------ HTTP FAILED: ");
        sb.append(request.method() + TokenParser.SP);
        sb.append(request.url());
        StringBuilder sb2 = new StringBuilder();
        sb2.append('\n');
        sb2.append(e);
        sb.append(sb2.toString());
        String sb3 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "builder.toString()");
        log(sb3);
    }

    private final void logRequest(Request request) {
        StringBuilder sb = new StringBuilder("------> ");
        sb.append(request.method() + TokenParser.SP);
        sb.append(request.url());
        RequestBody body = request.body();
        boolean z = body != null;
        if (z) {
            sb.append(" (");
            sb.append(body != null ? Long.valueOf(body.contentLength()) : null);
            sb.append("-byte body)");
        }
        if (this.level == Level.BASIC) {
            if (z) {
                if ((body != null ? body.contentType() : null) != null) {
                    sb.append("\n");
                    sb.append("Content-Type: ");
                    sb.append(body.contentType());
                }
                if (!(body != null && body.contentLength() == -1)) {
                    sb.append("\n");
                    sb.append("Content-Length: ");
                    sb.append(body != null ? Long.valueOf(body.contentLength()) : null);
                }
            }
            Headers headers = request.headers();
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                if (!StringsKt.equals("Content-Type", name, true) && !StringsKt.equals("Content-Length", name, true)) {
                    sb.append("\n");
                    sb.append(name);
                    sb.append(": ");
                    sb.append(headers.value(i));
                }
            }
            if (z) {
                Intrinsics.checkNotNullExpressionValue(headers, "headers");
                if (bodyHasUnknownEncoding(headers)) {
                    sb.append("\n------> END " + request.method() + " (encoded body omitted)");
                } else {
                    Buffer buffer = new Buffer();
                    Intrinsics.checkNotNull(body);
                    body.writeTo(buffer);
                    Charset charset = UTF8;
                    MediaType contentType = body.contentType();
                    if (contentType != null) {
                        charset = contentType.charset(charset);
                    }
                    if (isPlaintext(buffer)) {
                        sb.append("\n");
                        sb.append(buffer.readString(charset));
                        sb.append("\n------> END " + request.method() + " (" + body.contentLength() + "-byte body)");
                    } else {
                        sb.append("\n------> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                    }
                }
            } else {
                sb.append("\n------> END " + request.method());
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        log(sb2);
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || StringsKt.equals(str, HTTP.IDENTITY_CODING, true) || StringsKt.equals(str, AsyncHttpClient.ENCODING_GZIP, true)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v18, types: [java.lang.Long] */
    private final void logResponse(LogTime startTime, Response response) {
        ResponseBody body = response.body();
        Request request = response.request();
        long j = startTime.tookMs();
        long contentLength = body != null ? body.contentLength() : -1L;
        Headers headers = response.headers();
        StringBuilder sb = new StringBuilder("<------ " + response.code() + TokenParser.SP + request.url() + " (" + j + "ms)");
        if (this.level == Level.BASIC) {
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                String name = headers.name(i);
                sb.append("\n");
                sb.append(name);
                sb.append(": ");
                sb.append(headers.value(i));
            }
        }
        if (this.level == Level.BASIC) {
            if (HttpHeaders.hasBody(response) && body != null) {
                Headers headers2 = response.headers();
                Intrinsics.checkNotNullExpressionValue(headers2, "response.headers()");
                if (bodyHasUnknownEncoding(headers2)) {
                    sb.append("\n<------ END HTTP (encoded body omitted)");
                } else {
                    BufferedSource source = body.source();
                    source.request(LongCompanionObject.MAX_VALUE);
                    Buffer buffer = source.buffer();
                    GzipSource gzipSource = null;
                    if (StringsKt.equals(AsyncHttpClient.ENCODING_GZIP, headers.get("Content-Encoding"), true)) {
                        ?? valueOf = Long.valueOf(buffer.size());
                        try {
                            GzipSource gzipSource2 = new GzipSource(buffer.m28clone());
                            try {
                                buffer = new Buffer();
                                buffer.writeAll(gzipSource2);
                                gzipSource2.close();
                                gzipSource = valueOf;
                            } catch (Throwable th) {
                                th = th;
                                gzipSource = gzipSource2;
                                if (gzipSource != null) {
                                    gzipSource.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    Charset charset = UTF8;
                    MediaType contentType = body.contentType();
                    if (contentType != null) {
                        charset = contentType.charset(charset);
                    }
                    Intrinsics.checkNotNullExpressionValue(buffer, "buffer");
                    if (!isPlaintext(buffer)) {
                        sb.append("\n<------ END HTTP (binary " + buffer.size() + "-byte body omitted)");
                    }
                    if (contentLength != 0) {
                        sb.append("\n");
                        sb.append(buffer.m28clone().readString(charset));
                    }
                    if (gzipSource != null) {
                        sb.append("\n<------ END HTTP (" + buffer.size() + "-byte, " + gzipSource + "-gzipped-byte body)");
                    } else {
                        sb.append("\n<------ END HTTP (" + buffer.size() + "-byte body)");
                    }
                }
            } else {
                sb.append("\n<------ END HTTP");
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "builder.toString()");
        log(sb2);
    }

    private final boolean isPlaintext(Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, buffer.size() < 64 ? buffer.size() : 64L);
            for (int i = 0; i < 16; i++) {
                if (buffer2.exhausted()) {
                    return true;
                }
                int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private final void log(String message) {
        if (this.enableLog) {
            Log.d("TapHttp", message);
        }
    }
}
