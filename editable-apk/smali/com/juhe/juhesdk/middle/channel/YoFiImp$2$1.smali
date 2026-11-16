.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/juhe/juhesdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->onLoginSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

.field final synthetic val$appId:I


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$appId"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iput p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->val$appId:I

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

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "    "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->val$appId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JuheSDKLogin"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {p1, v0, p2}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "token"

    .line 87
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yofiImp"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "code"

    .line 93
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    .line 94
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "JuheSdkImp"

    .line 95
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    const-string v3, "data"

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object v3, v3, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$102(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "channelUserName"

    .line 101
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "channelUserId"

    .line 102
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    new-instance v3, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;

    invoke-direct {v3}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;-><init>()V

    .line 104
    iget-object v4, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object v4, v4, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {v4}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$100(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setAccessToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3, v1}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setCode(I)V

    .line 106
    invoke-virtual {v3, p1}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setUserId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v0}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setUserName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v2}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setMsg(Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$200(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/juhe/juhesdk/middle/data/JuHeLoginData;->setChannelId(I)V

    .line 110
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-static {p1}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->access$300(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1$1;

    invoke-direct {v0, p0, v2}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1$1;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 118
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->SERVER_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {p1, v0, v2}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 122
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;->this$1:Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    sget-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v1, v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
