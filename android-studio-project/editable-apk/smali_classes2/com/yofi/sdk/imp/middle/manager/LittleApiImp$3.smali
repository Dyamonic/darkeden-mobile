.class final Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;
.super Ljava/lang/Object;
.source "LittleApiImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->createOrder(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/PayInfo;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/yofi/sdk/web/WebAPICallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$cb"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
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

    const-string v0, "LittleApi"

    const-string v1, "Create Order Failed"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

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

    const-string v0, "LittleApi"

    const-string v1, "Create Order Success"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {v0, p1}, Lcom/yofi/sdk/web/WebAPICallback;->onSuccess(Lorg/json/JSONObject;)V

    return-void
.end method
