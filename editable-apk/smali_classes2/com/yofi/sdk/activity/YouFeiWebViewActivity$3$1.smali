.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;

.field final synthetic val$jsMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$jsMsg"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;

    iput-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;->val$jsMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e00\u952e\u767b\u5f55\u4e3b\u52a8\u56de\u8c03js="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;->val$jsMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YoFiImpWebvieTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;

    iget-object v0, v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$3$1;->val$jsMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
