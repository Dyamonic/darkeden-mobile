.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 348
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->clearCache()V

    .line 350
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 351
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$4;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$200(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
