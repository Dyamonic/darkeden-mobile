.class public Lcom/yofi/sdk/YoFiSDK;
.super Ljava/lang/Object;
.source "YoFiSDK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindPhone(Landroid/content/Context;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cb"
        }
    .end annotation

    .line 177
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string v0, ""

    .line 178
    invoke-interface {p1, p0, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/ISDKApi;->bindPhone(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static clearWebCache()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->getInstance()Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/cachewebviewlib/WebViewCacheInterceptorInst;->clearCache()V

    return-void
.end method

.method public static destory(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->destory(Landroid/content/Context;)V

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

    .line 210
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/ISDKApi;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent",
            "cb"
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string p1, ""

    .line 152
    invoke-interface {p2, p0, p1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/yofi/sdk/interfaces/ISDKApi;->execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static gameStage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->gameStage(I)V

    return-void
.end method

.method public static getAge()I
    .locals 1

    .line 76
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getAge()I

    move-result v0

    return v0
.end method

.method public static getAppChannel()I
    .locals 1

    .line 49
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getAppChannel()I

    move-result v0

    return v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .line 29
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppPrivateKey()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getAppPrivateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .line 53
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOS()Ljava/lang/String;
    .locals 1

    .line 69
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getOS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOaid()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKName()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getSDKName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerState(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
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

    .line 84
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string v0, ""

    .line 85
    invoke-interface {p1, p0, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/ISDKApi;->getServerState(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWechatAppId()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->getWechatAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "activity",
            "isLandScape",
            "cb"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p0}, Lcom/yofi/sdk/utils/CommonUtils;->init(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/YoFiSDK$1;

    invoke-direct {v1, p2}, Lcom/yofi/sdk/YoFiSDK$1;-><init>(Lcom/yofi/sdk/IFlashCallback;)V

    invoke-interface {v0, p0, p1, v1}, Lcom/yofi/sdk/interfaces/ISDKApi;->initialize(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method public static isTourist()Ljava/lang/Boolean;
    .locals 1

    .line 79
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->isTourist()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V
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

    .line 121
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    .line 122
    invoke-interface {p1, p0}, Lcom/yofi/sdk/OnLoginCallback;->onLoginFailed(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/ISDKApi;->login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V

    :goto_0
    return-void
.end method

.method public static logout()V
    .locals 1

    .line 117
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->logout()V

    return-void
.end method

.method public static onApplicationCreate(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    .line 205
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->onApplicationCreate(Landroid/app/Application;)V

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

    .line 164
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->onPause(Landroid/app/Activity;)V

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

    .line 161
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V
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

    .line 129
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, -0x3ef

    const-string p1, ""

    .line 130
    invoke-interface {p2, p0, p1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/yofi/sdk/interfaces/ISDKApi;->pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method

.method public static setIsLandScape(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLandScape"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/yofi/sdk/interfaces/ISDKApi;->setScreenIsLandScape(Z)V

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

    .line 172
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/yofi/sdk/interfaces/ISDKApi;->showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showUserCenter()V
    .locals 1

    .line 168
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/ISDKApi;->showUserCenter()V

    return-void
.end method

.method public static submitGameData(Lcom/yofi/sdk/imp/middle/data/GameData;I)V
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

    .line 141
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getSDK()Lcom/yofi/sdk/interfaces/ISDKApi;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/ISDKApi;->submitGameData(Lcom/yofi/sdk/imp/middle/data/GameData;I)V

    return-void
.end method

.method public static tapTapOpenMoment()V
    .locals 1

    .line 186
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->tapTapOpenMoment()V

    return-void
.end method

.method public static tapTapOpenReview()V
    .locals 1

    .line 190
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->tapTapOpenReview()V

    return-void
.end method

.method public static tapTapOpenUpdate(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->tapTapOpenUpdate(Landroid/app/Activity;)V

    return-void
.end method
