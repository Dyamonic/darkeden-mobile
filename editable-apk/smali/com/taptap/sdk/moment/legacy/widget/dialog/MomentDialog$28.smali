.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;
.super Landroid/webkit/WebChromeClient;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    .line 629
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 630
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28$1;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 638
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 639
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 640
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onHideCustomView()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    .line 697
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 673
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 674
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 675
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 678
    :cond_0
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    .line 679
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 680
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->setVisibility(I)V

    .line 682
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 685
    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 661
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1502(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 662
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 663
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1302(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 646
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1302(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 651
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 655
    iget-object p3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p3, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1302(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 656
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$28;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;[Ljava/lang/String;)V

    return-void
.end method
