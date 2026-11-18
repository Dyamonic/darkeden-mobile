.class public Lcom/juhe/juhesdk/middle/manager/LittleApiImp;
.super Ljava/lang/Object;
.source "LittleApiImp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkOrder(IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "channelId",
            "juheOrderIds",
            "cb"
        }
    .end annotation

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/juhe/juhesdk/middle/common/WebAPI;->checkOrder(IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static checkUpdate(IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "channel",
            "version",
            "cb"
        }
    .end annotation

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/juhe/juhesdk/middle/common/WebAPI;->checkUpdate(IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static createOrder(Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/PayInfo;IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "payInfo",
            "appId",
            "channelId",
            "extension",
            "cb"
        }
    .end annotation

    .line 46
    invoke-static/range {p0 .. p5}, Lcom/juhe/juhesdk/middle/common/WebAPI;->createOrder(Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/PayInfo;IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static createRole(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p0

    .line 69
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    .line 71
    invoke-static {p1, p0, p2, v1, v0}, Lcom/juhe/juhesdk/middle/common/WebAPI;->createRole(Ljava/lang/String;ILcom/juhe/juhesdk/middle/data/GameData;ILjava/lang/String;)V

    return-void
.end method

.method public static gameStage(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v7

    .line 117
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v6

    .line 119
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionCode()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    .line 123
    invoke-static/range {v1 .. v7}, Lcom/juhe/juhesdk/middle/common/WebAPI;->gameStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static juheLogin(IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "appId",
            "channelId",
            "extension",
            "isAdult",
            "age",
            "cb"
        }
    .end annotation

    .line 15
    invoke-static/range {p0 .. p5}, Lcom/juhe/juhesdk/middle/common/WebAPI;->login(IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static pay(Ljava/lang/String;IDLjava/lang/String;ILcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderID",
            "appId",
            "money",
            "extraParam",
            "channel",
            "cb"
        }
    .end annotation

    .line 32
    invoke-static/range {p0 .. p6}, Lcom/juhe/juhesdk/middle/common/WebAPI;->pay(Ljava/lang/String;IDLjava/lang/String;ILcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public static roleLevel(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p0

    .line 83
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    .line 85
    invoke-static {p1, p0, p2, v0, v1}, Lcom/juhe/juhesdk/middle/common/WebAPI;->roleLevel(Ljava/lang/String;ILcom/juhe/juhesdk/middle/data/GameData;Ljava/lang/String;I)V

    return-void
.end method

.method public static roleLogin(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result p0

    .line 76
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    .line 78
    invoke-static {p1, p0, p2, v0, v1}, Lcom/juhe/juhesdk/middle/common/WebAPI;->roleLogin(Ljava/lang/String;ILcom/juhe/juhesdk/middle/data/GameData;Ljava/lang/String;I)V

    return-void
.end method

.method public static sdkStage(Landroid/content/Context;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "stage",
            "needDetUniqueID"
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v6

    if-eqz p2, :cond_0

    .line 99
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getmDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    move-object v4, p0

    .line 101
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v5

    .line 103
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v0, p1

    .line 107
    invoke-static/range {v0 .. v6}, Lcom/juhe/juhesdk/middle/common/WebAPI;->sdkStage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 109
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->setSdkStage(I)V

    return-void
.end method

.method public static submitGameData(ILandroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "context",
            "accessToken",
            "data"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->CREATE:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 59
    invoke-static {p1, p2, p3}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->createRole(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V

    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->LOGIN:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 61
    invoke-static {p1, p2, p3}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->roleLogin(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->LEVELUP:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 63
    invoke-static {p1, p2, p3}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->roleLevel(Landroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V

    :cond_2
    :goto_0
    return-void
.end method
