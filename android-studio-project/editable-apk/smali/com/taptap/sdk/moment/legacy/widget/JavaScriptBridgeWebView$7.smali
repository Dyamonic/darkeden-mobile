.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;
.super Landroid/webkit/WebChromeClient;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 791
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 799
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 804
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 807
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 587
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 782
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1

    .line 570
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 12

    move-object v0, p0

    .line 711
    iget-object v1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v1, v1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v2, v1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto :goto_0

    .line 715
    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto :goto_0

    .line 734
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    .line 725
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    :goto_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 559
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 601
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 602
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 603
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance p3, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;

    invoke-direct {p3, p0, p4}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 604
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 703
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 627
    :cond_1
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$2;

    invoke-direct {p1, p0, p4}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V

    .line 639
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p4}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 640
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    .line 641
    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    .line 642
    invoke-virtual {p2, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/high16 p3, 0x1040000

    .line 643
    invoke-virtual {p2, p3, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 8

    .line 653
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v2, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 659
    :cond_1
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 660
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_2

    .line 662
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 664
    :cond_2
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 665
    new-instance p4, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$3;

    invoke-direct {p4, p0, p5, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$3;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    .line 677
    new-instance p5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 678
    invoke-virtual {p5, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 679
    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/4 p5, 0x0

    .line 680
    invoke-virtual {p3, p5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x104000a

    .line 681
    invoke-virtual {p3, v0, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    const/high16 v0, 0x1040000

    .line 682
    invoke-virtual {p3, v0, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 683
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 684
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    const/4 v0, -0x2

    invoke-direct {p3, p4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p4, 0x41800000    # 16.0f

    mul-float/2addr p4, p2

    float-to-int p4, p4

    .line 688
    invoke-virtual {p3, p4, p5, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 689
    iput v1, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 690
    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p3, 0x41700000    # 15.0f

    mul-float/2addr p3, p2

    float-to-int p3, p3

    const/high16 p4, 0x40a00000    # 5.0f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    sub-int p2, p3, p2

    .line 692
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/widget/EditText;->setPadding(IIII)V

    return v1
.end method

.method public onJsTimeout()Z
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0

    .line 765
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    :goto_0
    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    goto :goto_0

    .line 756
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    :goto_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 521
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 578
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 550
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0

    .line 539
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    :goto_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
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

    .line 815
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1

    .line 819
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method
