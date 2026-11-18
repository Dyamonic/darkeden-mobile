.class public final Lcom/qq/gdt/action/e/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/e/d$b;,
        Lcom/qq/gdt/action/e/d$a;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/Handler;


# direct methods
.method static synthetic a()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/e/d;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/qq/gdt/action/e/d$a;
    .locals 5

    new-instance v0, Lcom/qq/gdt/action/e/d$a;

    invoke-direct {v0}, Lcom/qq/gdt/action/e/d$a;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    invoke-static {}, Lcom/qq/gdt/action/e;->w()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qq/gdt/action/e/d$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/qq/gdt/action/e/d$a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v3, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$a;->c:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$a;->d:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/qq/gdt/action/e/b;->b(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$a;->e:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/qq/gdt/action/e/b;->b(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$a;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->c(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$a;->g:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/qq/gdt/action/e/b;->c(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qq/gdt/action/e/d$a;->h:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/qq/gdt/action/e/b;->c(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qq/gdt/action/e/d$a;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/qq/gdt/action/e/d$a;->j:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/qq/gdt/action/e/i;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/qq/gdt/action/e/d$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "appwaid"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {p0}, Lcom/qq/gdt/action/e/d;->c(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "oaid"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/qq/gdt/action/e/d;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/qq/gdt/action/e/d;->b(Landroid/content/Context;J)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "openDeviceIdentifier"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/qq/gdt/action/e/d;->b:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/qq/gdt/action/e/d;->a(Landroid/content/Context;J)V

    invoke-static {p0}, Lcom/qq/gdt/action/e/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/qq/gdt/action/e/d$1;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/e/d$1;-><init>(Landroid/content/Context;)V

    sget-object p0, Lcom/qq/gdt/action/e/d;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/e/d;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/qq/gdt/action/e/d$b;
    .locals 7

    new-instance v0, Lcom/qq/gdt/action/e/d$b;

    invoke-direct {v0}, Lcom/qq/gdt/action/e/d$b;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService;->getTuringDIDCached(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "fillAidTicketAndTaid TuringDIDService.getTuringDIDCached return null"

    invoke-static {v1, p0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getAIDTicket()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getExpiredTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "fillAidTicketAndTaid errorCode:%d aidTicket:%s, taidTicket:%s, expiredTimestamp:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getAIDTicket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qq/gdt/action/e/d$b;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/qq/gdt/action/e/d$b;->b:Ljava/lang/String;

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getTAIDTicket()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qq/gdt/action/e/d$b;->c:Ljava/lang/String;

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v1

    iput v1, v0, Lcom/qq/gdt/action/e/d$b;->d:I

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/e/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v2, "errorCode"

    invoke-interface {p0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;->getErrorCode()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/16 p0, 0xdaf

    invoke-static {p0, v1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    :cond_2
    return-object v0
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/qq/gdt/action/e/d$4;

    invoke-direct {v1, v0, p0}, Lcom/qq/gdt/action/e/d$4;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;)V

    sget-object p0, Lcom/qq/gdt/action/e/d;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c()Lorg/json/JSONObject;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e/d;->d()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0xdae

    :try_start_0
    const-string v1, "initTAIDSDK versionInfo:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;->getVersionInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string v1, "init aid context is null"

    invoke-static {v1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/qq/gdt/action/e/d$3;

    invoke-direct {v1}, Lcom/qq/gdt/action/e/d$3;-><init>()V

    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;->createConf(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringPrivacyPolicy;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;

    move-result-object v1

    new-instance v2, Lcom/qq/gdt/action/e/d$2;

    invoke-direct {v2, p0}, Lcom/qq/gdt/action/e/d$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->turingDeviceInfoProvider(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;

    move-result-object p0

    const v1, 0x19c4c

    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->channel(I)Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK$Builder;->build()Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringSDK;->init()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/e/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cErrorCode:02\uff0c\u8bf7\u8054\u7cfb\u5e7f\u70b9\u901a\u8fd0\u8425"

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/gdt/action/e/d;->d()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "actionSetId"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "create error"

    invoke-static {v0, p0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/qq/gdt/action/e/d;->a(Landroid/content/Context;Z)Lcom/qq/gdt/action/e/d$a;

    invoke-static {p0}, Lcom/qq/gdt/action/e/d;->b(Landroid/content/Context;)Lcom/qq/gdt/action/e/d$b;

    return-void
.end method
