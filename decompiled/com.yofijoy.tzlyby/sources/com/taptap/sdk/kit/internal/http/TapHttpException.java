package com.taptap.sdk.kit.internal.http;

import com.taptap.sdk.kit.internal.bean.TapHttpResponse;
import com.taptap.sdk.kit.internal.bean.TapHttpResponseError;
import com.taptap.sdk.kit.internal.exception.TapTapException;
import com.taptap.sdk.login.internal.handlers.web.WebLoginFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapHttpException.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0007"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapHttpException;", "", "()V", "NoServerError", "ParseDataError", "ServerError", "UnknownError", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpException {

    /* compiled from: TapHttpException.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;", "Lcom/taptap/sdk/kit/internal/exception/TapTapException;", "httpCode", "", "response", "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;", WebLoginFragment.QUERY_KEY_ERROR, "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;", "(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;)V", "getError", "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;", "getHttpCode", "()I", "getResponse", "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ServerError extends TapTapException {
        private final TapHttpResponseError error;
        private final int httpCode;
        private final TapHttpResponse<?> response;

        public final int getHttpCode() {
            return this.httpCode;
        }

        public final TapHttpResponse<?> getResponse() {
            return this.response;
        }

        public final TapHttpResponseError getError() {
            return this.error;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ServerError(int i, TapHttpResponse<?> response, TapHttpResponseError error) {
            super("ServerError(" + error.getMsg() + ')');
            Intrinsics.checkNotNullParameter(response, "response");
            Intrinsics.checkNotNullParameter(error, "error");
            this.httpCode = i;
            this.response = response;
            this.error = error;
        }
    }

    /* compiled from: TapHttpException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;", "Lcom/taptap/sdk/kit/internal/exception/TapTapException;", "httpCode", "", "httpBody", "", "(ILjava/lang/String;)V", "getHttpBody", "()Ljava/lang/String;", "getHttpCode", "()I", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class NoServerError extends TapTapException {
        private final String httpBody;
        private final int httpCode;

        public final String getHttpBody() {
            return this.httpBody;
        }

        public final int getHttpCode() {
            return this.httpCode;
        }

        public NoServerError(int i, String str) {
            super("NoServerError(code:" + i + ", body:" + str + ')');
            this.httpCode = i;
            this.httpBody = str;
        }
    }

    /* compiled from: TapHttpException.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0015\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;", "Lcom/taptap/sdk/kit/internal/exception/TapTapException;", "httpCode", "", "response", "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;", "(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)V", "getHttpCode", "()I", "getResponse", "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ParseDataError extends TapTapException {
        private final int httpCode;
        private final TapHttpResponse<?> response;

        public final int getHttpCode() {
            return this.httpCode;
        }

        public final TapHttpResponse<?> getResponse() {
            return this.response;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseDataError(int r7, com.taptap.sdk.kit.internal.bean.TapHttpResponse<?> r8) {
            /*
                r6 = this;
                java.lang.String r0 = "response"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "ParseDataError("
                r0.append(r1)
                com.taptap.sdk.kit.internal.json.TapJson r1 = com.taptap.sdk.kit.internal.json.TapJson.INSTANCE
                r2 = 0
                kotlinx.serialization.json.Json r1 = r1.getJson()     // Catch: java.lang.Exception -> L38
                kotlinx.serialization.StringFormat r1 = (kotlinx.serialization.StringFormat) r1     // Catch: java.lang.Exception -> L38
                kotlinx.serialization.modules.SerializersModule r3 = r1.getSerializersModule()     // Catch: java.lang.Exception -> L38
                java.lang.Class<com.taptap.sdk.kit.internal.bean.TapHttpResponse> r4 = com.taptap.sdk.kit.internal.bean.TapHttpResponse.class
                kotlin.reflect.KTypeProjection$Companion r5 = kotlin.reflect.KTypeProjection.INSTANCE     // Catch: java.lang.Exception -> L38
                kotlin.reflect.KTypeProjection r5 = r5.getSTAR()     // Catch: java.lang.Exception -> L38
                kotlin.reflect.KType r4 = kotlin.jvm.internal.Reflection.typeOf(r4, r5)     // Catch: java.lang.Exception -> L38
                kotlinx.serialization.KSerializer r3 = kotlinx.serialization.SerializersKt.serializer(r3, r4)     // Catch: java.lang.Exception -> L38
                java.lang.String r4 = "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)     // Catch: java.lang.Exception -> L38
                kotlinx.serialization.SerializationStrategy r3 = (kotlinx.serialization.SerializationStrategy) r3     // Catch: java.lang.Exception -> L38
                java.lang.String r2 = r1.encodeToString(r3, r8)     // Catch: java.lang.Exception -> L38
                goto L41
            L38:
                r1 = move-exception
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                r3 = 2
                java.lang.String r4 = "TapJson"
                com.taptap.sdk.kit.internal.TapLogger.loge$default(r4, r2, r1, r3, r2)
            L41:
                r0.append(r2)
                r1 = 41
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r6.<init>(r0)
                r6.httpCode = r7
                r6.response = r8
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.http.TapHttpException.ParseDataError.<init>(int, com.taptap.sdk.kit.internal.bean.TapHttpResponse):void");
        }
    }

    /* compiled from: TapHttpException.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;", "Lcom/taptap/sdk/kit/internal/exception/TapTapException;", "()V", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class UnknownError extends TapTapException {
        public UnknownError() {
            super("TapHttpException.UnknownError");
        }
    }
}
