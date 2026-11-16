package com.taptap.sdk.initializer.gate;

import android.content.Context;
import android.widget.Toast;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.TapTapKit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapGatekeeper.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.initializer.gate.TapGatekeeperKt$showGatekeeperError$1", f = "TapGatekeeper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class TapGatekeeperKt$showGatekeeperError$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ TapGatekeeperError $this_showGatekeeperError;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapGatekeeperKt$showGatekeeperError$1(TapGatekeeperError tapGatekeeperError, Continuation<? super TapGatekeeperKt$showGatekeeperError$1> continuation) {
        super(2, continuation);
        this.$this_showGatekeeperError = tapGatekeeperError;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TapGatekeeperKt$showGatekeeperError$1(this.$this_showGatekeeperError, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TapGatekeeperKt$showGatekeeperError$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Context context = TapTapKit.INSTANCE.getContext();
        String errorToast = this.$this_showGatekeeperError.getErrorToast();
        if (errorToast == null) {
            errorToast = "当前应用初始化信息错误";
        }
        Toast.makeText(context, errorToast, 0).show();
        String errorLog = this.$this_showGatekeeperError.getErrorLog();
        if (errorLog == null) {
            errorLog = "当前应用初始化信息错误, 请在 TapTap 开发者中心检查[当前应用包名]与[调用初始化接口设置的 clientId 、clientToken]是否匹配";
        }
        TapLogger.loge$default("TapInitializer", errorLog, null, 4, null);
        return Unit.INSTANCE;
    }
}
