.class Lcom/yofi/sdk/imp/middle/view/PayView$1;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/PayView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V
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

    .line 102
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

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
            "view"
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPayCallback()Lcom/yofi/sdk/IFlashCallback;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$000(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/activity/ContainerActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->finish()V

    return-void
.end method
