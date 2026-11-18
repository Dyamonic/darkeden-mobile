.class Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/yofi/sdk/OnLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/channel/YoFiImp;->doLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHaveNewMessages()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    invoke-interface {v0}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onHaveNewMessages()V

    return-void
.end method

.method public onLoginFailed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 141
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    sget-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v1, v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onLoginSuccess(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-string v0, "accessToken"

    const-string v1, "yofiImp"

    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :goto_0
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v2

    .line 81
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v3

    .line 82
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;

    invoke-direct {v7, p0, v2}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$1;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;I)V

    .line 80
    invoke-static/range {v2 .. v7}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->juheLogin(IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 133
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;->this$0:Lcom/juhe/juhesdk/middle/channel/YoFiImp;

    iget-object p1, p1, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    sget-object v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->JSON_EXCEPTION:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v1, v1, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onLogoutSuccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    const-string p1, "yofiImp"

    const-string v0, "onLogoutSuccess: yofi_logout_success"

    .line 146
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 148
    new-instance v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$2;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2$2;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTapTapMomentMessage(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    return-void
.end method
