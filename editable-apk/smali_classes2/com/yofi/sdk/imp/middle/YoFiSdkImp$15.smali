.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$syOneKeyLoginCallback"
        }
    .end annotation

    .line 1577
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;->val$syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
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

    .line 1597
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;->val$syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    const/4 v0, -0x1

    invoke-interface {p1, v0, p2}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

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

    .line 1581
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;)V

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1400(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method
