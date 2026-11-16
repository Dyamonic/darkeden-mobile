.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->onFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;

.field final synthetic val$jsMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;Ljava/lang/String;)V
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

    .line 682
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;

    iput-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;->val$jsMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;

    iget-object v0, v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;->val$jsMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
