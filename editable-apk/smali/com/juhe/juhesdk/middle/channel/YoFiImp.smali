.class public Lcom/juhe/juhesdk/middle/channel/YoFiImp;
.super Ljava/lang/Object;
.source "YoFiImp.java"

# interfaces
.implements Lcom/juhe/juhesdk/interfaces/ISDKApi;


# instance fields
.field private channelId:I

.field initCb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

.field private mAccessToken:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mAccessToken:Ljava/lang/String;

    const/4 v0, 0x1

    .line 45
    iput v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->channelId:I

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->doLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mAccessToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->channelId:I

    return p0
.end method

.method static synthetic access$300(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)Landroid/app/Activity;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private doLogin()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$2;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    invoke-static {v0, v1}, Lcom/yofi/sdk/YoFiSDK;->login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V

    return-void
.end method

.method private initSdk()V
    .locals 3

    .line 214
    invoke-static {}, Lcom/juhe/juhesdk/utils/JuHeToolUtils;->getOrientation()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u805a\u5408\u5c4f\u5e55\u503c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "juHeOrientation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "0"

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "1"

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 225
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;

    invoke-direct {v2, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$3;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    invoke-static {v0, v1, v2}, Lcom/yofi/sdk/YoFiSDK;->init(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method


# virtual methods
.method public clearWebCache()V
    .locals 0

    .line 464
    invoke-static {}, Lcom/yofi/sdk/YoFiSDK;->clearWebCache()V

    return-void
.end method

.method public eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
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

    .line 351
    invoke-static {p1, p2}, Lcom/yofi/sdk/YoFiSDK;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public exitGame()V
    .locals 3

    .line 356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u79bb\u5f00\u5417\uff1f"

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 358
    new-instance v1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$6;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$6;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    new-instance v1, Lcom/juhe/juhesdk/middle/channel/YoFiImp$7;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$7;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public synthetic finish()V
    .locals 0

    invoke-static {p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;->$default$finish(Lcom/juhe/juhesdk/interfaces/ISDKApi;)V

    return-void
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 454
    invoke-static {}, Lcom/yofi/sdk/YoFiSDK;->getOaid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerState(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "activity",
            "cb"
        }
    .end annotation

    .line 317
    new-instance v0, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;

    invoke-direct {v0, p0, p2}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$5;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    invoke-static {p1, v0}, Lcom/yofi/sdk/YoFiSDK;->getServerState(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "activity",
            "cb",
            "savedInstanceState"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    .line 177
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->initCb:Lcom/juhe/juhesdk/sdk/IFlashCallback;

    const-string p1, "yofiImp"

    const-string p2, "\u5f00\u59cb\u521d\u59cb\u5316init"

    .line 178
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->initSdk()V

    return-void
.end method

.method public initSplashChannel(Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cb",
            "activity"
        }
    .end annotation

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "loginCallback"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mLoginCallback:Lcom/juhe/juhesdk/sdk/OnLoginCallback;

    const-string p2, "yofiImp"

    const-string v0, "begin login"

    .line 54
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p2, Lcom/juhe/juhesdk/middle/channel/YoFiImp$1;

    invoke-direct {p2, p0}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$1;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout()V
    .locals 2

    const-string v0, "yofiImp"

    const-string v1, "\u8c03\u7528\u4e86logout"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/yofi/sdk/YoFiSDK;->logout()V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0
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

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onBackPressed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public synthetic onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;->$default$onConfigurationChanged(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 401
    invoke-static {p1}, Lcom/yofi/sdk/YoFiSDK;->destory(Landroid/app/Activity;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 385
    invoke-static {p1}, Lcom/yofi/sdk/YoFiSDK;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
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

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public synthetic onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;->$default$onRestoreInstanceState(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 390
    invoke-static {p1}, Lcom/yofi/sdk/YoFiSDK;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;->$default$onSaveInstanceState(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public synthetic onWindowFocusChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;->$default$onWindowFocusChanged(Lcom/juhe/juhesdk/interfaces/ISDKApi;Z)V

    return-void
.end method

.method public pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "payInfo",
            "payCallback"
        }
    .end annotation

    .line 249
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v4

    .line 250
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v3

    .line 252
    iget-object v1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mAccessToken:Ljava/lang/String;

    new-instance v6, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;

    invoke-direct {v6, p0, p2, p1, p3}, Lcom/juhe/juhesdk/middle/channel/YoFiImp$4;-><init>(Lcom/juhe/juhesdk/middle/channel/YoFiImp;Lcom/juhe/juhesdk/middle/data/PayInfo;Landroid/content/Context;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V

    const-string v5, ""

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->createOrder(Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/PayInfo;IILjava/lang/String;Lcom/juhe/juhesdk/web/WebAPICallback;)V

    return-void
.end method

.method public showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    .line 432
    invoke-static {p1, p2, p3, p4}, Lcom/yofi/sdk/YoFiSDK;->showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showUserCenter()V
    .locals 0

    .line 437
    invoke-static {}, Lcom/yofi/sdk/YoFiSDK;->showUserCenter()V

    return-void
.end method

.method public submitGameData(Lcom/juhe/juhesdk/middle/data/GameData;I)V
    .locals 3
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

    .line 335
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/juhe/juhesdk/middle/channel/YoFiImp;->mAccessToken:Ljava/lang/String;

    invoke-static {p2, v0, v1, p1}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->submitGameData(ILandroid/content/Context;Ljava/lang/String;Lcom/juhe/juhesdk/middle/data/GameData;)V

    .line 337
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/GameData;

    invoke-direct {v0}, Lcom/yofi/sdk/imp/middle/data/GameData;-><init>()V

    .line 338
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getBattlePoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/data/GameData;->setBattlePoint(J)V

    .line 339
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getRoleCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/data/GameData;->setRoleCreateTime(J)V

    .line 340
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setRoleId(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getRoleLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setRoleLevel(I)V

    .line 342
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setRoleName(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setServerId(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setServerName(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/data/GameData;->getVipLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/data/GameData;->setVipLevel(I)V

    .line 346
    invoke-static {v0, p2}, Lcom/yofi/sdk/YoFiSDK;->submitGameData(Lcom/yofi/sdk/imp/middle/data/GameData;I)V

    return-void
.end method

.method public switchAccount(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public tapTapOpenReview()V
    .locals 0

    .line 459
    invoke-static {}, Lcom/yofi/sdk/YoFiSDK;->tapTapOpenReview()V

    return-void
.end method
