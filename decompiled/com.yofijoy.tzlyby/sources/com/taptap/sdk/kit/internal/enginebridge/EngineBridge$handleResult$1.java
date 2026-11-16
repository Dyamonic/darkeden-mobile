package com.taptap.sdk.kit.internal.enginebridge;

import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.json.TapJson;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KTypeProjection;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;

/* compiled from: EngineBridge.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.kit.internal.enginebridge.EngineBridge$handleResult$1", f = "EngineBridge.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class EngineBridge$handleResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ EngineBridgeCallback $callback;
    final /* synthetic */ EngineBridgeResult<String> $result;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineBridge$handleResult$1(EngineBridgeResult<String> engineBridgeResult, EngineBridgeCallback engineBridgeCallback, Continuation<? super EngineBridge$handleResult$1> continuation) {
        super(2, continuation);
        this.$result = engineBridgeResult;
        this.$callback = engineBridgeCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EngineBridge$handleResult$1(this.$result, this.$callback, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((EngineBridge$handleResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        TapLogger.logi(EngineBridgeKt.ENGINE_BRIDGE_LOGGER_TAG, "handle bridge message: content=" + this.$result);
        EngineBridgeCallback engineBridgeCallback = this.$callback;
        if (engineBridgeCallback != null) {
            TapJson tapJson = TapJson.INSTANCE;
            EngineBridgeResult<String> engineBridgeResult = this.$result;
            String str = null;
            try {
                Json json = tapJson.getJson();
                KSerializer<Object> serializer = SerializersKt.serializer(json.getSerializersModule(), Reflection.typeOf(EngineBridgeResult.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class))));
                Intrinsics.checkNotNull(serializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                str = json.encodeToString(serializer, engineBridgeResult);
            } catch (Exception e) {
                TapLogger.loge$default(TapJson.TAG, null, e, 2, null);
            }
            if (str == null) {
                str = "";
            }
            engineBridgeCallback.onResult(str);
        }
        return Unit.INSTANCE;
    }
}
