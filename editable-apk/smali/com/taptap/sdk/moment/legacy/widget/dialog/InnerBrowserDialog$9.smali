.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 417
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 418
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 419
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$9;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 421
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
