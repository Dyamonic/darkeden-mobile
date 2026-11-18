.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->loginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$isRegGame:I

.field final synthetic val$nickname:Ljava/lang/String;

.field final synthetic val$obj:Lorg/json/JSONObject;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;ILjava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$accessToken",
            "val$userId",
            "val$obj",
            "val$nickname",
            "val$isRegGame"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    iput p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$isRegGame:I

    iput-object p3, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$nickname:Ljava/lang/String;

    iput-object p4, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$obj:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 595
    iget v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$isRegGame:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 596
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->sdkStage(I)V

    .line 597
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object v0

    const-string v2, "Complete_Registration"

    invoke-virtual {v0, v2, v1}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 599
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->sdkStage(I)V

    .line 600
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object v0

    const-string v2, "login"

    invoke-virtual {v0, v2, v1}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 602
    :goto_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b22\u8fce\u5f52\u6765,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yofi/sdk/utils/ToastUtils;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$obj:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yofi/sdk/OnLoginCallback;->onLoginSuccess(Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->sdkStage(I)V

    .line 605
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8$1;-><init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getInitParams(Lcom/yofi/sdk/IFlashCallback;)V

    .line 619
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    iget-object v1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$accessToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$700(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->finish()V

    return-void
.end method
