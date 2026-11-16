.class public Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;
.super Ljava/lang/Object;
.source "LittleApiImp.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "LittleApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alipay(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "orderId",
            "cb"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$5;

    invoke-direct {v0, p1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$5;-><init>(Lcom/yofi/sdk/web/WebAPICallback;)V

    invoke-static {p0, v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->alipay(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static clientLog(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "content",
            "cb"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->clientLog(Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static clientReportOrderToAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "accessToken",
            "isLoadBackH5Success",
            "orderId",
            "cb"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$4;

    invoke-direct {v0, p3}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$4;-><init>(Lcom/yofi/sdk/web/WebAPICallback;)V

    invoke-static {p0, p1, p2, v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->clientReportOrderToAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static createOrder(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/PayInfo;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "accessToken",
            "payInfo",
            "version",
            "cb"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v5

    .line 69
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 70
    new-instance v7, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;

    invoke-direct {v7, p3}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$3;-><init>(Lcom/yofi/sdk/web/WebAPICallback;)V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->createOrder(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/PayInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static createRole(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v0

    .line 110
    invoke-static {p0, p1, v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->createRole(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;I)V

    return-void
.end method

.method public static deviceModel()V
    .locals 0

    .line 156
    invoke-static {}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->deviceModel()V

    return-void
.end method

.method public static evaluateChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "accessToken",
            "closeTime",
            "isOk",
            "message",
            "score",
            "cb"
        }
    .end annotation

    .line 142
    new-instance v5, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$6;

    invoke-direct {v5, p5}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$6;-><init>(Lcom/yofi/sdk/web/WebAPICallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->evaluateChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static gameStage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stage",
            "appBuildVersion",
            "appVersion"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v7

    .line 128
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 129
    invoke-static/range {v1 .. v7}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->gameStage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static getOrderStatus(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "orderId",
            "cb"
        }
    .end annotation

    .line 165
    invoke-static {p0, p1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->getOrderStatus(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static logout(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "accessToken",
            "cb"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;

    invoke-direct {v0, p1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$2;-><init>(Lcom/yofi/sdk/IFlashCallback;)V

    invoke-static {p0, v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->logout(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public static roleLevel(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v1

    .line 122
    invoke-static {p0, p1, v0, v1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->roleLevel(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;Ljava/lang/String;I)V

    return-void
.end method

.method public static roleLogin(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "gameData"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v1

    .line 116
    invoke-static {p0, p1, v0, v1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->roleLogin(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;Ljava/lang/String;I)V

    return-void
.end method

.method public static sdkStage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stage",
            "appBuildVersion",
            "appVersion"
        }
    .end annotation

    .line 132
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v7

    .line 134
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAndroidId()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOaid()Ljava/lang/String;

    move-result-object v9

    .line 137
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMac()Ljava/lang/String;

    move-result-object v10

    const-string v1, ""

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 138
    invoke-static/range {v1 .. v10}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->sdkStage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static taptapLogin(Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "token",
            "version",
            "cb"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v8

    .line 25
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAndroidId()Ljava/lang/String;

    move-result-object v11

    .line 27
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOaid()Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMac()Ljava/lang/String;

    move-result-object v13

    .line 29
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->TAPTAP:Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$LOGIN_TYPE;->getValue()I

    move-result v1

    new-instance v14, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$1;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp$1;-><init>(Lcom/yofi/sdk/web/WebAPICallback;)V

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    const-string v7, ""

    move-object v4, p0

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v14}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->login(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method
