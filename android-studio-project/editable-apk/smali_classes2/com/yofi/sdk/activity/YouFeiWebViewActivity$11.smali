.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->localPhoneLogin(Ljava/lang/String;)V
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

    .line 670
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 679
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "errorMsg"

    .line 680
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "javascript:%s(%d,%s)"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 681
    iget-object v2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$900(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 682
    iget-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$500(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Landroid/webkit/WebView;

    move-result-object p2

    new-instance v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;

    invoke-direct {v0, p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11$1;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$11;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$800(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    return-void
.end method
