.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;
.super Ljava/lang/Object;
.source "TapUpdateDialogManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J0\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010\u001a\u001a\u00020\u0019H\u0002J\u000e\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J \u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u0017H\u0002J\u001a\u0010!\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002J\u0010\u0010$\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010&\u001a\u00020\u0019H\u0002J\"\u0010\'\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010(\u001a\u00020\u0017H\u0002J\u000e\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020+J\u0018\u0010,\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u0013H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;",
        "",
        "()V",
        "installConfirmDialog",
        "Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;",
        "loadingDialog",
        "Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;",
        "retryCount",
        "",
        "updateDialog",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialog;",
        "updateInfo",
        "Lcom/taptap/sdk/update/bean/UpdateResult;",
        "getUpdateDialog",
        "context",
        "Landroid/content/Context;",
        "getWebInstallSpannableString",
        "Landroid/text/SpannableString;",
        "text",
        "",
        "start",
        "end",
        "fromInstall",
        "",
        "hideLoadingDialog",
        "",
        "hideUpdateDialog",
        "installSuccess",
        "showConfirmDownloadDialog",
        "showDownloadDialog",
        "showErrorAndRetry",
        "errorTips",
        "needRetry",
        "showInstallDialog",
        "file",
        "Ljava/io/File;",
        "showLoadingDialog",
        "showOpenDialog",
        "showUpdateDialog",
        "startInstallAPK",
        "isManualClick",
        "startUpdateGame",
        "activity",
        "Landroid/app/Activity;",
        "updateInTapApp",
        "objectType",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

.field private static installConfirmDialog:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;

.field private static loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

.field private static retryCount:I

.field private static updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

.field private static updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-direct {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstallConfirmDialog$p()Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;
    .locals 1

    .line 44
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->installConfirmDialog:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;

    return-object v0
.end method

.method public static final synthetic access$getUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUpdateInfo$p()Lcom/taptap/sdk/update/bean/UpdateResult;
    .locals 1

    .line 44
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    return-object v0
.end method

.method public static final synthetic access$hideLoadingDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->hideLoadingDialog()V

    return-void
.end method

.method public static final synthetic access$hideUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->hideUpdateDialog()V

    return-void
.end method

.method public static final synthetic access$setInstallConfirmDialog$p(Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->installConfirmDialog:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;

    return-void
.end method

.method public static final synthetic access$setUpdateInfo$p(Lcom/taptap/sdk/update/bean/UpdateResult;)V
    .locals 0

    .line 44
    sput-object p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    return-void
.end method

.method public static final synthetic access$showConfirmDownloadDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showConfirmDownloadDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$showErrorAndRetry(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showErrorAndRetry(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public static final synthetic access$showInstallDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showInstallDialog(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$showUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showUpdateDialog()V

    return-void
.end method

.method private final getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;
    .locals 2

    .line 53
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-eqz v0, :cond_0

    .line 56
    sget-object v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$zrgunZOkBCE1RM-XhjzO3tXONMM;->INSTANCE:Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$zrgunZOkBCE1RM-XhjzO3tXONMM;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2;

    invoke-direct {v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2;-><init>()V

    check-cast v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setUpdateCancelListener(Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;)V

    .line 84
    :cond_1
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;-><init>(Landroid/content/Context;)V

    :cond_2
    return-object v0
.end method

.method private static final getUpdateDialog$lambda$0(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 57
    sput-object p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    .line 58
    sput-object p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    const/4 p0, 0x0

    .line 59
    sput p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    return-void
.end method

.method private final getWebInstallSpannableString(Ljava/lang/String;IILandroid/content/Context;Z)Landroid/text/SpannableString;
    .locals 1

    .line 403
    new-instance v0, Landroid/text/SpannableString;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 405
    new-instance p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;

    invoke-direct {p1, p4, p5}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;-><init>(Landroid/content/Context;Z)V

    const/16 p4, 0x21

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private final hideLoadingDialog()V
    .locals 3

    .line 140
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 141
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    return-void
.end method

.method private final hideUpdateDialog()V
    .locals 3

    .line 154
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 155
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 157
    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    return-void
.end method

.method public static synthetic lambda$QZMAV0TI8gHGuOgaRC28vXO-DAc(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showConfirmDownloadDialog$lambda$3(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$h4jsHDeA3SKola26Y75TAHeVHi8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showErrorAndRetry$lambda$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$tVmXf95A_uKItkheNNh9ZzM2c1c(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showOpenDialog$lambda$9$lambda$8(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$yAdXe7WcqYSYnBZ8qpggAiQ0Nu8(Ljava/io/File;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showInstallDialog$lambda$5(Ljava/io/File;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zrgunZOkBCE1RM-XhjzO3tXONMM(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog$lambda$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final showConfirmDownloadDialog(Landroid/content/Context;)V
    .locals 3

    .line 161
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/taptap/sdk/update/extension/BizExtKt;->isTapInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tap_update"

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInTapApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taptap/sdk/update/bean/UpdateResult;->getNotify()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 171
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$QZMAV0TI8gHGuOgaRC28vXO-DAc;

    invoke-direct {v1, p1}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$QZMAV0TI8gHGuOgaRC28vXO-DAc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->onDownloadReady(ZLandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showDownloadDialog(Landroid/content/Context;)V

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showUpdateDialog()V

    return-void
.end method

.method private static final showConfirmDownloadDialog$lambda$3(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateConfirmButtonClick()V

    .line 173
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showDownloadDialog(Landroid/content/Context;)V

    return-void
.end method

.method private final showDownloadDialog(Landroid/content/Context;)V
    .locals 6

    .line 183
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/taptap/sdk/update/bean/UIInformation;->Companion:Lcom/taptap/sdk/update/bean/UIInformation$Companion;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UIInformation$Companion;->newBuilder()Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    const-string v2, "\u66f4\u65b0\u6e38\u620f\uff0c\u9700\u5b89\u88c5 TapTap \u5ba2\u6237\u7aef"

    .line 188
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setUpdateTitle(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getAppInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setAppInfo(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    .line 190
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getLinks()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setLinkList(Ljava/util/List;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->build()Lcom/taptap/sdk/update/bean/UIInformation;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateUIInformation(Lcom/taptap/sdk/update/bean/UIInformation;)V

    .line 192
    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadPage()V

    const/4 v1, 0x0

    .line 193
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showCloseButton(Z)V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d TapTap"

    .line 194
    invoke-virtual {v0, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateDownloadContentTitle(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadErrorTips(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x64

    .line 196
    invoke-virtual {v0, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setMaxProgress(I)V

    const-string v2, "0 B/s"

    .line 197
    invoke-virtual {v0, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateSpeed(Ljava/lang/String;)V

    .line 198
    sput v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    .line 199
    sget-object v2, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadDialogVisible()V

    .line 202
    sget-object v2, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {v2, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->clearCache(Landroid/content/Context;)V

    .line 204
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getDownload()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getUrlTpl()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 205
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    const/16 v2, -0x14

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download url is not valid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/taptap/sdk/update/bean/UpdateResult;->getDownload()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getUrlTpl()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v0, v2, v3}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadFailed(ILjava/lang/String;)V

    const-string v0, "\u6587\u4ef6\u4e0b\u8f7d\u94fe\u63a5\u5f02\u5e38,\u8bf7\u901a\u8fc7\u6d4f\u89c8\u5668\u94fe\u63a5\u91cd\u8bd5"

    .line 209
    invoke-direct {p0, v0, p1, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showErrorAndRetry(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void

    .line 213
    :cond_5
    sget-object v1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    .line 215
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getDownload()Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateDownloadInfo;->getUrlTpl()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v3

    .line 217
    :goto_3
    new-instance v4, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;

    invoke-direct {v4, p1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$showDownloadDialog$1;-><init>(Landroid/content/Context;Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)V

    check-cast v4, Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;

    .line 213
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/update/download/TapUpdateDownloadListener;)V

    return-void
.end method

.method private final showErrorAndRetry(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 9

    .line 313
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 316
    sget v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    if-nez p3, :cond_2

    .line 317
    :cond_1
    invoke-direct {p0, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showCloseButton(Z)V

    .line 319
    :cond_2
    sget v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    if-nez p3, :cond_4

    :cond_3
    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v8, 0x0

    const-string v4, "\u6216\u70b9\u51fb\u6b64 \u94fe\u63a5 \u524d\u5f80\u6d4f\u89c8\u5668\u5b89\u88c5"

    move-object v3, p0

    move-object v7, p2

    .line 321
    invoke-direct/range {v3 .. v8}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getWebInstallSpannableString(Ljava/lang/String;IILandroid/content/Context;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 324
    :cond_4
    sget v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    if-le v1, v2, :cond_5

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_5

    .line 325
    sget-object v1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {v1, p2}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->clearCache(Landroid/content/Context;)V

    .line 328
    :cond_5
    invoke-direct {p0, p2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object p2

    .line 329
    check-cast p1, Ljava/lang/CharSequence;

    .line 331
    check-cast v0, Ljava/lang/CharSequence;

    sget-object v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$h4jsHDeA3SKola26Y75TAHeVHi8;->INSTANCE:Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$h4jsHDeA3SKola26Y75TAHeVHi8;

    .line 328
    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showDownloadErrorTips(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final showErrorAndRetry$lambda$4(Landroid/view/View;)V
    .locals 0

    .line 333
    sget-object p0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadRetryButtonClick()V

    .line 334
    sget p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->retryCount:I

    .line 335
    sget-object p0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->restartTask()V

    return-void
.end method

.method private final showInstallDialog(Landroid/content/Context;Ljava/io/File;)V
    .locals 7

    .line 340
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-nez v0, :cond_0

    return-void

    .line 344
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showCloseButton(Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v6, 0x1

    const-string v2, "\u5b89\u88c5\u5931\u8d25\uff1f\u53ef\u70b9\u51fb\u6b64 \u94fe\u63a5 \u524d\u5f80\u6d4f\u89c8\u5668\u5b89\u88c5"

    move-object v1, p0

    move-object v5, p1

    .line 347
    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getWebInstallSpannableString(Ljava/lang/String;IILandroid/content/Context;Z)Landroid/text/SpannableString;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 345
    new-instance v2, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$yAdXe7WcqYSYnBZ8qpggAiQ0Nu8;

    invoke-direct {v2, p2, p1}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$yAdXe7WcqYSYnBZ8qpggAiQ0Nu8;-><init>(Ljava/io/File;Landroid/content/Context;)V

    const-string v3, "\u5b89\u88c5 TapTap"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showFuncViewWithTips(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    sget-object v1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->INSTALL:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setDialogState(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;)V

    .line 362
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallDialogVisible()V

    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startInstallAPK(Landroid/content/Context;Ljava/io/File;Z)V

    return-void
.end method

.method private static final showInstallDialog$lambda$5(Ljava/io/File;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 356
    sget-object p2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startInstallAPK(Landroid/content/Context;Ljava/io/File;Z)V

    .line 358
    :cond_0
    sget-object p0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallConfirmButtonClick()V

    return-void
.end method

.method private final showLoadingDialog(Landroid/content/Context;)V
    .locals 1

    .line 132
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->show()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    .line 133
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;-><init>(Landroid/content/Context;)V

    .line 134
    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;->show()V

    .line 133
    sput-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->loadingDialog:Lcom/taptap/sdk/update/dialog/TapUpdateLoadingDialog;

    :cond_1
    return-void
.end method

.method private final showOpenDialog(Landroid/content/Context;)V
    .locals 7

    .line 441
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-nez v0, :cond_0

    return-void

    .line 443
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object v0

    .line 445
    sget-object v1, Lcom/taptap/sdk/update/bean/UIInformation;->Companion:Lcom/taptap/sdk/update/bean/UIInformation$Companion;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UIInformation$Companion;->newBuilder()Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    const-string v2, "\u66f4\u65b0\u6e38\u620f\uff0c\u9700\u4f7f\u7528 TapTap \u5ba2\u6237\u7aef"

    .line 446
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setUpdateTitle(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    .line 447
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getAppInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setAppInfo(Ljava/lang/String;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    .line 448
    sget-object v2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getLinks()Ljava/util/List;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->setLinkList(Ljava/util/List;)Lcom/taptap/sdk/update/bean/UIInformation$Builder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/taptap/sdk/update/bean/UIInformation$Builder;->build()Lcom/taptap/sdk/update/bean/UIInformation;

    move-result-object v1

    .line 444
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->updateUIInformation(Lcom/taptap/sdk/update/bean/UIInformation;)V

    const/4 v3, 0x0

    .line 452
    new-instance v4, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$tVmXf95A_uKItkheNNh9ZzM2c1c;

    invoke-direct {v4, p1}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$tVmXf95A_uKItkheNNh9ZzM2c1c;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v2, "\u6253\u5f00 TapTap \u53bb\u66f4\u65b0"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->showFuncViewWithTips$default(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 457
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->UPDATE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->setDialogState(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;)V

    .line 460
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateDialogVisible()V

    return-void
.end method

.method private static final showOpenDialog$lambda$9$lambda$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string p1, "$context"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    const-string v0, "gototap_update_but"

    invoke-direct {p1, p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInTapApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 454
    sget-object p0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackToTapUpdateButtonClick()V

    return-void
.end method

.method private final showUpdateDialog()V
    .locals 3

    .line 147
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->hideLoadingDialog()V

    .line 148
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 149
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateDialog:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->show()V

    :cond_1
    return-void
.end method

.method private final startInstallAPK(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 370
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->installAPK(Landroid/content/Context;Ljava/io/File;Z)V

    const-wide/16 p2, 0x12c

    .line 372
    new-instance v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startInstallAPK$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startInstallAPK$1;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p3, v0}, Lcom/taptap/sdk/update/extension/SystemExtKt;->runOnMainWithDelay(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateInTapApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 383
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    .line 384
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0, p2}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackOpenTapClient(Ljava/lang/String;)V

    .line 385
    sget-object p2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->updateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/taptap/sdk/update/bean/UpdateResult;->getUpdateUriTpl()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 387
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    sget-object p2, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p2}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateGameSuccess()V

    .line 390
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 383
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 390
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p2, "\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 391
    check-cast p2, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 392
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    const/4 p2, -0x1

    const-string v0, "open taptap client failed"

    invoke-virtual {p1, p2, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateGameFail(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final installSuccess(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->installConfirmDialog:Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateInstallConfirmDialog;->dismiss()V

    .line 435
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallComplete()V

    .line 436
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showOpenDialog(Landroid/content/Context;)V

    .line 437
    sget-object v0, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->clearCache(Landroid/content/Context;)V

    return-void
.end method

.method public final startUpdateGame(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->hideUpdateDialog()V

    .line 89
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->showLoadingDialog(Landroid/content/Context;)V

    .line 91
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->updateSessionId()V

    .line 92
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateGameStart()V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0}, Lcom/taptap/sdk/update/extension/BizExtKt;->getTapVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 97
    sget-object v2, Lcom/taptap/sdk/update/internal/TapUpdateApi;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi;

    const-string v3, "packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;

    invoke-direct {v3, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/taptap/sdk/update/TapUpdateApiCallback;

    invoke-virtual {v2, v1, v0, v3}, Lcom/taptap/sdk/update/internal/TapUpdateApi;->requestUpdateInfo(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;)Lkotlinx/coroutines/Job;

    return-void
.end method
