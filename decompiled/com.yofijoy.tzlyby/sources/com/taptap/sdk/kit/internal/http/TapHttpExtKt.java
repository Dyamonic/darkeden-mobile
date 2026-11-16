package com.taptap.sdk.kit.internal.http;

import android.R;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.json.TapJson;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.modules.SerializersModule;

/* compiled from: TapHttpExt.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a>\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005H\u0086@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a8\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00060\u0005ø\u0001\u0000¢\u0006\u0002\u0010\t\u001a\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u000b0\u0003\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u0006\u0012\u0002\b\u00030\fH\u0086\b\u001a\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0003*\u0006\u0012\u0002\b\u00030\f\u001a\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0003*\u0006\u0012\u0002\b\u00030\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"enqueueResult", "Lkotlin/Result;", "T", "Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;", "onSuccess", "Lkotlin/Function1;", "", "(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeResult", "(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "toCall", "DataBean", "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;", "toEventCall", "", "toOpenLogCall", "tap-kit_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TapHttpExtKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <DataBean> TapHttpCall<DataBean> toCall(AbsTapHttpParam<?> absTapHttpParam) {
        Intrinsics.checkNotNullParameter(absTapHttpParam, "<this>");
        Intrinsics.needClassReification();
        return new TapHttpCall<>(absTapHttpParam, new TapHttpParser.SdkDefaultParser(null, new Function1<JsonObject, DataBean>() { // from class: com.taptap.sdk.kit.internal.http.TapHttpExtKt$toCall$1
            @Override // kotlin.jvm.functions.Function1
            public final DataBean invoke(JsonObject jsonObject) {
                TapJson tapJson = TapJson.INSTANCE;
                try {
                    if (jsonObject == null) {
                        return null;
                    }
                    Json json = tapJson.getJson();
                    SerializersModule serializersModule = json.getSerializersModule();
                    Intrinsics.reifiedOperationMarker(6, "DataBean?");
                    KSerializer<Object> serializer = SerializersKt.serializer(serializersModule, (KType) null);
                    Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                    return (DataBean) json.decodeFromJsonElement(serializer, jsonObject);
                } catch (Exception e) {
                    TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                    return null;
                }
            }
        }, 1, 0 == true ? 1 : 0), new TapHttpRetry.SdkDefault(absTapHttpParam.getBackoffHandler()));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T> java.lang.Object enqueueResult(com.taptap.sdk.kit.internal.http.call.TapHttpCall<T> r7, kotlin.jvm.functions.Function1<? super T, kotlin.Unit> r8, kotlin.coroutines.Continuation<? super kotlin.Result<? extends T>> r9) {
        /*
            boolean r0 = r9 instanceof com.taptap.sdk.kit.internal.http.TapHttpExtKt$enqueueResult$1
            if (r0 == 0) goto L14
            r0 = r9
            com.taptap.sdk.kit.internal.http.TapHttpExtKt$enqueueResult$1 r0 = (com.taptap.sdk.kit.internal.http.TapHttpExtKt$enqueueResult$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.taptap.sdk.kit.internal.http.TapHttpExtKt$enqueueResult$1 r0 = new com.taptap.sdk.kit.internal.http.TapHttpExtKt$enqueueResult$1
            r0.<init>(r9)
        L19:
            r4 = r0
            java.lang.Object r9 = r4.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L3e
            if (r1 != r2) goto L36
            java.lang.Object r7 = r4.L$0
            r8 = r7
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r7 = r9.getValue()
            goto L56
        L36:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3e:
            kotlin.ResultKt.throwOnFailure(r9)
            r1 = r7
            com.taptap.sdk.kit.internal.http.call.ITapHttpCall r1 = (com.taptap.sdk.kit.internal.http.call.ITapHttpCall) r1
            r5 = 0
            r7 = 1
            r9 = 0
            r4.L$0 = r8
            r4.label = r2
            r2 = r5
            r5 = r7
            r6 = r9
            java.lang.Object r7 = com.taptap.sdk.kit.internal.http.call.ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(r1, r2, r4, r5, r6)
            if (r7 != r0) goto L56
            return r0
        L56:
            boolean r9 = kotlin.Result.m63isSuccessimpl(r7)
            if (r9 == 0) goto L5f
            r8.invoke(r7)
        L5f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.taptap.sdk.kit.internal.http.TapHttpExtKt.enqueueResult(com.taptap.sdk.kit.internal.http.call.TapHttpCall, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final <T> Object executeResult(TapHttpCall<T> tapHttpCall, Function1<? super T, Unit> onSuccess) {
        Intrinsics.checkNotNullParameter(tapHttpCall, "<this>");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        R.bool boolVar = (Object) ITapHttpCall.DefaultImpls.m18executeResultIoAF18A$default(tapHttpCall, 0L, 1, null);
        if (Result.m63isSuccessimpl(boolVar)) {
            onSuccess.invoke(boolVar);
        }
        return boolVar;
    }

    public static final TapHttpCall<Boolean> toEventCall(AbsTapHttpParam<?> absTapHttpParam) {
        Intrinsics.checkNotNullParameter(absTapHttpParam, "<this>");
        return new TapHttpCall<>(absTapHttpParam, new TapHttpParser.EventParser(), new TapHttpRetry.NoneRetry());
    }

    public static final TapHttpCall<Boolean> toOpenLogCall(AbsTapHttpParam<?> absTapHttpParam) {
        Intrinsics.checkNotNullParameter(absTapHttpParam, "<this>");
        return new TapHttpCall<>(absTapHttpParam, new TapHttpParser.OpenLogParser(), new TapHttpRetry.NoneRetry());
    }
}
