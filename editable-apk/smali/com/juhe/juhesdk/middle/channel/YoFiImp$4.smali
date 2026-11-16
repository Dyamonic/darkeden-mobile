.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/juhe/juhesdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

.field final synthetic val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Lcom/juhe/juhesdk/middle/data/PayInfo;Landroid/content/Context;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$payCallback",
            "val$context",
            "val$payInfo"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iput-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    iput-object p3, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

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

    .line 309
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {p1, v0, p2}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

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

    :try_start_0
    const-string v0, "code"

    .line 259
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data"

    .line 261
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "juheOrderId"

    .line 262
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelGoodsId"

    .line 263
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    new-instance v1, Lcom/yofi/sdk/imp/middle/data/PayInfo;

    invoke-direct {v1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;-><init>()V

    .line 265
    invoke-virtual {v1, v0}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setAmount(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setProductId(Ljava/lang/String;)V

    .line 268
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getProductName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setServerId(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getServerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setServerName(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setRoleId(Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setRoleName(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getRoleLevel()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setRoleLevel(I)V

    .line 274
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payInfo:Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->getExtraParam()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->setExtraParam(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$1;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;)V

    invoke-static {p1, v1, v0}, Lcom/yofi/sdk/YoFiSDK;->pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V

    goto :goto_0

    :cond_0
    const-string v0, "msg"

    .line 290
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {v0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$300(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;

    invoke-direct {v1, p0, p1}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4$2;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 297
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;->val$payCallback:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    sget-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v1, v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {v0, v1, p1}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
