.class public Lorg/cocos2dx/lua/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# static fields
.field public static TAG:Ljava/lang/String; = "LaunchActivity"


# instance fields
.field private final REQUEST_CODE_ADDRESS:I

.field private permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 44
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    const/16 v0, 0x64

    .line 47
    iput v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->REQUEST_CODE_ADDRESS:I

    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lua/LaunchActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V

    return-void
.end method

.method private isInternetConnectionAvailable()Z
    .locals 1
    const/4 v0, 0x1
    return v0
.end method

.method private requestPermission()V
    .locals 3

    .line 88
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "requestPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 93
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 96
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 97
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "Permissions GRANTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "Req For Permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lorg/cocos2dx/lua/LaunchActivity;->permissions:[Ljava/lang/String;

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 106
    :cond_2
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "VERSION.SDK_INT < 23"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V

    goto :goto_1

    .line 110
    :cond_3
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "sdkVersion < 22"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V

    :goto_1
    return-void
.end method

.method private sdkPrepare()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->isInternetConnectionAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lorg/cocos2dx/lua/LaunchActivity$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lua/LaunchActivity$1;-><init>(Lorg/cocos2dx/lua/LaunchActivity;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/LaunchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 137
    :cond_0
    new-instance v0, Lorg/cocos2dx/lua/LaunchActivity$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lua/LaunchActivity$2;-><init>(Lorg/cocos2dx/lua/LaunchActivity;)V

    invoke-virtual {p0, v0}, Lorg/cocos2dx/lua/LaunchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected hideBottomUIMenu()V
    .locals 8

    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 182
    const-class v0, Landroid/view/View;

    :try_start_0
    const-string v1, "SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION"

    .line 185
    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN"

    .line 186
    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "SYSTEM_UI_FLAG_HIDE_NAVIGATION"

    .line 187
    invoke-static {v0, v3}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "SYSTEM_UI_FLAG_FULLSCREEN"

    .line 188
    invoke-static {v0, v4}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "SYSTEM_UI_FLAG_IMMERSIVE_STICKY"

    .line 189
    invoke-static {v0, v5}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    .line 190
    invoke-static {v0, v6}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    or-int/2addr v0, v4

    or-int/2addr v0, v5

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v7, v1

    .line 199
    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v2, "setSystemUiVisibility"

    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3, v7}, Lorg/cocos2dx/lib/Cocos2dxReflectionHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    sget-object v1, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v2, "hideVirtualButton"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 211
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "LaunchActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->onLoadNativeLibraries()V

    .line 65
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->requestPermission()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onLoadNativeLibraries()V
    .locals 3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 151
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.app.lib_name"

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 216
    sget-object v0, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", permissions.num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", grantResults.num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 221
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    aget v2, p3, v1

    if-eqz v2, :cond_1

    .line 223
    sget-object p1, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 228
    :goto_1
    array-length p1, p2

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 229
    sget-object p1, Lorg/cocos2dx/lua/LaunchActivity;->TAG:Ljava/lang/String;

    const-string p2, "permissions ok  sdkPrepare "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lorg/cocos2dx/lua/LaunchActivity;->sdkPrepare()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 267
    invoke-virtual {p0}, Lorg/cocos2dx/lua/LaunchActivity;->hideBottomUIMenu()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
