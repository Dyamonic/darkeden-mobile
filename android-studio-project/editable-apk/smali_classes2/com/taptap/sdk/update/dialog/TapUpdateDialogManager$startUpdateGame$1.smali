.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;
.super Ljava/lang/Object;
.source "TapUpdateDialogManager.kt"

# interfaces
.implements Lcom/taptap/sdk/update/TapUpdateApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startUpdateGame(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1",
        "Lcom/taptap/sdk/update/TapUpdateApiCallback;",
        "onError",
        "",
        "throwable",
        "",
        "onSuccess",
        "updateInfo",
        "Lcom/taptap/sdk/update/bean/UpdateResult;",
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


# instance fields
.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$7aWtn-x2aOkSpQ6dIEc6ay-rhYA(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->onError$lambda$1(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hSKCIiLGsd0EQBAcIEWyUP8vOPs(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->onSuccess$lambda$0(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method private static final onError$lambda$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackRequestFailedPositiveButtonClick()V

    .line 122
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startUpdateGame(Landroid/app/Activity;)V

    return-void
.end method

.method private static final onSuccess$lambda$0(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    const-string p1, "$activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackRequestFailedPositiveButtonClick()V

    .line 109
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->startUpdateGame(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUpdateInfo failed: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/internal/TapUpdateLoggerKt;->logInfo(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateGameFail(ILjava/lang/String;)V

    .line 119
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$hideLoadingDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V

    .line 120
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    new-instance v1, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$7aWtn-x2aOkSpQ6dIEc6ay-rhYA;

    invoke-direct {v1, v0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$7aWtn-x2aOkSpQ6dIEc6ay-rhYA;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->onDownloadReady(ZLandroid/view/View$OnClickListener;)V

    .line 124
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/update/bean/UpdateResult;)V
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUpdateInfo success: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/update/internal/TapUpdateLoggerKt;->logInfo(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$hideLoadingDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UpdateResult;->isDataValid()Z

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$setUpdateInfo$p(Lcom/taptap/sdk/update/bean/UpdateResult;)V

    .line 104
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UpdateResult;->getAppId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->setGameId(Ljava/lang/String;)V

    .line 105
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showConfirmDownloadDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)V

    goto :goto_1

    .line 107
    :cond_1
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$startUpdateGame$1;->$activity:Landroid/app/Activity;

    new-instance v2, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$hSKCIiLGsd0EQBAcIEWyUP8vOPs;

    invoke-direct {v2, v0}, Lcom/taptap/sdk/update/dialog/-$$Lambda$TapUpdateDialogManager$startUpdateGame$1$hSKCIiLGsd0EQBAcIEWyUP8vOPs;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v1, v2}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->onDownloadReady(ZLandroid/view/View$OnClickListener;)V

    .line 112
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$showUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V

    :goto_1
    return-void
.end method
