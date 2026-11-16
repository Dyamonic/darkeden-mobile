.class final Lcom/yofi/sdk/YoFiSDK$1;
.super Ljava/lang/Object;
.source "YoFiSDK.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/YoFiSDK;->init(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/yofi/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$cb"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/yofi/sdk/YoFiSDK$1;->val$cb:Lcom/yofi/sdk/IFlashCallback;

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
            "error"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/yofi/sdk/YoFiSDK$1;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

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

    .line 100
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->sdkStage(I)V

    .line 101
    iget-object p1, p0, Lcom/yofi/sdk/YoFiSDK$1;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
