.class Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;
.super Ljava/lang/Object;
.source "GetWebUrlFromCDNTool.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->getCDNConfigHttp(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;

.field final synthetic val$cb:Lcom/yofi/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;Lcom/yofi/sdk/IFlashCallback;)V
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

    .line 86
    iput-object p1, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;->this$0:Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;

    iput-object p2, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

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

    .line 138
    iget-object v0, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "taskServerUrl"

    const-string v1, "h5Url"

    const-string v2, "serverUrl"

    .line 90
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setCacheServerUrl(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    sput-object v2, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_0
    sput-object v2, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    .line 104
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setCacheWebUrl(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    sput-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_2
    sput-object v1, Lcom/yofi/sdk/imp/middle/common/Constants;->WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setCacheTaskServerUrl(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    sput-object p1, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_TASK_SERVER_URL:Ljava/lang/String;

    goto :goto_2

    .line 126
    :cond_4
    sput-object p1, Lcom/yofi/sdk/imp/middle/common/Constants;->TASK_SERVER_URL:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
