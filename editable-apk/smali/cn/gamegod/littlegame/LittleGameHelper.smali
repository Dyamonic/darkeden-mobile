.class public Lcn/gamegod/littlegame/LittleGameHelper;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "LittleGameHelper.java"


# static fields
.field public static TAG:Ljava/lang/String; = "LittleGameHelper"

.field public static mActivity:Landroid/app/Activity;

.field public static mActivityInstance:Landroid/app/Activity;


# instance fields
.field mBatteryPower:F

.field private mLittleGame:Lorg/cocos2dx/lua/AppActivity;

.field private m_progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mBatteryPower:F

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->m_progress:I

    .line 68
    sput-object p0, Lcn/gamegod/littlegame/LittleGameHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static getActivityInstance()Ljava/lang/Object;
    .locals 1

    .line 84
    sget-object v0, Lcn/gamegod/littlegame/LittleGameHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getAdjustNotchScreenHeight()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getAppBuild()Ljava/lang/String;
    .locals 3

    .line 127
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 129
    :try_start_0
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 130
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 3

    .line 117
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 120
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "0.0.0.1"

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 3

    .line 88
    sget-object v0, Lcn/gamegod/littlegame/LittleGameHelper;->mActivityInstance:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 89
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    :cond_0
    sget-object v0, Lcn/gamegod/littlegame/LittleGameHelper;->mActivityInstance:Landroid/app/Activity;

    const-string v1, "phone"

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 95
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMEI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "IMEI: CAN NOT GET IMEI"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getUuid()Ljava/lang/String;
    .locals 1

    .line 143
    invoke-static {}, Lcom/juhe/juhesdk/utils/CommonUtils;->instance()Lcom/juhe/juhesdk/utils/CommonUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/juhe/juhesdk/utils/CommonUtils;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZipSize(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    .line 288
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    move-wide v2, v0

    .line 290
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :catch_0
    return-wide v0
.end method

.method public static native onProgress(I)V
.end method


# virtual methods
.method public active(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public clearSession()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->clearSession()V

    :cond_0
    return-void
.end method

.method public native clearSessionCallback()V
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0, p1}, Lorg/cocos2dx/lua/AppActivity;->copyToClipboard(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createDirectoryIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    .line 280
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method

.method public getBatteryPower()F
    .locals 1

    .line 147
    iget v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mBatteryPower:F

    return v0
.end method

.method public getChannelType()I
    .locals 1

    .line 394
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getChannelType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getObbPath()I
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcn/gamegod/littlegame/LittleGameHelper;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 250
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/obb/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    invoke-static {}, Lcn/gamegod/littlegame/LittleGameHelper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 262
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 264
    :goto_0
    sget-object v1, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public initSdk()V
    .locals 0

    return-void
.end method

.method public isWeChatInstalled()Z
    .locals 1

    .line 405
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->isWeChatInstalled()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jumpToComment()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->jumpToComment()V

    :cond_0
    return-void
.end method

.method public level(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public login(I)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p1}, Lorg/cocos2dx/lua/AppActivity;->login(I)V

    :cond_0
    return-void
.end method

.method public native loginCallback(ILjava/lang/String;)V
.end method

.method public loginStatistic(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public logout()V
    .locals 0

    return-void
.end method

.method public native micCallback(Ljava/lang/String;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public native onShareSuccess()V
.end method

.method public openPage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public payment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    .line 162
    iget-object v1, v0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 163
    invoke-virtual/range {v1 .. v11}, Lorg/cocos2dx/lua/AppActivity;->payment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public native paymentCallback(ILjava/lang/String;)V
.end method

.method public reLogin(II)V
    .locals 0

    return-void
.end method

.method public native reLoginCallback(I)V
.end method

.method public setActivityInstance(Landroid/app/Activity;)V
    .locals 0

    .line 76
    sput-object p1, Lcn/gamegod/littlegame/LittleGameHelper;->mActivityInstance:Landroid/app/Activity;

    return-void
.end method

.method public setBattleryPower(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mBatteryPower:F

    return-void
.end method

.method public native setCpServerId(Ljava/lang/String;)V
.end method

.method public setLittleGame(Lorg/cocos2dx/lua/AppActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    return-void
.end method

.method public setSoftKeyboardHeight(F)V
    .locals 1

    .line 108
    sget-object p1, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    const-string v0, "LittleGameHelper setSoftKeyboardHeight"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showFloat()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->showFloat()V

    :cond_0
    return-void
.end method

.method public statisCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 228
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 229
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lua/AppActivity;->statisCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public statisLevelup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 233
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 234
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lua/AppActivity;->statisLevelup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public statisLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 223
    iget-object v0, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 224
    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lua/AppActivity;->statisLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 300
    sget-object v0, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unZip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/gamegod/littlegame/LittleGameHelper;->createDirectoryIfNeeded(Ljava/lang/String;)V

    .line 303
    invoke-static {p3}, Lcn/gamegod/littlegame/LittleGameHelper;->getZipSize(Ljava/lang/String;)J

    move-result-wide v0

    .line 306
    new-instance p3, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v2, 0x0

    .line 310
    :goto_0
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 311
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 314
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 317
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/gamegod/littlegame/LittleGameHelper;->createDirectoryIfNeeded(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 320
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 323
    :goto_1
    invoke-virtual {p3, p1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    int-to-long v7, v6

    add-long/2addr v2, v7

    const-wide/16 v7, 0x64

    mul-long/2addr v7, v2

    .line 325
    div-long/2addr v7, v0

    long-to-int v7, v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_1

    .line 326
    iget v8, p0, Lcn/gamegod/littlegame/LittleGameHelper;->m_progress:I

    const/16 v9, 0x6e

    if-ge v8, v9, :cond_1

    add-int/lit8 v8, v7, 0xa

    .line 327
    iput v8, p0, Lcn/gamegod/littlegame/LittleGameHelper;->m_progress:I

    .line 328
    invoke-static {v7}, Lcn/gamegod/littlegame/LittleGameHelper;->onProgress(I)V

    goto :goto_2

    .line 329
    :cond_1
    iget v8, p0, Lcn/gamegod/littlegame/LittleGameHelper;->m_progress:I

    if-lt v7, v8, :cond_2

    add-int/lit8 v7, v7, 0xa

    .line 330
    iput v7, p0, Lcn/gamegod/littlegame/LittleGameHelper;->m_progress:I

    .line 331
    invoke-static {v7}, Lcn/gamegod/littlegame/LittleGameHelper;->onProgress(I)V

    .line 333
    :cond_2
    :goto_2
    invoke-virtual {v4, p1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 334
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1

    .line 336
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_0

    .line 339
    :cond_4
    invoke-virtual {p3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public unZipObb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 346
    sget-object v0, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unZipObb : obbPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", unzipPath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :try_start_0
    invoke-virtual {p0}, Lcn/gamegod/littlegame/LittleGameHelper;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 350
    sget-object p1, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    const-string p2, "unZipObb error : obbFilePath == null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    .line 353
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 355
    sget-object p1, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    const-string p2, "unZipObb error : !obbFile.exists()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x3

    return p1

    .line 358
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_2

    .line 361
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lcn/gamegod/littlegame/LittleGameHelper;->unZip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 381
    :cond_2
    iget-object p2, p0, Lcn/gamegod/littlegame/LittleGameHelper;->mLittleGame:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Lorg/cocos2dx/lua/AppActivity;->unzip(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 387
    sget-object p2, Lcn/gamegod/littlegame/LittleGameHelper;->TAG:Ljava/lang/String;

    const-string v0, "unZipObb error : Exception"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
