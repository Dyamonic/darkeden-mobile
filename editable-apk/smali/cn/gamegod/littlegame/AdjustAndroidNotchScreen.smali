.class public Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;
.super Ljava/lang/Object;
.source "AdjustAndroidNotchScreen.java"


# static fields
.field public static final NOTCH_IN_SCREEN_VOIO:I = 0x20

.field public static final ROUNDED_IN_SCREEN_VOIO:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotchSizeHuawei()[I
    .locals 6

    const-string v0, "test"

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 67
    fill-array-data v1, :array_0

    .line 69
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lua/AppActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getNotchSize"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 71
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 72
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catch_0
    :try_start_1
    const-string v2, "getNotchSize Exception"

    .line 78
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    const-string v2, "getNotchSize NoSuchMethodException"

    .line 76
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_2
    const-string v2, "getNotchSize ClassNotFoundException"

    .line 74
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 141
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInt"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 142
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    .line 143
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p1
.end method

.method private static getStatusBarHeight()I
    .locals 4

    .line 59
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    sget-object v1, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lua/AppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasIphoneAdjustNotchScreenHeight()Ljava/lang/String;
    .locals 6

    .line 17
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 18
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v3, "brand : "

    .line 21
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "model : "

    .line 22
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "displayStr : "

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Xiaomi"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->hasNotchInXiaomi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->getStatusBarHeight()I

    move-result v2

    goto/16 :goto_0

    :cond_0
    const-string v1, "vivo"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->hasNotchInScreenAtVoio()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->getStatusBarHeight()I

    move-result v2

    goto/16 :goto_0

    :cond_1
    const-string v1, "OPPO"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->hasNotchInOppo()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->getStatusBarHeight()I

    move-result v2

    goto :goto_0

    :cond_2
    const-string v1, "HUAWEI"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->hasNotchInHuawei()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    invoke-static {}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->getNotchSizeHuawei()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v2, v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "samsung"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 38
    :cond_4
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 41
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 42
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width-display :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "heigth-display :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    div-int/2addr v1, v0

    int-to-double v0, v1

    const-wide v3, 0x40008f5c28f5c28fL    # 2.07

    cmpl-double v0, v0, v3

    if-lez v0, :cond_5

    const/16 v2, 0x2c

    .line 52
    :cond_5
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notchHeight:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasNotchInHuawei()Z
    .locals 4

    const/4 v0, 0x0

    .line 88
    :try_start_0
    sget-object v1, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v1}, Lorg/cocos2dx/lua/AppActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.huawei.android.util.HwNotchSizeUtil"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasNotchInScreen"

    new-array v3, v0, [Ljava/lang/Class;

    .line 90
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    new-array v3, v0, [Ljava/lang/Object;

    .line 92
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static hasNotchInOppo()Z
    .locals 2

    .line 111
    sget-object v0, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/lua/AppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNotchInScreenAtVoio()Z
    .locals 7

    const-string v0, "test"

    const/4 v1, 0x0

    .line 120
    :try_start_0
    sget-object v2, Lorg/cocos2dx/lua/AppActivity;->instance:Lorg/cocos2dx/lua/AppActivity;

    invoke-virtual {v2}, Lorg/cocos2dx/lua/AppActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.util.FtFeature"

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFeatureSupport"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 122
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x20

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :catch_0
    :try_start_1
    const-string v2, "hasNotchInScreen Exception"

    .line 132
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string v2, "hasNotchInScreen NoSuchMethodException"

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2
    const-string v2, "hasNotchInScreen ClassNotFoundException"

    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1
.end method

.method public static hasNotchInXiaomi()Z
    .locals 2

    const-string v0, "ro.miui.notch"

    const-string v1, "0"

    .line 106
    invoke-static {v0, v1}, Lcn/gamegod/littlegame/AdjustAndroidNotchScreen;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
