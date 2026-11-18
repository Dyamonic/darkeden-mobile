.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;
.super Landroid/webkit/WebViewClient;
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

    .line 823
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 980
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 971
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 862
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    monitor-enter v0

    .line 863
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 864
    :goto_0
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 865
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    invoke-static {v2, v3}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$500(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$1002(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 869
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 871
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 874
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 869
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 836
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 839
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    goto :goto_0

    .line 1001
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    goto :goto_0

    .line 951
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    :goto_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 962
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 987
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0

    .line 990
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :goto_0
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto :goto_0

    .line 1040
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    :goto_0
    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    .line 931
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 1030
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 921
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "/api/account/v1/profile"

    .line 901
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 903
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    .line 905
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 908
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_2

    .line 909
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 911
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1017
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 1020
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 830
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
