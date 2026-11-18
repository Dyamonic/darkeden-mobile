.class Lcom/yofi/sdk/activity/WebPayView$3;
.super Ljava/lang/Object;
.source "WebPayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/WebPayView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/WebPayView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/WebPayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param1View"
        }
    .end annotation

    .line 175
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {p1}, Lcom/yofi/sdk/activity/WebPayView;->access$000(Lcom/yofi/sdk/activity/WebPayView;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 177
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const-string v0, "pay success"

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {p1}, Lcom/yofi/sdk/activity/WebPayView;->access$100(Lcom/yofi/sdk/activity/WebPayView;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 181
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const/4 v1, -0x1

    invoke-interface {p1, v1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    .line 188
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {p1}, Lcom/yofi/sdk/activity/WebPayView;->access$200(Lcom/yofi/sdk/activity/WebPayView;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "btnClose hasUploadToutiao = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v0}, Lcom/yofi/sdk/activity/WebPayView;->access$200(Lcom/yofi/sdk/activity/WebPayView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebPayViewTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v0}, Lcom/yofi/sdk/activity/WebPayView;->access$300(Lcom/yofi/sdk/activity/WebPayView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v1}, Lcom/yofi/sdk/activity/WebPayView;->access$400(Lcom/yofi/sdk/activity/WebPayView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOrderSatusToUpdataToutiao(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_2
    iget-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$3;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/WebPayView;->finish()V

    return-void
.end method
