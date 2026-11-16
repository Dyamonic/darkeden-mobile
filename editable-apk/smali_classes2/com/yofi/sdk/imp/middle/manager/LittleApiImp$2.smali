.class final Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;
.super Ljava/lang/Object;
.source "LittleApiImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->logout(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
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

    .line 48
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    const-string p2, "LittleApi"

    const-string v0, "Logout Failed"

    .line 58
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "error"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    const/16 v1, -0x3ee

    invoke-interface {p1, v1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
