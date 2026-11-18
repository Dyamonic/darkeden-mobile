.class Lcom/yofi/sdk/imp/middle/view/PayView$3;
.super Landroid/os/Handler;
.source "PayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/view/PayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/PayView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/PayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/yofi/sdk/web/PayResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1}, Lcom/yofi/sdk/web/PayResult;-><init>(Ljava/util/Map;)V

    .line 163
    invoke-virtual {v0}, Lcom/yofi/sdk/web/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9000"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$500(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/imp/middle/data/PayInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->getAmount()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "amount"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    const-string v1, "reportType"

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object p1

    const-string v1, "Purchase"

    invoke-virtual {p1, v1, v0}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const-string v0, "pay success"

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$3;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$000(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/activity/ContainerActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->finish()V

    :cond_0
    return-void
.end method
