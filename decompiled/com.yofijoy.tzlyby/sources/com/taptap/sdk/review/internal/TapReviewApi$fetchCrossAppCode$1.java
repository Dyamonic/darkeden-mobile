package com.taptap.sdk.review.internal;

import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.call.ITapHttpCall;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.ITapHttpResponseHandler;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpBackoff;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpJsonParam;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.review.ReviewCrossAppCodeCallback;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapReviewApi.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.review.internal.TapReviewApi$fetchCrossAppCode$1", f = "TapReviewApi.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class TapReviewApi$fetchCrossAppCode$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ ReviewCrossAppCodeCallback $callback;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapReviewApi$fetchCrossAppCode$1(ReviewCrossAppCodeCallback reviewCrossAppCodeCallback, Continuation<? super TapReviewApi$fetchCrossAppCode$1> continuation) {
        super(2, continuation);
        this.$callback = reviewCrossAppCodeCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TapReviewApi$fetchCrossAppCode$1(this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TapReviewApi$fetchCrossAppCode$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TapHttp reviewHttp;
        Object m16enqueueResultgIAlus$default;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        ITapHttpResponseHandler iTapHttpResponseHandler = null;
        Object[] objArr = 0;
        int i2 = 1;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            reviewHttp = TapReviewApiKt.getReviewHttp();
            AbsTapHttpParam<TapHttpJsonParam> retryBackoff = reviewHttp.postJson("/sdk-core/v1/cross-app-code").retryBackoff(new TapHttpBackoff.Exponential());
            this.label = 1;
            m16enqueueResultgIAlus$default = ITapHttpCall.DefaultImpls.m16enqueueResultgIAlus$default(new TapHttpCall(retryBackoff, new TapHttpParser.SdkDefaultParser(iTapHttpResponseHandler, new Function1<JsonObject, TapCrossAppCode>() { // from class: com.taptap.sdk.review.internal.TapReviewApi$fetchCrossAppCode$1$invokeSuspend$$inlined$toCall$1
                /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.taptap.sdk.review.internal.TapCrossAppCode] */
                @Override // kotlin.jvm.functions.Function1
                public final TapCrossAppCode invoke(JsonObject jsonObject) {
                    TapJson tapJson = TapJson.INSTANCE;
                    try {
                        if (jsonObject == null) {
                            return null;
                        }
                        Json json = tapJson.getJson();
                        KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.nullableTypeOf(TapCrossAppCode.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        return json.decodeFromJsonElement(serializer, jsonObject);
                    } catch (Exception e) {
                        TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                        return null;
                    }
                }
            }, i2, objArr == true ? 1 : 0), new TapHttpRetry.SdkDefault(retryBackoff.getBackoffHandler())), 0L, this, 1, null);
            if (m16enqueueResultgIAlus$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            m16enqueueResultgIAlus$default = ((Result) obj).getValue();
        }
        ReviewCrossAppCodeCallback reviewCrossAppCodeCallback = this.$callback;
        if (Result.m63isSuccessimpl(m16enqueueResultgIAlus$default)) {
            TapCrossAppCode tapCrossAppCode = (TapCrossAppCode) m16enqueueResultgIAlus$default;
            TapReviewLoggerKt.logInfo("fetchCrossAppCode success: code=" + tapCrossAppCode.getCode());
            if (reviewCrossAppCodeCallback != null) {
                reviewCrossAppCodeCallback.onCodeResult(tapCrossAppCode.getCode());
            }
        }
        ReviewCrossAppCodeCallback reviewCrossAppCodeCallback2 = this.$callback;
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(m16enqueueResultgIAlus$default);
        if (m59exceptionOrNullimpl != null) {
            TapReviewLoggerKt.logError("fetchCrossAppCode fail", m59exceptionOrNullimpl);
            if (reviewCrossAppCodeCallback2 != null) {
                reviewCrossAppCodeCallback2.onCodeResult(null);
            }
        }
        return Unit.INSTANCE;
    }
}
