.class public Lcom/yofi/sdk/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private iv:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private targetClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 32
    new-instance v0, Lcom/yofi/sdk/activity/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/activity/SplashActivity$1;-><init>(Lcom/yofi/sdk/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/activity/SplashActivity;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yofi/sdk/activity/SplashActivity;->targetClassName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yofi/sdk/activity/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yofi/sdk/activity/SplashActivity;->mHandler:Landroid/os/Handler;

    return-object p0
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

    .line 53
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getMetaDataBundle"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
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

    .line 61
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yofi/sdk/activity/SplashActivity;->getActivityMetaDataBundle(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private startTimer()V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yofi/sdk/activity/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/activity/SplashActivity$2;-><init>(Lcom/yofi/sdk/activity/SplashActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramBundle"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splash"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/SplashActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splash_imageview"

    const-string v2, "id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity;->iv:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity;->assetManager:Landroid/content/res/AssetManager;

    :try_start_0
    const-string v0, "splash_image/splash.png"

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "YoFiGame.MainActivity.Path"

    const-string v0, "empty"

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/yofi/sdk/activity/SplashActivity;->getMetaDataStringFromActivity(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity;->targetClassName:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/yofi/sdk/activity/SplashActivity;->startTimer()V

    .line 83
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

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

    .line 114
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

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
