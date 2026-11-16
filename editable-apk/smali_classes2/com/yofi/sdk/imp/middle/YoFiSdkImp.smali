.class public Lcom/yofi/sdk/imp/middle/YoFiSdkImp;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/ISDKApi;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "YoFiSdkImp"

.field private static imp:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityReferences:I

.field private androidId:Ljava/lang/String;

.field private appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;

.field private bindCallBack:Lcom/yofi/sdk/IFlashCallback;

.field private chatIntervalSecond:I

.field private checkUpdateloginActivity:Landroid/app/Activity;

.field private checkUpdateloginCb:Lcom/yofi/sdk/OnLoginCallback;

.field private floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

.field private handler:Landroid/os/Handler;

.field private hasLoginSuccess:Z

.field private hasUserdOneKeyLogin:Z

.field private initialized:Z

.field private intervalSecond:I

.field private isActivityChangingConfigurations:Z

.field private isCheckUpdate:Z

.field private isDebug:Z

.field private isLandScape:Z

.field private isLoginOut:Z

.field private isLoginWithoutAccount:Z

.field private isNowOneKeyLogin:Z

.field private isOpenBackH5:I

.field private isShowFloatButton:Z

.field private isShowGuest:Z

.field private isShowQQ:Z

.field private isShowSyOneKeyLogin:Z

.field private isShowTapTap:Z

.field private isShowThirdLogin:Z

.field private isSyPreLoginSuccess:Z

.field private loadHideWebViewSuccess:Z

.field private loginCallback:Lcom/yofi/sdk/OnLoginCallback;

.field private mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

.field public mTencent:Lcom/tencent/tauth/Tencent;

.field private mac:Ljava/lang/String;

.field private mainActivity:Landroid/app/Activity;

.field private nickname:Ljava/lang/String;

.field private oaid:Ljava/lang/String;

.field private payCallback:Lcom/yofi/sdk/IFlashCallback;

.field private qqAppId:Ljava/lang/String;

.field private readFlag:I

.field private settings:Landroid/content/SharedPreferences;

.field private socketUrl:Ljava/lang/String;

.field private syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

.field private syOneKeyLoginNativeCallJs:Lcom/yofi/sdk/IFlashCallback;

.field private userId:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private wechatAppId:Ljava/lang/String;

.field private wsHeartbeatIntervalSecond:I

.field public wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initialized:Z

    .line 102
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 103
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    .line 104
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loadHideWebViewSuccess:Z

    .line 106
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loginCallback:Lcom/yofi/sdk/OnLoginCallback;

    .line 107
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->payCallback:Lcom/yofi/sdk/IFlashCallback;

    .line 109
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->bindCallBack:Lcom/yofi/sdk/IFlashCallback;

    .line 111
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    .line 112
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginNativeCallJs:Lcom/yofi/sdk/IFlashCallback;

    .line 116
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isCheckUpdate:Z

    .line 117
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isDebug:Z

    const/4 v2, 0x1

    .line 118
    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowFloatButton:Z

    .line 119
    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowGuest:Z

    .line 121
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowTapTap:Z

    .line 122
    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowQQ:Z

    .line 123
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin:Z

    .line 124
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z

    .line 125
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    .line 126
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isNowOneKeyLogin:Z

    .line 127
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginWithoutAccount:Z

    .line 128
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v3, ""

    .line 129
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->nickname:Ljava/lang/String;

    .line 130
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    .line 131
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->userId:Ljava/lang/String;

    .line 132
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->androidId:Ljava/lang/String;

    .line 133
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->oaid:Ljava/lang/String;

    .line 134
    iput-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mac:Ljava/lang/String;

    .line 142
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginActivity:Landroid/app/Activity;

    .line 143
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginCb:Lcom/yofi/sdk/OnLoginCallback;

    const/16 v0, 0x1e

    .line 153
    iput v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->intervalSecond:I

    .line 159
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    .line 162
    iput v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    .line 163
    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isActivityChangingConfigurations:Z

    .line 535
    iput v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wsHeartbeatIntervalSecond:I

    const/16 v0, 0x12c

    .line 536
    iput v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->chatIntervalSecond:I

    .line 169
    sput-object p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->imp:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    return-void
.end method

.method static synthetic access$002(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->socketUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->readFlag:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->readFlag:I

    return p1
.end method

.method static synthetic access$102(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wsHeartbeatIntervalSecond:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isCheckUpdate:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->doTxOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/rich/oauth/core/UIConfigBuild;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getNotCustomElementBuilder()Lcom/rich/oauth/core/UIConfigBuild;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1602(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isNowOneKeyLogin:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    return p0
.end method

.method static synthetic access$1808(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I
    .locals 2

    .line 94
    iget v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    return v0
.end method

.method static synthetic access$1810(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I
    .locals 2

    .line 94
    iget v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityReferences:I

    return v0
.end method

.method static synthetic access$1900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isActivityChangingConfigurations:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isActivityChangingConfigurations:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->onAppForeground()V

    return-void
.end method

.method static synthetic access$202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->chatIntervalSecond:I

    return p1
.end method

.method static synthetic access$2100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->onAppBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isOpenBackH5:I

    return p1
.end method

.method static synthetic access$400(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Landroid/content/SharedPreferences;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyPreLogin(Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginNativeCallJs:Lcom/yofi/sdk/IFlashCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Landroid/app/Activity;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->intervalSecond:I

    return p0
.end method

.method static synthetic access$802(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->intervalSecond:I

    return p1
.end method

.method static synthetic access$900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->showLogoutAlert(Ljava/lang/String;)V

    return-void
.end method

.method private checkUpdate(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1424
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v1

    .line 1426
    new-instance v2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;

    invoke-direct {v2, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->checkUpdate(ILjava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method private doTxOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "\u5f00\u59cb\u8c03\u7528\u62c9\u8d77\u6388\u6743\u9875"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1621
    invoke-static {v1}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1622
    iget-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isNowOneKeyLogin:Z

    if-eqz v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "\u91cd\u590d\u70b9\u51fb\u62c9\u8d77\u6388\u6743\u9875"

    aput-object v0, p1, v3

    .line 1623
    invoke-static {p1}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    return-void

    .line 1626
    :cond_0
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isNowOneKeyLogin:Z

    .line 1628
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resId"
        }
    .end annotation

    .line 1887
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1888
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1889
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 1892
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v0, "cmcc_ouath_navi_return"

    const-string v1, "id"

    invoke-static {p2, v0, v1}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 1893
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$24;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$24;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1902
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v0, "cmcc_ouath_other_way"

    invoke-static {p2, v0, v1}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1903
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$25;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$25;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private getNotCustomElementBuilder()Lcom/rich/oauth/core/UIConfigBuild;
    .locals 11

    .line 1668
    new-instance v0, Lcom/rich/oauth/core/UIConfigBuild$Builder;

    invoke-direct {v0}, Lcom/rich/oauth/core/UIConfigBuild$Builder;-><init>()V

    .line 1671
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v2, "yj_oauth_root_view"

    const-string v3, "layout"

    invoke-static {v1, v2, v3}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthContentView(Landroid/view/View;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const v1, 0xababab

    const/4 v2, 0x0

    .line 1676
    invoke-virtual {v0, v1, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setStatusBar(IZ)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1680
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setFitsSystemWindows(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/high16 v1, -0x1000000

    .line 1685
    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setNumberColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v4, 0x19

    const/4 v5, 0x1

    .line 1687
    invoke-virtual {v0, v4, v5}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setNumberSize(IZ)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1689
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setNumberOffsetX(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v4, 0x50

    .line 1691
    invoke-virtual {v0, v4}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setNumberOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1699
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v6, "yj_login_btn_bg"

    const-string v7, "drawable"

    invoke-static {v4, v6, v7}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnBg(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const-string v4, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    .line 1701
    invoke-virtual {v0, v4}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v4, 0xf

    .line 1703
    invoke-virtual {v0, v4}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1705
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnTextBold(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v6, 0x12c

    .line 1707
    invoke-virtual {v0, v6}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnWidth(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v7, 0x1e

    .line 1709
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnHight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/4 v8, -0x1

    .line 1711
    invoke-virtual {v0, v8}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLoginBtnTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v9, 0x8c

    .line 1715
    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLogBtnOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1717
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLogBtnMarginLeft(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1719
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setLogBtnMarginRight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1724
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setProtocolSelected(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1730
    sget-object v9, Lcom/rich/oauth/util/AuthConstants;->AUTHUNCHECKWAY_TOAST:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setUnCheckWay(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const-string v9, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    .line 1731
    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setCheckTipText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const-string v9, "\u6e38\u620f\u8bb8\u53ef\u53ca\u670d\u52a1\u534f\u8bae"

    const-string v10, "https://sdk.gateway.yofijoy.com/sdk/api/v1/h5/licenseServiceAgreement.html"

    .line 1736
    invoke-virtual {v0, v9, v10}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setProtocol(Ljava/lang/String;Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const-string v9, "\u9605\u8bfb\u5e76\u540c\u610f$$\u8fd0\u8425\u5546\u6761\u6b3e$$\u6e38\u620f\u8bb8\u53ef\u53ca\u670d\u52a1\u534f\u8bae"

    .line 1739
    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyContentText(Ljava/lang/String;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1742
    invoke-virtual {v0, v5}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyBookSymbol(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1744
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v9, 0x37

    .line 1746
    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyOffsetY_B(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v9, 0x14

    .line 1748
    invoke-virtual {v0, v9}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyMarginLeft(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1750
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyMarginRight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v7, 0xa

    .line 1752
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/high16 v7, -0x10000

    .line 1754
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setClauseBaseColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const v7, -0xff0100

    .line 1757
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setClauseColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1760
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setIsGravityCenter(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1763
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setCheckBoxLocation(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const/16 v7, 0xc

    .line 1765
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setCheckBoxImageWidth(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1767
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setCheckBoxImageheight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    const v7, -0xffff01

    .line 1772
    invoke-virtual {v0, v7}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyNavBgColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1776
    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyNavTextColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1778
    invoke-virtual {v0, v4}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyNavTextSize(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1780
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v4, "yj_login_title_layout"

    invoke-static {v1, v4, v3}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setPrivacyNavReturnBackClauseLayoutResID(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1784
    invoke-virtual {v0, v8}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setClauseStatusColor(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1788
    invoke-virtual {v0, v5}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowMode(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    const/16 v3, 0x140

    .line 1789
    invoke-virtual {v1, v3}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowWith(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    .line 1790
    invoke-virtual {v1, v6}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowHight(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    .line 1791
    invoke-virtual {v1, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowOffsetX(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLandScape:Z

    if-eqz v3, :cond_0

    const/16 v3, -0x14

    goto :goto_0

    :cond_0
    const/16 v3, -0x32

    .line 1792
    :goto_0
    invoke-virtual {v1, v3}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowOffsetY(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v4, "syOneKeyLoginDialog"

    const-string v6, "style"

    .line 1793
    invoke-static {v3, v4, v6}, Lcom/yofi/sdk/utils/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowThemeId(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    .line 1794
    invoke-virtual {v1, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthPageWindowBottom(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    move-result-object v1

    .line 1795
    invoke-virtual {v1, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setBackButton(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1804
    invoke-virtual {v0, v5}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAutoClosAuthPage(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1806
    invoke-virtual {v0, v2}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAppLanguageType(I)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1807
    invoke-virtual {v0, v5}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setBottomNavigationHidden(Z)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1812
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$18;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$18;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthLoginClickListener(Lcom/rich/oauth/callback/AuthLoginClickListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1830
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$19;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setAuthLoginPageInListener(Lcom/rich/oauth/callback/AuthPageInListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1845
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$20;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$20;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setOnCheckboxCheckedChange(Lcom/rich/oauth/callback/CheckboxCheckedChangeListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1853
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$21;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$21;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setCheckboxUnCheckedClickListener(Lcom/rich/oauth/callback/CheckboxUnCheckedClickListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1861
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$22;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$22;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setUncheckDialogAuthLoginListener(Lcom/rich/oauth/callback/UnCheckDialogAuthLoginListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1869
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$23;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$23;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->setOnPressBackListener(Lcom/rich/oauth/callback/PressBackListener;)Lcom/rich/oauth/core/UIConfigBuild$Builder;

    .line 1876
    invoke-virtual {v0}, Lcom/rich/oauth/core/UIConfigBuild$Builder;->build()Lcom/rich/oauth/core/UIConfigBuild;

    move-result-object v0

    return-object v0
.end method

.method private initTxOneKeyLogin()V
    .locals 5

    .line 884
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    .line 886
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tx_sy_onekey_appid"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 885
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    new-instance v3, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;

    invoke-direct {v3, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/rich/oauth/core/RichAuth;->init(Landroid/content/Context;Ljava/lang/String;Lcom/rich/oauth/callback/InitCallback;)V

    :cond_0
    return-void
.end method

.method private initializeAnway(Landroid/app/Activity;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "first"
        }
    .end annotation

    const-string p2, "YoFiSdkImp"

    const-string v0, "resource init 1"

    .line 935
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initialized:Z

    const-string v0, "resource init success"

    .line 938
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdate(Landroid/content/Context;)V

    return-void
.end method

.method public static instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;
    .locals 1

    .line 975
    sget-object v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->imp:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    return-object v0
.end method

.method private onAppBackground()V
    .locals 1

    .line 2124
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;

    if-eqz v0, :cond_0

    .line 2125
    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/OnAppStatusListener;->onBecameBackground()V

    :cond_0
    return-void
.end method

.method private onAppForeground()V
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;

    if-eqz v0, :cond_0

    .line 2117
    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/OnAppStatusListener;->onBecameForeground()V

    :cond_0
    return-void
.end method

.method private showLogoutAlert(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1332
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->clearAllActivity()V

    .line 1333
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->logout()V

    .line 1335
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/16 v1, 0x1770

    invoke-static {v0, p1, v1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method private txOneKeyPreLogin(Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "overTime",
            "preloginCallBack"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u5f00\u59cb\u8c03\u7528\u9884\u767b\u5f55"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1527
    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1529
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rich/oauth/core/RichAuth;->setDebugMode(Ljava/lang/Boolean;)V

    .line 1532
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rich/oauth/core/RichAuth;->setOverTime(Ljava/lang/Integer;)V

    .line 1534
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;

    invoke-direct {v1, p0, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/rich/oauth/core/RichAuth;->preLogin(Landroid/app/Activity;Lcom/rich/oauth/callback/PreLoginCallback;)V

    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindPhone(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 3
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

    .line 1345
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1358
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1359
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "phoneNumber"

    .line 1360
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    const-string v2, "0"

    .line 1361
    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    .line 1362
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1347
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->bindCallBack:Lcom/yofi/sdk/IFlashCallback;

    .line 1348
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1350
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1351
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    const-string v1, "isLoginOut"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "urlType"

    .line 1352
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public clearAllActivity()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 186
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clientReportOrderToAd(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "orderId",
            "orderAmount"
        }
    .end annotation

    const-string v0, "YoFiSdkImp"

    const-string v1, "\u8c03\u7528clientReportOrderToAd"

    .line 1946
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoadHideWebViewSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    new-instance v2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;

    invoke-direct {v2, p0, p2, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;ILjava/lang/String;)V

    invoke-static {v0, v1, p1, v2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->clientReportOrderToAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public destory(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 985
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    if-eqz p1, :cond_0

    .line 986
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->dismiss()V

    .line 988
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->onDestory()V

    .line 989
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->destroyHideWebView()V

    return-void
.end method

.method public destroyHideWebView()V
    .locals 3

    .line 2014
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2017
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    invoke-virtual {v2}, Lcom/yofi/sdk/widget/HideWebView;->destroy()V

    if-eqz v0, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2021
    :cond_0
    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    .line 2024
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;

    if-eqz v0, :cond_2

    .line 2025
    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyHideWebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyHideWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V
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

    .line 1340
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "activity",
            "intent",
            "cb"
        }
    .end annotation

    .line 1373
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Landroid/content/Intent;Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public gameStage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 1187
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1191
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getGameStage()I

    move-result v0

    if-gt p1, v0, :cond_1

    return-void

    .line 1195
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1196
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {p1, v0, v1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->gameStage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setGameStage(I)V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getAge()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppChannel()I
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_SDK_CHANNEL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_APPID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_APPKEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPrivateKey()Ljava/lang/String;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_PRIVATEKEY"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBindCallBack()Lcom/yofi/sdk/IFlashCallback;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->bindCallBack:Lcom/yofi/sdk/IFlashCallback;

    return-object v0
.end method

.method public getCacheServerUrl()Ljava/lang/String;
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "cacheServerUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheTaskServerUrl()Ljava/lang/String;
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "cacheTaskServerUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheWebUrl()Ljava/lang/String;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "cacheWebUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatIntervalSecond()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->chatIntervalSecond:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 320
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_IMEI"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParams(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cb"
        }
    .end annotation

    .line 558
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;

    invoke-direct {v0, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->getInitParams(Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public getIsDebug()Ljava/lang/Boolean;
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isDebug:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIsOpenBackH5()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isOpenBackH5:I

    return v0
.end method

.method public getIsShowFloatButton()Ljava/lang/Boolean;
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowFloatButton:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLandSpace()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLandScape:Z

    return v0
.end method

.method public getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loginCallback:Lcom/yofi/sdk/OnLoginCallback;

    return-object v0
.end method

.method public getLoginWithoutAccount()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginWithoutAccount:Z

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMainActivity()Landroid/app/Activity;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 315
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 1

    .line 324
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSatusToUpdataToutiao(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "orderId",
            "orderAmount"
        }
    .end annotation

    const-string v0, "YoFiSdkImp"

    const-string v1, "\u8c03\u7528getOrderSatusToUpdataToutiao"

    .line 1916
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;

    invoke-direct {v0, p0, p2, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->getOrderStatus(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_PACKAGENAME"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayCallback()Lcom/yofi/sdk/IFlashCallback;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->payCallback:Lcom/yofi/sdk/IFlashCallback;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getQQAppId()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->qqAppId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSDKName()Ljava/lang/String;
    .locals 1

    const-string v0, "YoFiSDK"

    return-object v0
.end method

.method public getServerState(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 8
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

    .line 494
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/utils/CommonUtils;->init(Landroid/content/Context;)V

    .line 496
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 500
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "YOFI_SDK_CHANNEL"

    const-string v6, "integer"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 499
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 502
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 503
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "YOFI_APPID"

    const-string v7, "string"

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 502
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 505
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v5, "YOFI_APPKEY"

    invoke-virtual {v4, v5, v7, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 504
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 507
    new-instance p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$1;

    invoke-direct {p1, p0, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-static {v0, v2, v1, p1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->getServerState(Ljava/lang/String;ILjava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public getSocketUrl()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->socketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSyOneKeyLoginCallback()Lcom/yofi/sdk/IFlashCallback;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    return-object v0
.end method

.method public getSyOneKeyLoginNativeCallJs()Lcom/yofi/sdk/IFlashCallback;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginNativeCallJs:Lcom/yofi/sdk/IFlashCallback;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 196
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.2.1"

    return-object v0
.end method

.method public getWebUrl(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 948
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 951
    :cond_0
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants;->WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#/bind"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 959
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#/user"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#/auth"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#/backjob"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 966
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk\u5730\u5740="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getWebUrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getWechatAppId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wechatAppId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getWsHeartbeatIntervalSecond()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wsHeartbeatIntervalSecond:I

    return v0
.end method

.method public heartbeat()V
    .locals 2

    .line 1220
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasLoginSuccess:Z

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-static {v0, v1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->heartbeat(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    :cond_0
    return-void
.end method

.method public hideFloat()V
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1405
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    :cond_0
    return-void
.end method

.method public initThirdLogin(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 916
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin:Z

    if-nez v0, :cond_0

    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getWechatAppId()Ljava/lang/String;

    move-result-object v0

    .line 921
    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 922
    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "wxAppId:"

    .line 923
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    :goto_0
    const-string v1, "wxReg \u5fae\u4fe1\u6ce8\u518c:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getQQAppId()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string p1, "qqAppId:"

    .line 928
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initialize(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V
    .locals 10
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

    const-string v0, "string"

    const-string v1, "bool"

    .line 612
    iput-boolean p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLandScape:Z

    .line 613
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    .line 615
    iget-boolean p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initialized:Z

    if-eqz p2, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->maybeShowFloat()V

    return-void

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "packageName"

    .line 621
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 625
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 626
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "YOFI_IS_DEBUG"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :catch_0
    :cond_1
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 634
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    .line 637
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->androidId:Ljava/lang/String;

    .line 638
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yofi/sdk/utils/CommonUtils;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mac:Ljava/lang/String;

    .line 641
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 642
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "YOFI_SHOW_FLOAT_BUTTON"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 641
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowFloatButton:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 647
    :catch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 648
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "GUEST_SHOW"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 647
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowGuest:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 653
    :catch_2
    :try_start_3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 654
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "YOFI_LOGIN_WITHOUT_ACCOUNT"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 653
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginWithoutAccount:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 659
    :catch_3
    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 660
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "TAPTAP_SHOW"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 659
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowTapTap:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 666
    :catch_4
    :try_start_5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 667
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "THIRD_LOGIN_SHOW"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 666
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 672
    :catch_5
    :try_start_6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 673
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "SY_ONEKEY_LOGIN_SHOW"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 672
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 678
    :catch_6
    :try_start_7
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 679
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "IS_SHOW_QQ"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 678
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowQQ:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 683
    :catch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLoginWithoutAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginWithoutAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isShowGuest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowGuest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YoFiSdkImp"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowQQ: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowQQ:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isShowThirdLogin:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isShowSyOneKeyLogin:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :try_start_8
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 689
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "WECHAT_APPID"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 688
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wechatAppId:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 691
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "QQ_APPID"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 690
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->qqAppId:Ljava/lang/String;

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wechatAppId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->wechatAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",qqAppId"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->qqAppId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 698
    :catch_8
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v1

    .line 699
    invoke-virtual {v1, p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->init(Landroid/content/Context;)V

    .line 701
    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/common/SQLFunction;->initTable(Landroid/content/Context;)V

    .line 703
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yofi/sdk/utils/CommonUtils;->init(Landroid/content/Context;)V

    const-string v1, "init start"

    .line 704
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/utils/CommonUtils;->isNetWorkActive()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "network is bad \u7f51\u7edc\u5df2\u65ad\u5f00\uff0c\u8bf7\u8fde\u63a5\u7f51\u7edc"

    .line 708
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v1, "network is good"

    .line 711
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const-string v1, "YoFiSdk"

    .line 713
    invoke-virtual {p1, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 715
    :cond_4
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v4, "logout"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    .line 716
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v4, "hasLoginSuccess"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasLoginSuccess:Z

    .line 717
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v4, "hasUserdOneKeyLogin"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    .line 721
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 722
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v5, "YOFI_IMEI"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 723
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 724
    :cond_5
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/yofi/sdk/utils/CommonUtils;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 726
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 731
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 732
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YOFI_APPID"

    invoke-virtual {v5, v8, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 731
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 733
    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 734
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 735
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YOFI_APPKEY"

    invoke-virtual {v5, v8, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 734
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 736
    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 738
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "YOFI_SDK_CHANNEL"

    const-string v9, "integer"

    invoke-virtual {v5, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 737
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 739
    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "YOFI_PACKAGENAME"

    .line 742
    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 744
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 748
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getCacheWebUrl()Ljava/lang/String;

    move-result-object p2

    .line 749
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u7684\u7f13\u5b58web\u5730\u5740 =  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cacheUrl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 753
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    goto :goto_0

    .line 755
    :cond_7
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->WEB_DOMAIN_SERVER_URL:Ljava/lang/String;

    .line 760
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getCacheServerUrl()Ljava/lang/String;

    move-result-object p2

    .line 761
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u7684\u7f13\u5b58server\u5730\u5740 =  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cacheServerUrl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 765
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    goto :goto_1

    .line 767
    :cond_9
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    .line 773
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getCacheTaskServerUrl()Ljava/lang/String;

    move-result-object p2

    .line 774
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u7684\u7f13\u5b58TaskServer\u5730\u5740 =  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cacheTaskServerUrl"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 778
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->DEBUG_TASK_SERVER_URL:Ljava/lang/String;

    goto :goto_2

    .line 780
    :cond_b
    sput-object p2, Lcom/yofi/sdk/imp/middle/common/Constants;->TASK_SERVER_URL:Ljava/lang/String;

    .line 785
    :cond_c
    :goto_2
    new-instance p2, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;

    invoke-direct {p2}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;-><init>()V

    .line 786
    invoke-virtual {p2}, Lcom/yofi/sdk/utils/GetWebUrlFromCDNTool;->beginFetch()V

    .line 790
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    const-string v1, "YOFI_OAID"

    invoke-interface {p2, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 791
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 792
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setOaid(Ljava/lang/String;)V

    :cond_d
    const/4 p2, 0x1

    .line 797
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getAppChannel()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 799
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "toutiao_id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 798
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toutiaoAppId ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v5, Lcom/bytedance/applog/InitConfig;

    invoke-direct {v5, v4, v1}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v5, v3}, Lcom/bytedance/applog/InitConfig;->setUriConfig(I)Lcom/bytedance/applog/InitConfig;

    .line 810
    invoke-virtual {v5, v3}, Lcom/bytedance/applog/InitConfig;->setImeiEnable(Z)Lcom/bytedance/applog/InitConfig;

    .line 811
    invoke-virtual {v5, v3}, Lcom/bytedance/applog/InitConfig;->setAutoTrackEnabled(Z)V

    .line 812
    invoke-static {p2}, Lcom/bytedance/applog/AppLog;->setEncryptAndCompress(Z)V

    .line 813
    invoke-virtual {v5, p2}, Lcom/bytedance/applog/InitConfig;->setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;

    .line 815
    invoke-virtual {v5, v3}, Lcom/bytedance/applog/InitConfig;->setLogEnable(Z)Lcom/bytedance/applog/InitConfig;

    .line 816
    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$3;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$3;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {v5, v1}, Lcom/bytedance/applog/InitConfig;->setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;

    .line 823
    invoke-static {}, Lcom/bytedance/ads/convert/BDConvert;->getInstance()Lcom/bytedance/ads/convert/BDConvert;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getInstance()Lcom/bytedance/applog/IAppLogInstance;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/bytedance/ads/convert/BDConvert;->init(Landroid/content/Context;Lcom/bytedance/applog/IAppLogInstance;)V

    .line 825
    invoke-static {p1, v5}, Lcom/bytedance/applog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_3

    :catch_9
    move-exception v1

    .line 828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toutiao init faile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_3
    :try_start_a
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 833
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "tencent_gdt_user_action_setid"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v0, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 832
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 835
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 836
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "tencent_gdt_app_secret_key"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 835
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 837
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tencent_gdt_user_action_setid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " tencent_gdt_app_secret_key= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-static {v4, v1, v0}, Lcom/qq/gdt/action/GDTAction;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/qq/gdt/action/GDTAction;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_4

    :catch_a
    move-exception v0

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tencent_gdt init failed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :goto_4
    invoke-direct {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initTxOneKeyLogin()V

    .line 853
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->deviceModel()V

    .line 856
    invoke-static {}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->getInstance()Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/taptap/TapTapSingleton;->init(Landroid/content/Context;)V

    .line 859
    new-instance v0, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$4;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$4;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    const-string v2, "msaoaidsec"

    invoke-direct {v0, v1, v2}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;-><init>(Lcom/yofi/sdk/utils/YofiOaidDemoHelper$AppIdsUpdater;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, p1, p2, v3, v3}, Lcom/yofi/sdk/utils/YofiOaidDemoHelper;->getDeviceIds(Landroid/content/Context;ZZZ)V

    .line 875
    invoke-virtual {p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initThirdLogin(Landroid/app/Activity;)V

    .line 876
    invoke-direct {p0, p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initializeAnway(Landroid/app/Activity;Z)V

    .line 878
    invoke-interface {p3, v6}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initialized:Z

    return v0
.end method

.method public isLoadHideWebViewSuccess()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loadHideWebViewSuccess:Z

    return v0
.end method

.method public isLoginOut()Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    return v0
.end method

.method public isShowGuest()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowGuest:Z

    return v0
.end method

.method public isShowQQ()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowQQ:Z

    return v0
.end method

.method public isShowSyOneKeyLogin()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z

    return v0
.end method

.method public isShowTapTap()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowTapTap:Z

    return v0
.end method

.method public isShowThirdLogin()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowThirdLogin:Z

    return v0
.end method

.method public isSyPreLoginSuccess()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    return v0
.end method

.method public isTourist()Ljava/lang/Boolean;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->isTourist()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V
    .locals 3
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

    .line 1000
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isCheckUpdate:Z

    if-eqz v0, :cond_0

    .line 1001
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginActivity:Landroid/app/Activity;

    .line 1002
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginCb:Lcom/yofi/sdk/OnLoginCallback;

    return-void

    .line 1005
    :cond_0
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initialized:Z

    if-nez v0, :cond_1

    const p1, 0xfc14

    .line 1006
    invoke-interface {p2, p1}, Lcom/yofi/sdk/OnLoginCallback;->onLoginFailed(I)V

    return-void

    .line 1011
    :cond_1
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loginCallback:Lcom/yofi/sdk/OnLoginCallback;

    .line 1013
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1014
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    const-string v1, "isLoginOut"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "urlType"

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528login\u767b\u5f55\u65f6: \u9884\u767b\u5f55\u72b6\u6001="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",\u662f\u5426\u4f7f\u7528\u8fc7\u4e00\u952e\u767b\u5f55hasUserdOneKeyLogin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1020
    iget-boolean p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    if-nez p2, :cond_2

    .line 1022
    new-instance p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$6;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {p0, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V

    .line 1040
    :cond_2
    iget-boolean p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    if-nez p2, :cond_3

    .line 1042
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasUserdOneKeyLogin:Z

    .line 1043
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-string v0, "YoFiSdk"

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1044
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "hasUserdOneKeyLogin"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public logout()V
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$7;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$7;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {p0, v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->logout(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method public logout(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "cb"
        }
    .end annotation

    .line 1088
    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->logout(Ljava/lang/String;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method

.method public maybeShowFloat()V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->floatWindow:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->show()V

    :cond_0
    return-void
.end method

.method public noticeHideWebViewPaySuccess()V
    .locals 1

    .line 2006
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    if-eqz v0, :cond_0

    .line 2007
    invoke-virtual {v0}, Lcom/yofi/sdk/widget/HideWebView;->paySuccess()V

    :cond_0
    return-void
.end method

.method public onApplicationCreate(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    const-string v0, "msaoaidsec"

    .line 2057
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2068
    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

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

    .line 1419
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1412
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->onResume(Landroid/content/Context;)V

    const-string v0, "START_APP"

    .line 1413
    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;)V

    .line 1414
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "payInfo",
            "cb"
        }
    .end annotation

    .line 1094
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->payCallback:Lcom/yofi/sdk/IFlashCallback;

    .line 1095
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    .line 1097
    new-instance v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1098
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "paying"

    const-string v5, "string"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->show()V

    .line 1100
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    new-instance v2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;)V

    invoke-static {v1, p2, p3, v2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->createOrder(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/PayInfo;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    return-void
.end method

.method public querySession(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1321
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$11;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$11;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    .line 1327
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getChatIntervalSecond()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    .line 1321
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public querySessionApi(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 1267
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasLoginSuccess:Z

    if-eqz v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    invoke-static {v0, p1, v1}, Lcom/yofi/sdk/imp/middle/common/WebAPI;->querySession(Ljava/lang/String;Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    :cond_0
    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sdkStage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1208
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->getSdkStage()I

    move-result v0

    if-gt p1, v0, :cond_1

    return-void

    .line 1212
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1213
    invoke-static {}, Lcom/yofi/sdk/utils/CommonUtils;->instance()Lcom/yofi/sdk/utils/CommonUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/yofi/sdk/utils/CommonUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-static {p1, v0, v1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->sdkStage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->setSdkStage(I)V

    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accessToken"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAppStatusListener(Lcom/yofi/sdk/interfaces/OnAppStatusListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appStatusListener"
        }
    .end annotation

    .line 2112
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->appStatusListener:Lcom/yofi/sdk/interfaces/OnAppStatusListener;

    return-void
.end method

.method public setCacheServerUrl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverUrl"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cacheServerUrl"

    .line 379
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCacheTaskServerUrl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverUrl"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cacheTaskServerUrl"

    .line 398
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCacheWebUrl(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webUrl"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "YoFiSdk"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cacheWebUrl"

    .line 361
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setHasLoginSuccess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasLoginSuccess"
        }
    .end annotation

    .line 431
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hasLoginSuccess:Z

    return-void
.end method

.method public setIsCheckUpdate(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCheckUpdate"
        }
    .end annotation

    .line 405
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isCheckUpdate:Z

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsCheckUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setIsCheckUpdate"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginCb:Lcom/yofi/sdk/OnLoginCallback;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0, p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V

    const/4 p1, 0x0

    .line 409
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginActivity:Landroid/app/Activity;

    .line 410
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdateloginCb:Lcom/yofi/sdk/OnLoginCallback;

    :cond_0
    return-void
.end method

.method public setLoadHideWebViewSuccess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadHideWebViewSuccess"
        }
    .end annotation

    .line 490
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loadHideWebViewSuccess:Z

    return-void
.end method

.method public setLoginCallback(Lcom/yofi/sdk/OnLoginCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loginCallback"
        }
    .end annotation

    .line 463
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->loginCallback:Lcom/yofi/sdk/OnLoginCallback;

    return-void
.end method

.method public setLoginOut(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLoginOut"
        }
    .end annotation

    .line 421
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickname"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oaid"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setScreenIsLandScape(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLandScape"
        }
    .end annotation

    .line 995
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLandScape:Z

    return-void
.end method

.method public setSyOneKeyLoginCallback(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syOneKeyLoginCallback"
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    return-void
.end method

.method public setSyOneKeyLoginNativeCallJs(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syOneKeyLoginNativeCallJs"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginNativeCallJs:Lcom/yofi/sdk/IFlashCallback;

    return-void
.end method

.method public setSyPreLoginSuccess(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syPreLoginSuccess"
        }
    .end annotation

    .line 435
    iput-boolean p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uuid"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->uuid:Ljava/lang/String;

    return-void
.end method

.method public showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "roleId",
            "roleName",
            "serverId",
            "serverName"
        }
    .end annotation

    .line 1500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1501
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FUNCTION_CODE"

    const/16 v3, 0x14

    .line 1502
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    const-string v2, "roleName"

    .line 1504
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "serverId"

    .line 1507
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "roleId"

    .line 1510
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "serverName"

    .line 1513
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1516
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const-class p2, Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1517
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showHideWebView()V
    .locals 3

    .line 2038
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    if-eqz v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->destroyHideWebView()V

    .line 2042
    :cond_0
    new-instance v0, Lcom/yofi/sdk/widget/HideWebView;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getWebUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yofi/sdk/widget/HideWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    .line 2043
    invoke-virtual {v0}, Lcom/yofi/sdk/widget/HideWebView;->show()V

    .line 2044
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mHideWebView:Lcom/yofi/sdk/widget/HideWebView;

    invoke-virtual {p0, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setAppStatusListener(Lcom/yofi/sdk/interfaces/OnAppStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showHideWebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showHideWebView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public showUserCenter()V
    .locals 4

    .line 1488
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1490
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1491
    iget-boolean v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isLoginOut:Z

    const-string v3, "isLoginOut"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x2

    const-string v3, "urlType"

    .line 1492
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public submitGameData(Lcom/yofi/sdk/imp/middle/data/GameData;I)V
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

    .line 1166
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->CREATE:Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    const-string v1, "roleId"

    if-ne p2, v0, :cond_0

    .line 1167
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->createRole(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V

    .line 1169
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1170
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/GameData;->getRoleId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object p1

    const-string v0, "CreateRole"

    invoke-virtual {p1, v0, p2}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1173
    :cond_0
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->LOGIN:Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1174
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->roleLogin(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V

    goto :goto_0

    .line 1175
    :cond_1
    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->LEVELUP:Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 1176
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->accessToken:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->roleLevel(Ljava/lang/String;Lcom/yofi/sdk/imp/middle/data/GameData;)V

    .line 1178
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1179
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/GameData;->getRoleLevel()I

    move-result v0

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1180
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/data/GameData;->getRoleId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object p1

    const-string v0, "RoleUpgrade"

    invoke-virtual {p1, v0, p2}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public txOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "syOneKeyLoginCallback"
        }
    .end annotation

    .line 1559
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isShowSyOneKeyLogin:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v0, "\u5305\u672a\u914d\u7f6e\u4e0d\u652f\u6301\u4e00\u952e\u767b\u5f55"

    .line 1560
    invoke-interface {p1, v1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->mainActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/yofi/sdk/utils/CommonUtils;->isMobileDataEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u79fb\u52a8\u7f51\u7edc\u5f00\u5173mobileDataEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    const-string v0, "\u79fb\u52a8\u6570\u636e\u5f00\u5173\u672a\u5f00\u542f"

    .line 1567
    invoke-interface {p1, v1, v0}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void

    .line 1572
    :cond_1
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->syOneKeyLoginCallback:Lcom/yofi/sdk/IFlashCallback;

    .line 1575
    iget-boolean v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->isSyPreLoginSuccess:Z

    if-nez v0, :cond_2

    const/16 v0, 0xbb8

    .line 1577
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;

    invoke-direct {v1, p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$15;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V

    invoke-direct {p0, v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyPreLogin(Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V

    goto :goto_0

    .line 1603
    :cond_2
    new-instance p1, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$16;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$16;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    invoke-direct {p0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->doTxOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V

    :goto_0
    return-void
.end method
