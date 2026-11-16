.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2;
.super Ljava/lang/Object;
.source "TapUpdateDialogManager.kt"

# interfaces
.implements Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getUpdateDialog(Landroid/content/Context;)Lcom/taptap/sdk/update/dialog/TapUpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialog$IUpdateCancelListener;",
        "onUpdateCancel",
        "",
        "state",
        "Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;",
        "fromCloseButton",
        "",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateCancel(Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 67
    :cond_0
    sget-object p2, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getUpdateDialog$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackToTapUpdateCloseButtonClick()V

    goto :goto_1

    .line 70
    :cond_2
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallCloseButtonClick()V

    goto :goto_1

    .line 69
    :cond_3
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateCloseButtonClick()V

    goto :goto_1

    .line 68
    :cond_4
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateCancelButtonClick()V

    .line 75
    :goto_1
    sget-object p1, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->INSTANCE:Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/TapUpdateDownloadManager;->cancelDownload()V

    .line 76
    sget-object p1, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateInternal;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/TapUpdateInternal;->notifyUpdateCancel()V

    .line 78
    sget-object p1, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->INSTANCE:Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;

    invoke-static {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$hideUpdateDialog(Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;)V

    .line 80
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackUpdateGameCancel()V

    return-void
.end method
