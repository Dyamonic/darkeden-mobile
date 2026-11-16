package com.taptap.sdk.update.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import android.webkit.URLUtil;
import android.widget.Toast;
import com.taptap.sdk.kit.internal.TapLogger;
import com.taptap.sdk.kit.internal.utils.NetworkUtil;
import com.taptap.sdk.update.bean.UIInformation;
import com.taptap.sdk.update.bean.UpdateDownloadInfo;
import com.taptap.sdk.update.bean.UpdateResult;
import com.taptap.sdk.update.constants.LoggerConst;
import com.taptap.sdk.update.dialog.TapUpdateDialog;
import com.taptap.sdk.update.download.TapUpdateDownloadListener;
import com.taptap.sdk.update.download.TapUpdateDownloadManager;
import com.taptap.sdk.update.download.core.Util;
import com.taptap.sdk.update.download.core.cause.EndCause;
import com.taptap.sdk.update.download.core.exception.ServerCanceledException;
import com.taptap.sdk.update.extension.BizExtKt;
import com.taptap.sdk.update.extension.SystemExtKt;
import com.taptap.sdk.update.internal.TapUpdateApi;
import com.taptap.sdk.update.internal.TapUpdateInternal;
import com.taptap.sdk.update.internal.TapUpdateLoggerKt;
import com.taptap.sdk.update.internal.UpdateTracker;
import java.io.File;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TapUpdateDialogManager.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J0\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0017H\u0002J\u001a\u0010!\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010&\u001a\u00020\u0019H\u0002J\"\u0010'\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010(\u001a\u00020\u0017H\u0002J\u000e\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020+J\u0018\u0010,\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u0013H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;", "", "()V", "installConfirmDialog", "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;", "loadingDialog", "Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;", "retryCount", "", "updateDialog", "Lcom/taptap/sdk/update/dialog/TapUpdateDialog;", "updateInfo", "Lcom/taptap/sdk/update/bean/UpdateResult;", "getUpdateDialog", "context", "Landroid/content/Context;", "getWebInstallSpannableString", "Landroid/text/SpannableString;", "text", "", "start", "end", "fromInstall", "", "hideLoadingDialog", "", "hideUpdateDialog", "installSuccess", "showConfirmDownloadDialog", "showDownloadDialog", "showErrorAndRetry", "errorTips", "needRetry", "showInstallDialog", "file", "Ljava/io/File;", "showLoadingDialog", "showOpenDialog", "showUpdateDialog", "startInstallAPK", "isManualClick", "startUpdateGame", "activity", "Landroid/app/Activity;", "updateInTapApp", "objectType", "tap-update_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class TapUpdateDialogManager {
    public static final TapUpdateDialogManager INSTANCE = new TapUpdateDialogManager();
    private static TapUpdateInstallConfirmDialog installConfirmDialog;
    private static TapUpdateLoadingDialog loadingDialog;
    private static int retryCount;
    private static TapUpdateDialog updateDialog;
    private static UpdateResult updateInfo;

    private TapUpdateDialogManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TapUpdateDialog getUpdateDialog(Context context) {
        if (updateDialog == null) {
            TapUpdateDialog tapUpdateDialog = new TapUpdateDialog(context);
            updateDialog = tapUpdateDialog;
            if (tapUpdateDialog != null) {
                tapUpdateDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$zrgunZOkBCE1RM-XhjzO3tXONMM
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        TapUpdateDialogManager.getUpdateDialog$lambda$0(dialogInterface);
                    }
                });
            }
            TapUpdateDialog tapUpdateDialog2 = updateDialog;
            if (tapUpdateDialog2 != null) {
                tapUpdateDialog2.setUpdateCancelListener(new TapUpdateDialog.IUpdateCancelListener() { // from class: com.taptap.sdk.update.dialog.TapUpdateDialogManager$getUpdateDialog$2

                    /* compiled from: TapUpdateDialogManager.kt */
                    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
                    /* loaded from: classes2.dex */
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[TapUpdateDialogState.values().length];
                            try {
                                iArr[TapUpdateDialogState.CONFIRM.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[TapUpdateDialogState.DOWNLOAD.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[TapUpdateDialogState.INSTALL.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            try {
                                iArr[TapUpdateDialogState.UPDATE.ordinal()] = 4;
                            } catch (NoSuchFieldError unused4) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    @Override // com.taptap.sdk.update.dialog.TapUpdateDialog.IUpdateCancelListener
                    public void onUpdateCancel(TapUpdateDialogState state, boolean fromCloseButton) {
                        int i = state == null ? -1 : WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                        if (i == 1) {
                            UpdateTracker.INSTANCE.trackUpdateCancelButtonClick();
                        } else if (i == 2) {
                            UpdateTracker.INSTANCE.trackUpdateCloseButtonClick();
                        } else if (i == 3) {
                            UpdateTracker.INSTANCE.trackInstallCloseButtonClick();
                        } else if (i == 4) {
                            UpdateTracker.INSTANCE.trackToTapUpdateCloseButtonClick();
                        }
                        TapUpdateDownloadManager.INSTANCE.cancelDownload();
                        TapUpdateInternal.INSTANCE.notifyUpdateCancel();
                        TapUpdateDialogManager.INSTANCE.hideUpdateDialog();
                        UpdateTracker.INSTANCE.trackUpdateGameCancel();
                    }
                });
            }
        }
        TapUpdateDialog tapUpdateDialog3 = updateDialog;
        return tapUpdateDialog3 == null ? new TapUpdateDialog(context) : tapUpdateDialog3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void getUpdateDialog$lambda$0(DialogInterface dialogInterface) {
        updateDialog = null;
        updateInfo = null;
        retryCount = 0;
    }

    public final void startUpdateGame(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        hideUpdateDialog();
        Activity activity2 = activity;
        showLoadingDialog(activity2);
        UpdateTracker.INSTANCE.updateSessionId();
        UpdateTracker.INSTANCE.trackUpdateGameStart();
        String packageName = activity.getPackageName();
        int tapVersionCode = BizExtKt.getTapVersionCode(activity2);
        TapUpdateApi tapUpdateApi = TapUpdateApi.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(packageName, "packageName");
        tapUpdateApi.requestUpdateInfo(packageName, tapVersionCode, new TapUpdateDialogManager$startUpdateGame$1(activity));
    }

    private final void showLoadingDialog(Context context) {
        Unit unit;
        TapUpdateLoadingDialog tapUpdateLoadingDialog = loadingDialog;
        if (tapUpdateLoadingDialog != null) {
            tapUpdateLoadingDialog.show();
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            TapUpdateLoadingDialog tapUpdateLoadingDialog2 = new TapUpdateLoadingDialog(context);
            tapUpdateLoadingDialog2.show();
            loadingDialog = tapUpdateLoadingDialog2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideLoadingDialog() {
        TapUpdateLoadingDialog tapUpdateLoadingDialog;
        TapUpdateLoadingDialog tapUpdateLoadingDialog2 = loadingDialog;
        if ((tapUpdateLoadingDialog2 != null && tapUpdateLoadingDialog2.isShowing()) && (tapUpdateLoadingDialog = loadingDialog) != null) {
            tapUpdateLoadingDialog.dismiss();
        }
        loadingDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showUpdateDialog() {
        TapUpdateDialog tapUpdateDialog;
        hideLoadingDialog();
        TapUpdateDialog tapUpdateDialog2 = updateDialog;
        if ((tapUpdateDialog2 != null && tapUpdateDialog2.isShowing()) || (tapUpdateDialog = updateDialog) == null) {
            return;
        }
        tapUpdateDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void hideUpdateDialog() {
        TapUpdateDialog tapUpdateDialog;
        TapUpdateDialog tapUpdateDialog2 = updateDialog;
        if ((tapUpdateDialog2 != null && tapUpdateDialog2.isShowing()) && (tapUpdateDialog = updateDialog) != null) {
            tapUpdateDialog.dismiss();
        }
        updateDialog = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showConfirmDownloadDialog(final Context context) {
        if (updateInfo == null) {
            return;
        }
        if (BizExtKt.isTapInstalled(context)) {
            updateInTapApp(context, LoggerConst.OBJECT_TYPE_UPDATE);
            return;
        }
        UpdateResult updateResult = updateInfo;
        boolean z = false;
        if (updateResult != null && updateResult.getNotify()) {
            z = true;
        }
        if (z) {
            getUpdateDialog(context).onDownloadReady(true, new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$QZMAV0TI8gHGuOgaRC28vXO-DAc
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TapUpdateDialogManager.showConfirmDownloadDialog$lambda$3(context, view);
                }
            });
        } else {
            showDownloadDialog(context);
        }
        showUpdateDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmDownloadDialog$lambda$3(Context context, View view) {
        Intrinsics.checkNotNullParameter(context, "$context");
        UpdateTracker.INSTANCE.trackUpdateConfirmButtonClick();
        INSTANCE.showDownloadDialog(context);
    }

    private final void showDownloadDialog(final Context context) {
        UpdateDownloadInfo download;
        UpdateDownloadInfo download2;
        UpdateDownloadInfo download3;
        if (updateInfo == null) {
            return;
        }
        final TapUpdateDialog updateDialog2 = getUpdateDialog(context);
        UIInformation.Builder updateTitle = UIInformation.INSTANCE.newBuilder().setUpdateTitle("更新游戏，需安装 TapTap 客户端");
        UpdateResult updateResult = updateInfo;
        String str = null;
        UIInformation.Builder appInfo = updateTitle.setAppInfo(updateResult != null ? updateResult.getAppInfo() : null);
        UpdateResult updateResult2 = updateInfo;
        updateDialog2.updateUIInformation(appInfo.setLinkList(updateResult2 != null ? updateResult2.getLinks() : null).build());
        updateDialog2.showDownloadPage();
        updateDialog2.showCloseButton(false);
        updateDialog2.updateDownloadContentTitle("正在下载 TapTap");
        updateDialog2.showDownloadErrorTips(null, false, null, null);
        updateDialog2.setMaxProgress(100);
        updateDialog2.updateSpeed("0 B/s");
        retryCount = 0;
        UpdateTracker.INSTANCE.trackDownloadDialogVisible();
        TapUpdateDownloadManager.INSTANCE.clearCache(context);
        UpdateResult updateResult3 = updateInfo;
        if (!URLUtil.isNetworkUrl((updateResult3 == null || (download3 = updateResult3.getDownload()) == null) ? null : download3.getUrlTpl())) {
            UpdateTracker updateTracker = UpdateTracker.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("download url is not valid :");
            UpdateResult updateResult4 = updateInfo;
            if (updateResult4 != null && (download2 = updateResult4.getDownload()) != null) {
                str = download2.getUrlTpl();
            }
            sb.append(str);
            updateTracker.trackDownloadFailed(-20, sb.toString());
            showErrorAndRetry("文件下载链接异常,请通过浏览器链接重试", context, false);
            return;
        }
        TapUpdateDownloadManager tapUpdateDownloadManager = TapUpdateDownloadManager.INSTANCE;
        UpdateResult updateResult5 = updateInfo;
        tapUpdateDownloadManager.download(context, (updateResult5 == null || (download = updateResult5.getDownload()) == null) ? null : download.getUrlTpl(), null, new TapUpdateDownloadListener() { // from class: com.taptap.sdk.update.dialog.TapUpdateDialogManager$showDownloadDialog$1
            @Override // com.taptap.sdk.update.download.TapUpdateDownloadListener
            public void onDownloadStart(long fileSize) {
                TapUpdateDialog updateDialog3;
                TapLogger.logd(TapUpdateLoggerKt.LOGGER_TAG, "download start");
                updateDialog3 = TapUpdateDialogManager.INSTANCE.getUpdateDialog(context);
                updateDialog3.updateDownloadContentTitle("正在下载 TapTap (大小：" + Util.humanReadableBytes(fileSize, true) + (char) 65289);
                updateDialog3.showDownloadErrorTips(null, false, null, null);
                updateDialog3.hideDownloadErrorTips();
                updateDialog3.updateSpeed("0 B/s");
                UpdateTracker.INSTANCE.trackDownloadStart();
            }

            @Override // com.taptap.sdk.update.download.TapUpdateDownloadListener
            public void onDownloadProgress(long currentOffset, long fileTotalSize, long speedBytes, int progress, String speed) {
                TapUpdateDialog updateDialog3;
                updateDialog3 = TapUpdateDialogManager.INSTANCE.getUpdateDialog(context);
                updateDialog3.showDownloadErrorTips(null, false, null, null);
                updateDialog3.hideDownloadErrorTips();
                updateDialog3.updateProgress(progress);
                updateDialog3.updateSpeed(speed);
                UpdateTracker.INSTANCE.trackDownloadingSpeed(String.valueOf(fileTotalSize), String.valueOf(currentOffset), String.valueOf(speedBytes));
            }

            @Override // com.taptap.sdk.update.download.TapUpdateDownloadListener
            public void onDownloadSuccess(File file) {
                int checkApkFile = BizExtKt.checkApkFile(context, file);
                TapLogger.logd(TapUpdateLoggerKt.LOGGER_TAG, "check apk file result = " + checkApkFile);
                if (checkApkFile < 0) {
                    UpdateTracker.INSTANCE.trackDownloadFailed(-50, checkApkFile < -1 ? "package info is not valid" : "not a apk file");
                    TapUpdateDownloadManager.INSTANCE.clearCache(context);
                    TapUpdateDialogManager.INSTANCE.showErrorAndRetry("文件下载异常，请重试", context, true);
                } else {
                    UpdateTracker.INSTANCE.trackDownloadComplete();
                    TapUpdateDialogManager.INSTANCE.showInstallDialog(context, file);
                }
            }

            @Override // com.taptap.sdk.update.download.TapUpdateDownloadListener
            public void onDownloadFailed(EndCause cause, Exception e) {
                if (cause == EndCause.CANCELED) {
                    return;
                }
                updateDialog2.updateSpeed("0 B/s");
                String str2 = "error : " + cause;
                if (e != null) {
                    str2 = e.toString();
                }
                int i = -30;
                String str3 = "网络异常，请重试";
                if (cause == EndCause.PRE_ALLOCATE_FAILED) {
                    str2 = "设备存储空间不足，无法继续下载";
                    i = -40;
                    str3 = "设备存储空间不足，无法继续下载";
                } else if (cause == EndCause.FILE_BUSY) {
                    str2 = "文件被占用";
                } else if (e instanceof ServerCanceledException) {
                    i = -15;
                } else if ((e instanceof UnknownHostException) || (e instanceof SocketException)) {
                    i = -10;
                    if (NetworkUtil.isNetworkAvailable(context)) {
                        i = -13;
                    }
                } else if (e instanceof SSLException) {
                    i = -14;
                } else if (e instanceof IOException) {
                    i = -12;
                    if (e instanceof SocketTimeoutException) {
                        i = -11;
                    }
                }
                TapLogger.logd(TapUpdateLoggerKt.LOGGER_TAG, "errorCode = " + i + " , errorLog = " + str2);
                UpdateTracker.INSTANCE.trackDownloadFailed(i, str2);
                TapUpdateDialogManager.INSTANCE.showErrorAndRetry(str3, context, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorAndRetry(String errorTips, Context context, boolean needRetry) {
        if (updateInfo == null) {
            return;
        }
        if (retryCount >= 1 || !needRetry) {
            getUpdateDialog(context).showCloseButton(true);
        }
        SpannableString webInstallSpannableString = (retryCount >= 2 || !needRetry) ? getWebInstallSpannableString("或点击此 链接 前往浏览器安装", 4, 8, context, false) : null;
        int i = retryCount;
        if (i > 2 && i % 3 == 0) {
            TapUpdateDownloadManager.INSTANCE.clearCache(context);
        }
        getUpdateDialog(context).showDownloadErrorTips(errorTips, needRetry, webInstallSpannableString, new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$h4jsHDeA3SKola26Y75TAHeVHi8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapUpdateDialogManager.showErrorAndRetry$lambda$4(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showErrorAndRetry$lambda$4(View view) {
        UpdateTracker.INSTANCE.trackDownloadRetryButtonClick();
        retryCount++;
        TapUpdateDownloadManager.INSTANCE.restartTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showInstallDialog(final Context context, final File file) {
        if (updateInfo == null) {
            return;
        }
        getUpdateDialog(context).showCloseButton(true);
        getUpdateDialog(context).showFuncViewWithTips("安装 TapTap", getWebInstallSpannableString("安装失败？可点击此 链接 前往浏览器安装", 9, 13, context, true), new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$yAdXe7WcqYSYnBZ8qpggAiQ0Nu8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapUpdateDialogManager.showInstallDialog$lambda$5(file, context, view);
            }
        });
        getUpdateDialog(context).setDialogState(TapUpdateDialogState.INSTALL);
        UpdateTracker.INSTANCE.trackInstallDialogVisible();
        startInstallAPK(context, file, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInstallDialog$lambda$5(File file, Context context, View view) {
        Intrinsics.checkNotNullParameter(context, "$context");
        if (file != null) {
            INSTANCE.startInstallAPK(context, file, true);
        }
        UpdateTracker.INSTANCE.trackInstallConfirmButtonClick();
    }

    private final void startInstallAPK(Context context, File file, boolean isManualClick) {
        if (file == null) {
            return;
        }
        TapUpdateDownloadManager.INSTANCE.installAPK(context, file, isManualClick);
        SystemExtKt.runOnMainWithDelay(300L, new TapUpdateDialogManager$startInstallAPK$1(context, null));
    }

    private final void updateInTapApp(Context context, String objectType) {
        Object m56constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            TapUpdateDialogManager tapUpdateDialogManager = this;
            UpdateTracker.INSTANCE.trackOpenTapClient(objectType);
            UpdateResult updateResult = updateInfo;
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(updateResult != null ? updateResult.getUpdateUriTpl() : null));
            intent.setFlags(268435456);
            context.startActivity(intent);
            UpdateTracker.INSTANCE.trackUpdateGameSuccess();
            m56constructorimpl = Result.m56constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m56constructorimpl = Result.m56constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m59exceptionOrNullimpl(m56constructorimpl) != null) {
            Toast.makeText(context, "打开失败，请重试", 0).show();
            UpdateTracker.INSTANCE.trackUpdateGameFail(-1, "open taptap client failed");
        }
    }

    private final SpannableString getWebInstallSpannableString(String text, int start, int end, final Context context, final boolean fromInstall) {
        SpannableString spannableString = new SpannableString(text);
        spannableString.setSpan(new ClickableSpan() { // from class: com.taptap.sdk.update.dialog.TapUpdateDialogManager$getWebInstallSpannableString$1
            @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
            public void updateDrawState(TextPaint ds) {
                Intrinsics.checkNotNullParameter(ds, "ds");
                ds.setColor(Color.parseColor("#00D9C5"));
                ds.setUnderlineText(false);
            }

            @Override // android.text.style.ClickableSpan
            public void onClick(View widget) {
                UpdateResult updateResult;
                UpdateResult updateResult2;
                Intrinsics.checkNotNullParameter(widget, "widget");
                try {
                    updateResult = TapUpdateDialogManager.updateInfo;
                } catch (Exception e) {
                    TapLogger.loge$default(TapUpdateLoggerKt.LOGGER_TAG, e.getMessage(), null, 4, null);
                }
                if (updateResult == null) {
                    return;
                }
                updateResult2 = TapUpdateDialogManager.updateInfo;
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(updateResult2 != null ? updateResult2.getUpdateUrlTpl() : null)));
                if (fromInstall) {
                    UpdateTracker.INSTANCE.trackInstallLinkButtonClick();
                } else {
                    UpdateTracker.INSTANCE.trackDownloadLinkButtonClick();
                }
            }
        }, start, end, 33);
        return spannableString;
    }

    public final void installSuccess(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        TapUpdateInstallConfirmDialog tapUpdateInstallConfirmDialog = installConfirmDialog;
        if (tapUpdateInstallConfirmDialog != null) {
            tapUpdateInstallConfirmDialog.dismiss();
        }
        UpdateTracker.INSTANCE.trackInstallComplete();
        showOpenDialog(context);
        TapUpdateDownloadManager.INSTANCE.clearCache(context);
    }

    private final void showOpenDialog(final Context context) {
        if (updateInfo == null) {
            return;
        }
        TapUpdateDialog updateDialog2 = getUpdateDialog(context);
        UIInformation.Builder updateTitle = UIInformation.INSTANCE.newBuilder().setUpdateTitle("更新游戏，需使用 TapTap 客户端");
        UpdateResult updateResult = updateInfo;
        UIInformation.Builder appInfo = updateTitle.setAppInfo(updateResult != null ? updateResult.getAppInfo() : null);
        UpdateResult updateResult2 = updateInfo;
        updateDialog2.updateUIInformation(appInfo.setLinkList(updateResult2 != null ? updateResult2.getLinks() : null).build());
        TapUpdateDialog.showFuncViewWithTips$default(updateDialog2, "打开 TapTap 去更新", null, new View.OnClickListener() { // from class: com.taptap.sdk.update.dialog.-$$Lambda$TapUpdateDialogManager$tVmXf95A_uKItkheNNh9ZzM2c1c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TapUpdateDialogManager.showOpenDialog$lambda$9$lambda$8(context, view);
            }
        }, 2, null);
        updateDialog2.setDialogState(TapUpdateDialogState.UPDATE);
        UpdateTracker.INSTANCE.trackUpdateDialogVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showOpenDialog$lambda$9$lambda$8(Context context, View view) {
        Intrinsics.checkNotNullParameter(context, "$context");
        INSTANCE.updateInTapApp(context, LoggerConst.OBJECT_TYPE_UPDATE_GO_TAP);
        UpdateTracker.INSTANCE.trackToTapUpdateButtonClick();
    }
}
