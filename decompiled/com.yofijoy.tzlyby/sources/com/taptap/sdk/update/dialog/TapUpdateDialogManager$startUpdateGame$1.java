package com.taptap.sdk.update.dialog;

import android.app.Activity;
import android.view.View;
import com.taptap.sdk.update.TapUpdateApiCallback;
import com.taptap.sdk.update.bean.UpdateResult;
import com.taptap.sdk.update.internal.TapUpdateLoggerKt;
import com.taptap.sdk.update.internal.UpdateTracker;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapUpdateDialogManager.kt */
@Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"com/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1", "Lcom/taptap/sdk/update/TapUpdateApiCallback;", "onError", "", "throwable", "", "onSuccess", "updateInfo", "Lcom/taptap/sdk/update/bean/UpdateResult;", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapUpdateDialogManager$startUpdateGame$1 implements TapUpdateApiCallback {
    final /* synthetic */ Activity $activity;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TapUpdateDialogManager$startUpdateGame$1(Activity activity) {
        this.$activity = activity;
    }

    @Override // com.taptap.sdk.update.TapUpdateApiCallback
    public void onSuccess(UpdateResult updateInfo) {
        TapUpdateDialog updateDialog;
        TapUpdateLoggerKt.logInfo("requestUpdateInfo success: result=" + updateInfo);
        TapUpdateDialogManager.INSTANCE.hideLoadingDialog();
        if (!(updateInfo != null && updateInfo.isDataValid())) {
            updateDialog = TapUpdateDialogManager.INSTANCE.getUpdateDialog(this.$activity);
            final Activity activity = this.$activity;
            updateDialog.onDownloadReady(false, new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$hSKCIiLGsd0EQBAcIEWyUP8vOPs
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TapUpdateDialogManager$startUpdateGame$1.onSuccess$lambda$0(activity, view);
                }
            });
            TapUpdateDialogManager.INSTANCE.showUpdateDialog();
            return;
        }
        TapUpdateDialogManager tapUpdateDialogManager = TapUpdateDialogManager.INSTANCE;
        TapUpdateDialogManager.updateInfo = updateInfo;
        UpdateTracker.INSTANCE.setGameId(String.valueOf(updateInfo.getAppId()));
        TapUpdateDialogManager.INSTANCE.showConfirmDownloadDialog(this.$activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSuccess$lambda$0(Activity activity, View view) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        UpdateTracker.INSTANCE.trackRequestFailedPositiveButtonClick();
        TapUpdateDialogManager.INSTANCE.startUpdateGame(activity);
    }

    @Override // com.taptap.sdk.update.TapUpdateApiCallback
    public void onError(Throwable throwable) {
        TapUpdateDialog updateDialog;
        TapUpdateLoggerKt.logInfo("requestUpdateInfo failed: cause=" + throwable);
        UpdateTracker.INSTANCE.trackUpdateGameFail(-1, String.valueOf(throwable));
        TapUpdateDialogManager.INSTANCE.hideLoadingDialog();
        updateDialog = TapUpdateDialogManager.INSTANCE.getUpdateDialog(this.$activity);
        final Activity activity = this.$activity;
        updateDialog.onDownloadReady(false, new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$7aWtn-x2aOkSpQ6dIEc6ay-rhYA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapUpdateDialogManager$startUpdateGame$1.onError$lambda$1(activity, view);
            }
        });
        TapUpdateDialogManager.INSTANCE.showUpdateDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onError$lambda$1(Activity activity, View view) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        UpdateTracker.INSTANCE.trackRequestFailedPositiveButtonClick();
        TapUpdateDialogManager.INSTANCE.startUpdateGame(activity);
    }
}
