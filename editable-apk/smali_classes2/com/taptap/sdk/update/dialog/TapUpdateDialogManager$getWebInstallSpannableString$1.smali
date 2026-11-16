.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;
.super Landroid/text/style/ClickableSpan;
.source "TapUpdateDialogManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->getWebInstallSpannableString(Ljava/lang/String;IILandroid/content/Context;Z)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1",
        "Landroid/text/style/ClickableSpan;",
        "onClick",
        "",
        "widget",
        "Landroid/view/View;",
        "updateDrawState",
        "ds",
        "Landroid/text/TextPaint;",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $fromInstall:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;->$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;->$fromInstall:Z

    .line 405
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 413
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateInfo$p()Lcom/taptap/sdk/update/bean/UpdateResult;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager;->access$getUpdateInfo$p()Lcom/taptap/sdk/update/bean/UpdateResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/taptap/sdk/update/bean/UpdateResult;->getUpdateUrlTpl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 418
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, "TapUpdateLog"

    invoke-static {v2, v0, p1, v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 422
    :goto_1
    iget-boolean p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialogManager$getWebInstallSpannableString$1;->$fromInstall:Z

    if-eqz p1, :cond_2

    .line 423
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackInstallLinkButtonClick()V

    goto :goto_2

    .line 425
    :cond_2
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->trackDownloadLinkButtonClick()V

    :goto_2
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "#00D9C5"

    .line 407
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 408
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
