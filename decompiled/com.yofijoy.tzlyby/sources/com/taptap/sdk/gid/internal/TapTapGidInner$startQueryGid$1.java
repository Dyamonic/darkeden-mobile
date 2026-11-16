package com.taptap.sdk.gid.internal;

import com.taptap.sdk.gid.internal.bean.TapGid;
import com.taptap.sdk.gid.internal.util.TapOpenlogHelper;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpBackoff;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpJsonParam;
import com.taptap.sdk.kit.internal.json.TapJson;
import com.taptap.sdk.update.download.core.breakpoint.BreakpointSQLiteKey;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
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
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapTapGidInner.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.gid.internal.TapTapGidInner$startQueryGid$1", f = "TapTapGidInner.kt", i = {}, l = {209}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class TapTapGidInner$startQueryGid$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ JSONObject $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapTapGidInner$startQueryGid$1(JSONObject jSONObject, Continuation<? super TapTapGidInner$startQueryGid$1> continuation) {
        super(2, continuation);
        this.$params = jSONObject;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TapTapGidInner$startQueryGid$1(this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TapTapGidInner$startQueryGid$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TapHttp tapHttp;
        Object mo13enqueueResultgIAlus;
        long j;
        long j2;
        int i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            tapHttp = TapTapGidInner.INSTANCE.getTapHttp();
            AbsTapHttpParam<TapHttpJsonParam> retryBackoff = tapHttp.postJson("device/v1/query").addBody(this.$params).retryBackoff(new TapHttpBackoff.Exponential());
            this.label = 1;
            mo13enqueueResultgIAlus = new TapHttpCall(retryBackoff, new TapHttpParser.SdkDefaultParser(null, new Function1<JsonObject, TapGid>() { // from class: com.taptap.sdk.gid.internal.TapTapGidInner$startQueryGid$1$invokeSuspend$$inlined$toCall$1
                /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.taptap.sdk.gid.internal.bean.TapGid] */
                @Override // kotlin.jvm.functions.Function1
                public final TapGid invoke(JsonObject jsonObject) {
                    TapJson tapJson = TapJson.INSTANCE;
                    try {
                        if (jsonObject == null) {
                            return null;
                        }
                        Json json = tapJson.getJson();
                        KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.nullableTypeOf(TapGid.class));
                        Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                        return json.decodeFromJsonElement(serializer, jsonObject);
                    } catch (Exception e) {
                        TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
                        return null;
                    }
                }
            }, 1, null), new TapHttpRetry.SdkDefault(retryBackoff.getBackoffHandler())).mo13enqueueResultgIAlus(600L, this);
            if (mo13enqueueResultgIAlus == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            mo13enqueueResultgIAlus = ((Result) obj).getValue();
        }
        if (Result.m63isSuccessimpl(mo13enqueueResultgIAlus)) {
            TapGid tapGid = (TapGid) mo13enqueueResultgIAlus;
            StringBuilder sb = new StringBuilder();
            sb.append("queryGid onSuccess, response = ");
            sb.append(tapGid);
            sb.append(", cost: ");
            long currentTimeMillis = System.currentTimeMillis();
            j = TapTapGidInner.startTime;
            sb.append(currentTimeMillis - j);
            sb.append("ms");
            TapLogger.logd("TapTapGid", sb.toString());
            String id = tapGid.getId();
            TapOpenlogHelper.INSTANCE.reportTechnicalLog("http_successful", MapsKt.mapOf(TuplesKt.to("data", tapGid.toString()), TuplesKt.to(BreakpointSQLiteKey.ID, id)));
            String str = id;
            if (str != null && str.length() != 0) {
                z = false;
            }
            if (!z) {
                TapTapGidInner.INSTANCE.setCurrentGid$tap_gid_release(id);
                TapGidStorage tapGidStorage = TapGidStorage.INSTANCE;
                i = TapTapGidInner.regionType;
                tapGidStorage.saveGidToSp(i, id);
                TapTapGidInner.INSTANCE.notifyUpdateCallbacks(2, id);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("queryGid onSuccess, newGid = ");
            sb2.append(id);
            sb2.append(", cost: ");
            long currentTimeMillis2 = System.currentTimeMillis();
            j2 = TapTapGidInner.startTime;
            sb2.append(currentTimeMillis2 - j2);
            sb2.append("ms");
            TapLogger.logd("TapTapGid", sb2.toString());
        }
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(mo13enqueueResultgIAlus);
        if (m59exceptionOrNullimpl != null) {
            TapLogger.logd("TapTapGid", "queryGid onError, responseError = " + m59exceptionOrNullimpl);
            TapOpenlogHelper.INSTANCE.reportTechnicalLog("http_failure", MapsKt.mapOf(TuplesKt.to("throwable", String.valueOf(m59exceptionOrNullimpl.getMessage()))));
        }
        return Unit.INSTANCE;
    }
}
