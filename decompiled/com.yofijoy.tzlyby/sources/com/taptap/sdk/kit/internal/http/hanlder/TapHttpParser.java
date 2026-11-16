package com.taptap.sdk.kit.internal.http.hanlder;

import com.taptap.sdk.okhttp3.Response;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonObject;

/* compiled from: TapHttpParser.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0006"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser;", "", "()V", "EventParser", "OpenLogParser", "SdkDefaultParser", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpParser {

    /* compiled from: TapHttpParser.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B/\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006¢\u0006\u0002\u0010\bJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u000f\u0010\u0010R!\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;", "DataBean", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;", "responseHandler", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;", "parserResponse", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonObject;", "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;)V", "getParserResponse", "()Lkotlin/jvm/functions/Function1;", "parse", "Lkotlin/Result;", "response", "Lcom/taptap/sdk/okhttp3/Response;", "parse-IoAF18A", "(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SdkDefaultParser<DataBean> implements ITapHttpParser<DataBean> {
        private final Function1<JsonObject, DataBean> parserResponse;
        private final ITapHttpResponseHandler<DataBean> responseHandler;

        /* JADX WARN: Multi-variable type inference failed */
        public SdkDefaultParser(ITapHttpResponseHandler<DataBean> iTapHttpResponseHandler, Function1<? super JsonObject, ? extends DataBean> parserResponse) {
            Intrinsics.checkNotNullParameter(parserResponse, "parserResponse");
            this.responseHandler = iTapHttpResponseHandler;
            this.parserResponse = parserResponse;
        }

        public /* synthetic */ SdkDefaultParser(ITapHttpResponseHandler iTapHttpResponseHandler, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : iTapHttpResponseHandler, function1);
        }

        public final Function1<JsonObject, DataBean> getParserResponse() {
            return this.parserResponse;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x007c  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0074  */
        @Override // com.taptap.sdk.kit.internal.http.hanlder.ITapHttpParser
        /* renamed from: parse-IoAF18A */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object mo19parseIoAF18A(com.taptap.sdk.okhttp3.Response r13) {
            /*
                Method dump skipped, instructions count: 518
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser.SdkDefaultParser.mo19parseIoAF18A(com.taptap.sdk.okhttp3.Response):java.lang.Object");
        }
    }

    /* compiled from: TapHttpParser.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$EventParser;", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;", "", "()V", "parse", "Lkotlin/Result;", "response", "Lcom/taptap/sdk/okhttp3/Response;", "parse-IoAF18A", "(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class EventParser implements ITapHttpParser<Boolean> {
        @Override // com.taptap.sdk.kit.internal.http.hanlder.ITapHttpParser
        /* renamed from: parse-IoAF18A */
        public Object mo19parseIoAF18A(Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            if (response.isSuccessful() || response.code() == 400) {
                Result.Companion companion = Result.INSTANCE;
                return Result.m56constructorimpl(true);
            }
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m56constructorimpl(false);
        }
    }

    /* compiled from: TapHttpParser.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J&\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$OpenLogParser;", "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;", "", "()V", "parse", "Lkotlin/Result;", "response", "Lcom/taptap/sdk/okhttp3/Response;", "parse-IoAF18A", "(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;", "tap-kit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class OpenLogParser implements ITapHttpParser<Boolean> {
        @Override // com.taptap.sdk.kit.internal.http.hanlder.ITapHttpParser
        /* renamed from: parse-IoAF18A */
        public Object mo19parseIoAF18A(Response response) {
            Intrinsics.checkNotNullParameter(response, "response");
            if (!response.isSuccessful()) {
                int code = response.code();
                if (!(400 <= code && code < 499)) {
                    Result.Companion companion = Result.INSTANCE;
                    return Result.m56constructorimpl(false);
                }
            }
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m56constructorimpl(true);
        }
    }
}
