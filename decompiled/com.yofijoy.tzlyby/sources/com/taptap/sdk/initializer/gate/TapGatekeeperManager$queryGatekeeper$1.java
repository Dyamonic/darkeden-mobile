package com.taptap.sdk.initializer.gate;

import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.http.TapErrorConstants;
import com.taptap.sdk.kit.internal.http.TapHttp;
import com.taptap.sdk.kit.internal.http.TapHttpException;
import com.taptap.sdk.kit.internal.http.call.TapHttpCall;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpBackoff;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpParser;
import com.taptap.sdk.kit.internal.http.hanlder.TapHttpRetry;
import com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam;
import com.taptap.sdk.kit.internal.http.param.TapHttpJsonParam;
import com.taptap.sdk.kit.internal.json.TapJson;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
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
/* compiled from: TapGatekeeperManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.initializer.gate.TapGatekeeperManager$queryGatekeeper$1", f = "TapGatekeeperManager.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class TapGatekeeperManager$queryGatekeeper$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ JSONObject $params;
    final /* synthetic */ Function0<Unit> $runnable;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGatekeeperManager$queryGatekeeper$1(JSONObject jSONObject, Function0<Unit> function0, Continuation<? super TapGatekeeperManager$queryGatekeeper$1> continuation) {
        super(2, continuation);
        this.$params = jSONObject;
        this.$runnable = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TapGatekeeperManager$queryGatekeeper$1(this.$params, this.$runnable, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TapGatekeeperManager$queryGatekeeper$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TapHttp tapHttp;
        Object mo13enqueueResultgIAlus;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            tapHttp = TapGatekeeperManager.INSTANCE.getTapHttp();
            AbsTapHttpParam<TapHttpJsonParam> retryBackoff = tapHttp.postJson("sdk-core/v1/gatekeeper").addBody(this.$params).retryBackoff(new TapHttpBackoff.Exponential());
            this.label = 1;
            mo13enqueueResultgIAlus = new TapHttpCall(retryBackoff, new TapHttpParser.SdkDefaultParser(null, new Function1<JsonObject, TapGatekeeper>() { // from class: com.taptap.sdk.initializer.gate.TapGatekeeperManager$queryGatekeeper$1$invokeSuspend$$inlined$toCall$1
                /* JADX WARN: Type inference failed for: r1v2, types: [com.taptap.sdk.initializer.gate.TapGatekeeper, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function1
                public final TapGatekeeper invoke(JsonObject jsonObject) {
                    TapJson tapJson = TapJson.INSTANCE;
                    try {
                        if (jsonObject == null) {
                            return null;
                        }
                        Json json = tapJson.getJson();
                        KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.nullableTypeOf(TapGatekeeper.class));
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
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            mo13enqueueResultgIAlus = ((Result) obj).getValue();
        }
        Function0<Unit> function0 = this.$runnable;
        if (Result.m63isSuccessimpl(mo13enqueueResultgIAlus)) {
            TapGatekeeperManager tapGatekeeperManager = TapGatekeeperManager.INSTANCE;
            TapGatekeeperManager.isGatekeeperSuccess = true;
            TapGatekeeperManager.INSTANCE.setTapGatekeeper$tap_initializer_release((TapGatekeeper) mo13enqueueResultgIAlus);
            TapGatekeeperManager.INSTANCE.writeGatekeeperToCache();
            TapGatekeeperManager.INSTANCE.setGatekeeperError$tap_initializer_release(null);
            TapLogger.logi(TapLogger.TAG, "Refreshes the startup status of the module based on the server configuration\n" + TapGatekeeperManager.INSTANCE.getTapGatekeeper$tap_initializer_release());
            function0.invoke();
        }
        Function0<Unit> function02 = this.$runnable;
        Throwable m59exceptionOrNullimpl = Result.m59exceptionOrNullimpl(mo13enqueueResultgIAlus);
        if (m59exceptionOrNullimpl != null && (m59exceptionOrNullimpl instanceof TapHttpException.ServerError)) {
            TapHttpException.ServerError serverError = (TapHttpException.ServerError) m59exceptionOrNullimpl;
            if (Intrinsics.areEqual(serverError.getError().getError(), TapErrorConstants.ERROR_INVALID_CLIENT)) {
                TapGatekeeperManager tapGatekeeperManager2 = TapGatekeeperManager.INSTANCE;
                TapGatekeeperManager.isGatekeeperSuccess = false;
                TapGatekeeperManager.INSTANCE.writeGatekeeperToCache();
                TapGatekeeperManager tapGatekeeperManager3 = TapGatekeeperManager.INSTANCE;
                TapGatekeeperError tapGatekeeperError = new TapGatekeeperError(serverError.getError().getMsg(), serverError.getError().getDescription());
                TapGatekeeperKt.showGatekeeperError(tapGatekeeperError);
                tapGatekeeperManager3.setGatekeeperError$tap_initializer_release(tapGatekeeperError);
                function02.invoke();
            }
        }
        return Unit.INSTANCE;
    }
}
