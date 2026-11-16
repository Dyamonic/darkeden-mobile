.class public final Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;
.super Landroid/text/style/ClickableSpan;
.source "TapUpdateDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->generateLinkView(Lcom/taptap/sdk/update/bean/UpdateFuncLink;)Landroid/widget/TextView;
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
        "com/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1",
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
.field final synthetic $linkBean:Lcom/taptap/sdk/update/bean/UpdateFuncLink;

.field final synthetic this$0:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;Lcom/taptap/sdk/update/bean/UpdateFuncLink;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;->this$0:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    iput-object p2, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;->$linkBean:Lcom/taptap/sdk/update/bean/UpdateFuncLink;

    .line 431
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    :try_start_0
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;->$linkBean:Lcom/taptap/sdk/update/bean/UpdateFuncLink;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/bean/UpdateFuncLink;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 440
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    iget-object p1, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;->this$0:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "TapUpdateLog"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/taptap/sdk/update/dialog/TapUpdateDialog$generateLinkView$1;->this$0:Lcom/taptap/sdk/update/dialog/TapUpdateDialog;

    invoke-static {v0}, Lcom/taptap/sdk/update/dialog/TapUpdateDialog;->access$getLinkTextColor$p(Lcom/taptap/sdk/update/dialog/TapUpdateDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
