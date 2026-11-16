.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;
.super Landroid/webkit/WebViewClient;
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
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    .line 593
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 599
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 601
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->generateWebResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 607
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$27;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->generateWebResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 618
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
