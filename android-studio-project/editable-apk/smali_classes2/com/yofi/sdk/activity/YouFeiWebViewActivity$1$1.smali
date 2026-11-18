.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "title"
        }
    .end annotation

    .line 132
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error Page Title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YoFiImpWebvieTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;

    iget-object v0, v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u52a0\u8f7d\u5931\u8d25\uff0ccode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;

    iget-object v2, v2, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$300(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\uff0cmsg\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$400(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;

    iget-object p1, p1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
