.class Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$2;
.super Ljava/lang/Object;
.source "GetWebUrlFromCDNTool.java"

# interfaces
.implements Lcom/juhe/juhesdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->getCDNConfigHttp(Ljava/lang/String;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

.field final synthetic val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cb"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$2;->this$0:Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    iput-object p2, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

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

    .line 112
    iget-object v0, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    invoke-interface {v0, p1, p2}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "serverUrl"

    .line 92
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->setJuheCacheServerUrl(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sput-object p1, Lcom/juhe/juhesdk/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    sput-object p1, Lcom/juhe/juhesdk/middle/common/Constants;->SERVER_URL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
