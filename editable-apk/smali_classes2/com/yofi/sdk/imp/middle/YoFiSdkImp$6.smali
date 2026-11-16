.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
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

    .line 1026
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$600(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$600(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
