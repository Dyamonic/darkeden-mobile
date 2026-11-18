.class public Lorg/cocos2dx/lua/AppActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lua/AppActivity$OnSoftKeyboardStateChangedListener;,
        Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "===================> AppActivity"

.field public static bundleInstance:Landroid/os/Bundle;

.field public static instance:Lorg/cocos2dx/lua/AppActivity;

.field public static isInitialized:Z


# instance fields
.field private _hasNewMessage:Z

.field private accessToken:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mIsSoftKeyboardShowing:Z

.field private mKeyboardStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/cocos2dx/lua/AppActivity$OnSoftKeyboardStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

.field private role_id:Ljava/lang/String;

.field private role_level:Ljava/lang/String;

.field private role_name:Ljava/lang/String;

.field public sdk_init:I

.field public sdk_login:I

.field public sdk_needlogin:Z

.field private server_id:Ljava/lang/String;

.field private server_name:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Lcn/gamegod/littlegame/LittleGameHelper;

    invoke-direct {v0}, Lcn/gamegod/littlegame/LittleGameHelper;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->userId:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->accessToken:Ljava/lang/String;

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->_hasNewMessage:Z

    .line 120
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_init:I

    .line 121
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    .line 122
    iput-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_needlogin:Z

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->onSDKInitSuccess()V

    return-void
.end method

.method static synthetic access$100(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->onSDKInitFailed()V

    return-void
.end method

.method static synthetic access$200(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lorg/cocos2dx/lua/AppActivity;->onSDKLoginSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->onSDKLoginFailed()V

    return-void
.end method

.method static synthetic access$400(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->onSDKLogoutSuccess()V

    return-void
.end method

.method static synthetic access$502(Lorg/cocos2dx/lua/AppActivity;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lorg/cocos2dx/lua/AppActivity;->_hasNewMessage:Z

    return p1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 163
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 165
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private onSDKInitFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 574
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_init:I

    return-void
.end method

.method private onSDKInitSuccess()V
    .locals 1

    const/4 v0, 0x2

    .line 565
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_init:I

    .line 568
    iget-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_needlogin:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 569
    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->login(I)V

    :cond_0
    return-void
.end method

.method private onSDKLoginFailed()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    return-void
.end method

.method private onSDKLoginSuccess(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 578
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    .line 579
    new-instance v0, Lorg/cocos2dx/lua/AppActivity$9;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lua/AppActivity$9;-><init>(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 585
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->hideBottomUIMenu()V

    return-void
.end method

.method private onSDKLogoutSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    iput v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    .line 593
    new-instance v0, Lorg/cocos2dx/lua/AppActivity$10;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lua/AppActivity$10;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static rotateLandscape()V
    .locals 2

    .line 240
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 244
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    .line 246
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private sdkInit()V
    .locals 0
    return-void
.end method

.method public static testBuglyJavaCrash()V
    .locals 0

    .line 631
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testJavaCrash()V

    return-void
.end method

.method public static testBuglyNativeCrash()V
    .locals 2

    .line 626
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "testBuglyNativeCrash"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-static {}, Lcom/tencent/bugly/crashreport/CrashReport;->testNativeCrash()V

    return-void
.end method


# virtual methods
.method public addSoftKeyboardChangedListener(Lorg/cocos2dx/lua/AppActivity$OnSoftKeyboardStateChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mKeyboardStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public calcDiffDay(J)I
    .locals 7

    .line 604
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 607
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v1, 0x2

    .line 608
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x5

    .line 609
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const-string p1, "%d-%d-%d 00:00:00"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 612
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 614
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 615
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    div-long/2addr p1, v2

    .line 617
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x15180

    .line 618
    div-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v6, p1

    :catch_0
    return v6
.end method

.method public clearSession()V
    .locals 2

    .line 469
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "Start AppActvity SDK logout."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/lua/AppActivity$5;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/AppActivity$5;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .line 637
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "copyToClipboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v0, Lorg/cocos2dx/lua/AppActivity$11;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/lua/AppActivity$11;-><init>(Lorg/cocos2dx/lua/AppActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 305
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->finish()V

    .line 306
    invoke-static {}, Lcom/juhe/juhesdk/sdk/JuheSDK;->finish()V

    return-void
.end method

.method public getChannelType()I
    .locals 2

    .line 521
    invoke-static {}, Lcom/juhe/juhesdk/sdk/JuheSDK;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hideBottomUIMenu()V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->hideVirtualButton()V

    return-void
.end method

.method public isWeChatInstalled()Z
    .locals 1

    .line 652
    invoke-static {}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->isWeChatInstalled()Z

    move-result v0

    return v0
.end method

.method public jumpToComment()V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/lua/AppActivity$8;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/AppActivity$8;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public login(I)V
    .locals 2

    .line 408
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.sdk_login = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.sdk_login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 412
    iget p1, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_init:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 413
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "AppActivity SDK havn\'t init."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->sdkInit()V

    .line 415
    iput-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_needlogin:Z

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 420
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "AppActivity SDK init, have not result yet."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_needlogin:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_needlogin:Z

    .line 428
    iget p1, p0, Lorg/cocos2dx/lua/AppActivity;->sdk_login:I

    if-ne p1, v0, :cond_2

    .line 429
    sget-object p1, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v0, "AppActivity is waiting for login result"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 433
    :cond_2
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/cocos2dx/lua/AppActivity$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lua/AppActivity$4;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 342
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 343

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 322
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onAttachedToWindow()V

    .line 323

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 311
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onBackPressed()V

    .line 312

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 170
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->TAG:Ljava/lang/String;

    const-string v1, "AppActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 171
    invoke-super {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setEnableVirtualButton(Z)V

    .line 172
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 178
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    .line 181
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 186
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;

    invoke-direct {v2, p0}, Lorg/cocos2dx/lua/AppActivity$BatteryReceiver;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    .line 188
    invoke-virtual {p0, v2, v1}, Lorg/cocos2dx/lua/AppActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    invoke-virtual {v1, p0}, Lcn/gamegod/littlegame/LittleGameHelper;->setActivityInstance(Landroid/app/Activity;)V

    .line 191
    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity;->mLittleHelper:Lcn/gamegod/littlegame/LittleGameHelper;

    invoke-virtual {v1, p0}, Lcn/gamegod/littlegame/LittleGameHelper;->setLittleGame(Lorg/cocos2dx/lua/AppActivity;)V

    .line 193
    sput-object p0, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    .line 194
    sput-object p1, Lorg/cocos2dx/lua/AppActivity;->bundleInstance:Landroid/os/Bundle;

    .line 196
    invoke-static {}, Lorg/cocos2dx/lua/AppActivity;->rotateLandscape()V

    .line 198
    iput-boolean v0, p0, Lorg/cocos2dx/lua/AppActivity;->mIsSoftKeyboardShowing:Z

    .line 199
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity;->mKeyboardStateListeners:Ljava/util/ArrayList;

    .line 200
    new-instance p1, Lorg/cocos2dx/lua/AppActivity$1;

    invoke-direct {p1, p0}, Lorg/cocos2dx/lua/AppActivity$1;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    iput-object p1, p0, Lorg/cocos2dx/lua/AppActivity;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 213
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 215
    invoke-direct {p0}, Lorg/cocos2dx/lua/AppActivity;->sdkInit()V

    .line 217
    invoke-static {p0}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 287
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 288

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lua/AppActivity;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 372
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 317
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 318

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 280
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 281

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 349
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 350

    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 269
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 270

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 361
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 362

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 274
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 275
    invoke-virtual {p0}, Lorg/cocos2dx/lua/AppActivity;->hideBottomUIMenu()V

    .line 276

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 263
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 264

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 299
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 300

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 337

    return-void
.end method

.method public payment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 479
    new-instance v0, Lcom/juhe/juhesdk/middle/data/PayInfo;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/data/PayInfo;-><init>()V

    .line 480
    invoke-virtual {v0, p3}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, p4}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setAmount(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, p2}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setProductId(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setProductName(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p9}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setServerId(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p10}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setServerName(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p6}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setRoleId(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p7}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setRoleName(Ljava/lang/String;)V

    .line 488
    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setRoleLevel(I)V

    .line 489
    invoke-virtual {v0, p5}, Lcom/juhe/juhesdk/middle/data/PayInfo;->setExtraParam(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    new-instance p2, Lorg/cocos2dx/lua/AppActivity$6;

    invoke-direct {p2, p0, v0}, Lorg/cocos2dx/lua/AppActivity$6;-><init>(Lorg/cocos2dx/lua/AppActivity;Lcom/juhe/juhesdk/middle/data/PayInfo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeSoftKeyboardChangedListener(Lorg/cocos2dx/lua/AppActivity$OnSoftKeyboardStateChangedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mKeyboardStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 552
    new-instance v0, Lcom/juhe/juhesdk/middle/data/GameData;

    invoke-direct {v0}, Lcom/juhe/juhesdk/middle/data/GameData;-><init>()V

    .line 553
    invoke-virtual {v0, p2}, Lcom/juhe/juhesdk/middle/data/GameData;->setRoleId(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p4}, Lcom/juhe/juhesdk/middle/data/GameData;->setRoleName(Ljava/lang/String;)V

    .line 555
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/juhe/juhesdk/middle/data/GameData;->setRoleLevel(I)V

    .line 556
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/juhe/juhesdk/middle/data/GameData;->setRoleCreateTime(J)V

    .line 557
    invoke-virtual {v0, p5}, Lcom/juhe/juhesdk/middle/data/GameData;->setServerId(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p6}, Lcom/juhe/juhesdk/middle/data/GameData;->setServerName(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 559
    invoke-virtual {v0, p1, p2}, Lcom/juhe/juhesdk/middle/data/GameData;->setBattlePoint(J)V

    const/4 p1, 0x0

    .line 560
    invoke-virtual {v0, p1}, Lcom/juhe/juhesdk/middle/data/GameData;->setVipLevel(I)V

    .line 561
    invoke-static {v0, p7}, Lcom/juhe/juhesdk/sdk/JuheSDK;->submitGameData(Lcom/juhe/juhesdk/middle/data/GameData;I)V

    return-void
.end method

.method public showFloat()V
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/cocos2dx/lua/AppActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/cocos2dx/lua/AppActivity$7;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/AppActivity$7;-><init>(Lorg/cocos2dx/lua/AppActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public statisCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 540
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->CREATE:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lorg/cocos2dx/lua/AppActivity;->setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public statisLevelup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 548
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->LEVELUP:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lorg/cocos2dx/lua/AppActivity;->setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public statisLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 544
    sget-object v0, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->LOGIN:Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;

    invoke-virtual {v0}, Lcom/juhe/juhesdk/middle/common/Constants$SUBMIT_TYPE;->getValue()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lorg/cocos2dx/lua/AppActivity;->setUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 377
    new-instance v0, Lorg/cocos2dx/lua/AppActivity$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2dx/lua/AppActivity$2;-><init>(Lorg/cocos2dx/lua/AppActivity;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/AppActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
