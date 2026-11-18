.class public Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;
.super Ljava/lang/Object;
.source "WeChatMiniProgramLauncher.java"


# static fields
.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 13
    sget-object v0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkWeChatByLaunching()Z
    .locals 2

    .line 56
    :try_start_0
    sget-object v0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isWeChatInstalled()Z
    .locals 6

    .line 25
    :try_start_0
    sget-object v0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.tencent.mm"

    .line 29
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 36
    :catch_0
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "weixin://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 42
    :cond_2
    :goto_1
    invoke-static {}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->checkWeChatByLaunching()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    invoke-static {}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->checkWeChatByLaunching()Z

    move-result v0

    return v0
.end method

.method public static launchMiniProgram(Ljava/lang/String;)V
    .locals 2

    const-string v0, "launchMiniProgram"

    const-string v1, "getInstance() called"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "WeChatLauncher"

    const-string v0, "Context is null, please call setContext first."

    .line 81
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_0
    invoke-static {}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->isWeChatInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1"

    .line 87
    invoke-static {p0}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->showToast(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10000000

    .line 94
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    sget-object p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 99
    sget-object p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string p0, "\u65e0\u6cd5\u6253\u5f00\u5fae\u4fe1\uff0c\u8bf7\u68c0\u67e5\u5fae\u4fe1\u7248\u672c"

    .line 101
    invoke-static {p0}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    sget-object p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "\u542f\u52a8\u5fae\u4fe1\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u5b89\u88c5\u4e86\u5fae\u4fe1"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 18
    sput-object p0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static showToast(Ljava/lang/String;)V
    .locals 2

    .line 68
    sget-object v0, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 69
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher$1;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lua/WeChatMiniProgramLauncher$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
