.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseUiListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 937
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Lcom/yofi/sdk/activity/YouFeiWebViewActivity$1;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 940
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "access_token"

    .line 942
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "YoFiImpWebvieTag"

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QQ\u767b\u5f55code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {v0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$800(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 948
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "e"
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener$1;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$BaseUiListener;Lcom/tencent/tauth/UiError;)V

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
