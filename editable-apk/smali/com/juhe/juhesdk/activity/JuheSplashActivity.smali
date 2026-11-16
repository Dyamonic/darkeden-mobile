.class public Lcom/juhe/juhesdk/activity/JuheSplashActivity;
.super Landroid/app/Activity;
.source "JuheSplashActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static REQUEST_PERMISSION_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JuheSplashActivity"


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field mAction:Lcom/juhe/juhesdk/utils/HubActionAdapter;

.field private mHandler:Landroid/os/Handler;

.field private sp:Landroid/content/SharedPreferences;

.field private storageKey:Ljava/lang/String;

.field private targetClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 133
    new-instance v0, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;

    invoke-direct {v0, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$1;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    iput-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->targetClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->storageKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->storageKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->showProtocolPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->finishJuheSplashActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Landroid/content/SharedPreferences;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$500(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private finishJuheSplashActivity()V
    .locals 2

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->targetClassName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->finish()V

    return-void
.end method

.method private getActivityMetaDataBundle(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramPackageManager",
            "paramComponentName"
        }
    .end annotation

    const/16 v0, 0x80

    .line 229
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getMetaDataBundle"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getIsMumuChannel()Z
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "19"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getMetaDataStringFromActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramString1",
            "paramString2"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getActivityMetaDataBundle(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private showProtocolPopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "storageKey",
            "appId",
            "channel"
        }
    .end annotation

    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    .line 170
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 174
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getIsDebug()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "juhe/api/html/privacyPolicy.html?appId=%s&channelId=%s"

    if-eqz v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/juhe/juhesdk/middle/common/Constants;->DEBUG_SERVER_URL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 177
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/juhe/juhesdk/middle/common/Constants;->SERVER_URL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, "JuheSplashActivity"

    const-string v0, "\u5c55\u793a\u534f\u8bae\u5f39\u7a97"

    .line 179
    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    .line 184
    new-instance p3, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;

    invoke-direct {p3, p0, p2, p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$2;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->finishJuheSplashActivity()V

    :goto_1
    return-void
.end method

.method private startTimer()V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "13"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "initSplashChannel"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "juhesdk"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getSDK()Lcom/juhe/juhesdk/interfaces/ISDKApi;

    move-result-object v0

    new-instance v1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$4;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    invoke-interface {v0, v1, p0}, Lcom/juhe/juhesdk/interfaces/ISDKApi;->initSplashChannel(Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/app/Activity;)V

    goto :goto_0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$5;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$5;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramBundle"
        }
    .end annotation

    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Juhe.MainActivity.Path"

    const-string v0, "empty"

    .line 251
    invoke-direct {p0, p1, v0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getMetaDataStringFromActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->targetClassName:Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getIsMumuChannel()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 256
    invoke-static {}, Lcom/netease/yofun/external/Api;->getInstance()Lcom/netease/yofun/external/Api;

    move-result-object p1

    new-instance v1, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;

    invoke-direct {v1, p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity$3;-><init>(Lcom/juhe/juhesdk/activity/JuheSplashActivity;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/netease/yofun/external/Api;->displayChannelLogo(Landroid/app/Activity;ILjava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 272
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->requestWindowFeature(I)Z

    .line 273
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 275
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getSplashType()Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splashType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JuheSplashActivity"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "centerlogo"

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0xff

    .line 284
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 286
    :cond_1
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 288
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->assetManager:Landroid/content/res/AssetManager;

    :try_start_0
    const-string v2, "splash_image/splash.png"

    .line 292
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 293
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, -0x1

    .line 296
    invoke-virtual {p1, v1, v0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->setContentView(Landroid/view/View;)V

    .line 301
    invoke-static {}, Lcom/juhe/juhesdk/notchlib/NotchScreenManager;->getInstance()Lcom/juhe/juhesdk/notchlib/NotchScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/juhe/juhesdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-static {}, Lcom/juhe/juhesdk/sdk/SDKLoader;->instance()Lcom/juhe/juhesdk/sdk/SDKLoader;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/sdk/SDKLoader;->getApp(I)Lcom/juhe/juhesdk/interfaces/IAppApi;

    move-result-object p1

    .line 305
    invoke-interface {p1, p0}, Lcom/juhe/juhesdk/interfaces/IAppApi;->checkedPermission(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 306
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->startTimer()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 382
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->getIsMumuChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->mAction:Lcom/juhe/juhesdk/utils/HubActionAdapter;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/yofun/external/Api;->getInstance()Lcom/netease/yofun/external/Api;

    move-result-object v0

    iget-object v1, p0, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->mAction:Lcom/juhe/juhesdk/utils/HubActionAdapter;

    invoke-virtual {v0, v1}, Lcom/netease/yofun/external/Api;->unregister(Lcom/netease/yofun/external/HubAction;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramIntent"
        }
    .end annotation

    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
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

    .line 353
    sget p2, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->REQUEST_PERMISSION_CODE:I

    if-ne p1, p2, :cond_2

    .line 354
    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget v0, p3, p2

    if-eqz v0, :cond_0

    const-string p1, "YoFiSdk-log"

    const-string p2, "android.os.Process.killProcess"

    .line 356
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/juhe/juhesdk/activity/JuheSplashActivity;->startTimer()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
