package com.taptap.sdk.update.dialog;

import android.content.Context;
import com.taptap.sdk.update.dialog.TapUpdateInstallConfirmDialog;
import com.taptap.sdk.update.internal.UpdateTracker;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TapUpdateDialogManager.kt */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "com.taptap.sdk.update.dialog.TapUpdateDialogManager$startInstallAPK$1", f = "TapUpdateDialogManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class TapUpdateDialogManager$startInstallAPK$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TapUpdateDialogManager$startInstallAPK$1(Context context, Continuation<? super TapUpdateDialogManager$startInstallAPK$1> continuation) {
        super(1, continuation);
        this.$context = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new TapUpdateDialogManager$startInstallAPK$1(this.$context, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((TapUpdateDialogManager$startInstallAPK$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TapUpdateInstallConfirmDialog tapUpdateInstallConfirmDialog;
        TapUpdateInstallConfirmDialog tapUpdateInstallConfirmDialog2;
        TapUpdateInstallConfirmDialog tapUpdateInstallConfirmDialog3;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            tapUpdateInstallConfirmDialog = TapUpdateDialogManager.installConfirmDialog;
            if (tapUpdateInstallConfirmDialog == null) {
                TapUpdateDialogManager tapUpdateDialogManager = TapUpdateDialogManager.INSTANCE;
                TapUpdateDialogManager.installConfirmDialog = new TapUpdateInstallConfirmDialog(this.$context);
            }
            tapUpdateInstallConfirmDialog2 = TapUpdateDialogManager.installConfirmDialog;
            if (tapUpdateInstallConfirmDialog2 != null) {
                tapUpdateInstallConfirmDialog2.switchState(TapUpdateInstallConfirmDialog.TapUpdateConfirmDialogType.INSTALL_CONFIRM);
            }
            tapUpdateInstallConfirmDialog3 = TapUpdateDialogManager.installConfirmDialog;
            if (tapUpdateInstallConfirmDialog3 != null) {
                tapUpdateInstallConfirmDialog3.show();
            }
            UpdateTracker.INSTANCE.trackInstallConfirmDialogVisible();
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
