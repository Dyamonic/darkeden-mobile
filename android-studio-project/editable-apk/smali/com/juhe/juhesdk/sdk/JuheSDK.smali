.class public Lcom/juhe/juhesdk/sdk/JuheSDK;
.super Ljava/lang/Object;
.source "JuheSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "juhesdk_tag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearWebCache()V
    .locals 1

    .line 430
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->clearWebCache()V

    :cond_0
    return-void
.end method

.method public static eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "bundle"
        }
    .end annotation

    .line 437
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static exitGame()V
    .locals 1

    .line 239
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->exitGame()V

    :cond_0
    return-void
.end method

.method private static extractedInit(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb",
            "savedInstanceState",
            "channelId"
        }
    .end annotation

    const/16 v0, 0x23

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 163
    :goto_0
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v1

    new-instance v2, Lcom/juhe/juhesdk/sdk/JuheSDK$3;

    invoke-direct {v2, v0, p3, p0, p1}, Lcom/juhe/juhesdk/sdk/JuheSDK$3;-><init>(ZILandroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    invoke-interface {v1, p0, v2, p2}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static finish()V
    .locals 1

    .line 311
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->finish()V

    :cond_0
    return-void
.end method

.method public static gameStage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 228
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getshowRepotToast()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getActivityContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gameStage\u57cb\u70b9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6210\u529f\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 235
    :cond_0
    invoke-static {p0}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->gameStage(Ljava/lang/String;)V

    return-void
.end method

.method public static getAppPackageBuild()Ljava/lang/String;
    .locals 1

    .line 415
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 420
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPackageVersion()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 4

    const-string v0, "juhesdk_tag"

    const-string v1, "\u5f00\u59cb\u8c03\u7528\uff1agetChannelId()"

    .line 369
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/utils/CommonUtils;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8c03\u7528\uff1agetChannelId()\u8fd4\u56de\u503c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getExtrasParameters(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "key"
        }
    .end annotation

    .line 391
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static getGameChannelId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getGameChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJuHeSDKVersion()Ljava/lang/String;
    .locals 1

    .line 386
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getJuHeSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    .line 360
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static getServerState(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string v0, "\u83b7\u53d6\u72b6\u6001\u5931\u8d25"

    .line 215
    invoke-interface {p1, p0, v0}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->getServerState(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb"
        }
    .end annotation

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-static {p0, p1, v0}, Lcom/juhe/juhesdk/sdk/JuheSDK;->init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb",
            "savedInstanceState"
        }
    .end annotation

    .line 79
    sget-boolean v0, Lcom/juhe/juhesdk/app/JuHeApplication;->hasInJuHeApplication:Z

    if-nez v0, :cond_0

    const-string p2, "JuHeApplication\u672a\u542f\u52a8\uff0c\u521d\u59cb\u5316\u5931\u8d25"

    .line 80
    invoke-static {p0, p2}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->juHeToast(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 p0, -0x1

    const-string p2, "app init failed"

    .line 81
    invoke-interface {p1, p0, p2}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p0}, Lcom/juhe/juhesdk/utils/CommonUtils;->init(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->isNetWorkActive()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "juhesdk_tag"

    const-string v2, "network is bad \u7f51\u7edc\u5df2\u65ad\u5f00\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc"

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheCacheServerUrl()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Juhe\u83b7\u53d6\u7684\u7f13\u5b58server\u5730\u5740 =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "juheCacheServerUrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    sput-object v1, Lcom/juhe/juhesdk/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_2
    sput-object v1, Lcom/juhe/juhesdk/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    .line 105
    :cond_3
    :goto_0
    new-instance v1, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;

    invoke-direct {v1}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;-><init>()V

    .line 106
    invoke-virtual {v1}, Lcom/juhe/juhesdk/utils/GetWebUrlFromCDNTool;->beginFetch()V

    .line 108
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    .line 109
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v2

    .line 110
    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p0, p1, p2, v1}, Lcom/juhe/juhesdk/sdk/JuheSDK;->extractedInit(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;I)V

    .line 116
    new-instance p1, Lcom/juhe/juhesdk/sdk/JuheSDK$2;

    invoke-direct {p1, p0}, Lcom/juhe/juhesdk/sdk/JuheSDK$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v2, v1, v0, p1}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->checkUpdate(IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    sget-object p0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget p0, p0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->INIT_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget-object v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->msg:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/juhe/juhesdk/sdk/OnLoginCallback;->onLoginFailed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    const/4 v1, 0x1

    .line 44
    invoke-static {p0, v0, v1}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->sdkStage(Landroid/content/Context;IZ)V

    .line 45
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/sdk/JuheSDK$1;

    invoke-direct {v1, p0, p1}, Lcom/juhe/juhesdk/sdk/JuheSDK$1;-><init>(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V

    invoke-interface {v0, p0, v1}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V

    :goto_0
    return-void
.end method

.method public static logout()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->logout()V

    :cond_0
    return-void
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 293
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static onAttachedToWindow()V
    .locals 1

    .line 317
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onBackPressed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 305
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onDestroy(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 287
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 257
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onPause(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onRestart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 263
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onResume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 329
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onStart(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onStop(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    .line 323
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public static pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "payInfo",
            "cb"
        }
    .end annotation

    .line 206
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string p1, "\u652f\u4ed8\u5931\u8d25"

    .line 207
    invoke-interface {p2, p0, p1}, Lcom/juhe/juhesdk/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roleId",
            "roleName",
            "serverId",
            "serverName"
        }
    .end annotation

    .line 341
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showUserCenter()V
    .locals 1

    .line 347
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->showUserCenter()V

    :cond_0
    return-void
.end method

.method public static submitGameData(Lcom/juhe/juhesdk/middle/data/GameData;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation

    .line 222
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->submitGameData(Lcom/juhe/juhesdk/middle/data/GameData;I)V

    :cond_0
    return-void
.end method

.method public static switchAccount(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 353
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->switchAccount(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static tapTapOpenReview()V
    .locals 1

    .line 403
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->tapTapOpenReview()V

    :cond_0
    return-void
.end method
