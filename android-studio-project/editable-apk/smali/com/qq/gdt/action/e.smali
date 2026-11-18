.class public Lcom/qq/gdt/action/e;
.super Ljava/lang/Object;


# static fields
.field private static volatile C:Z

.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/qq/gdt/action/e;

.field private static volatile d:Z

.field private static volatile e:Z

.field private static volatile f:Z

.field private static volatile g:Z

.field private static volatile h:Z

.field private static volatile i:Ljava/lang/String;

.field private static volatile j:Z

.field private static volatile k:Z

.field private static q:Landroid/os/Handler;

.field private static final x:Ljava/util/regex/Pattern;


# instance fields
.field private A:Z

.field private B:J

.field private volatile D:Ljava/lang/String;

.field private volatile E:Z

.field private volatile F:Lorg/json/JSONObject;

.field private volatile G:Lcom/qq/gdt/action/PrivateController;

.field private volatile H:Landroid/content/Context;

.field private volatile I:Z

.field private volatile J:Z

.field private K:Ljava/lang/String;

.field public volatile a:J

.field private volatile l:Landroid/content/Context;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Ljava/lang/String;

.field private volatile o:Ljavax/crypto/SecretKey;

.field private volatile p:Ljavax/crypto/SecretKey;

.field private final r:Ljava/lang/String;

.field private s:Ljava/util/concurrent/atomic/AtomicLong;

.field private t:Ljava/util/concurrent/atomic/AtomicLong;

.field private u:Ljava/lang/String;

.field private volatile v:Ljava/lang/String;

.field private volatile w:Lcom/qq/gdt/action/ChannelType;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDTAction\u521d\u59cb\u5316\u6210\u529f\uff08sdkv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkvc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/e;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/qq/gdt/action/e;->d:Z

    sput-boolean v0, Lcom/qq/gdt/action/e;->e:Z

    sput-boolean v0, Lcom/qq/gdt/action/e;->f:Z

    sput-boolean v0, Lcom/qq/gdt/action/e;->g:Z

    sput-boolean v0, Lcom/qq/gdt/action/e;->h:Z

    const-string v1, ""

    sput-object v1, Lcom/qq/gdt/action/e;->i:Ljava/lang/String;

    sput-boolean v0, Lcom/qq/gdt/action/e;->j:Z

    sput-boolean v0, Lcom/qq/gdt/action/e;->k:Z

    const-string v0, "^[a-zA-Z0-9_]{1,32}$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/e;->x:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qq/gdt/action/e;->C:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/e;->r:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qq/gdt/action/e;->s:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qq/gdt/action/e;->t:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v2, p0, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    sget-object v0, Lcom/qq/gdt/action/ChannelType;->CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

    iput-object v0, p0, Lcom/qq/gdt/action/e;->w:Lcom/qq/gdt/action/ChannelType;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->y:J

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->z:J

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/qq/gdt/action/e;->A:Z

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->B:J

    iput-object v2, p0, Lcom/qq/gdt/action/e;->D:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/e;->E:Z

    iput-wide v3, p0, Lcom/qq/gdt/action/e;->a:J

    iput-boolean v0, p0, Lcom/qq/gdt/action/e;->I:Z

    iput-boolean v5, p0, Lcom/qq/gdt/action/e;->J:Z

    new-instance v0, Lcom/qq/gdt/action/e$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qq/gdt/action/e$1;-><init>(Lcom/qq/gdt/action/e;Landroid/os/Looper;)V

    sput-object v0, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    return-void
.end method

.method static synthetic D()Z
    .locals 1

    sget-boolean v0, Lcom/qq/gdt/action/e;->g:Z

    return v0
.end method

.method private E()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a/a;->a()Lcom/qq/gdt/action/multioprocess/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/a/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private F()V
    .locals 6

    sget-boolean v0, Lcom/qq/gdt/action/e;->h:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;

    invoke-direct {v0}, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :goto_0
    sput-boolean v2, Lcom/qq/gdt/action/e;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering receiver: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :goto_1
    sput-boolean v2, Lcom/qq/gdt/action/e;->h:Z

    :cond_1
    return-void
.end method

.method private G()V
    .locals 2

    invoke-static {}, Lcom/qq/gdt/action/j/j;->a()Lcom/qq/gdt/action/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/j/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/e$3;

    invoke-direct {v1, p0}, Lcom/qq/gdt/action/e$3;-><init>(Lcom/qq/gdt/action/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private H()V
    .locals 1

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/e;->D:Ljava/lang/String;

    return-void
.end method

.method private I()Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/qq/gdt/action/e;->B:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "begin_time"

    iget-wide v4, p0, Lcom/qq/gdt/action/e;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v2
.end method

.method private J()V
    .locals 4

    sget-object v0, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/qq/gdt/action/e;->A:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    iget-object v2, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/qq/gdt/action/e;->B:J

    return-wide p1
.end method

.method public static a()Lcom/qq/gdt/action/e;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/e;->c:Lcom/qq/gdt/action/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/e;->c:Lcom/qq/gdt/action/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/e;

    invoke-direct {v1}, Lcom/qq/gdt/action/e;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/e;->c:Lcom/qq/gdt/action/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/qq/gdt/action/e;->c:Lcom/qq/gdt/action/e;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e;->o:Ljavax/crypto/SecretKey;

    return-object p1
.end method

.method private a(Lcom/qq/gdt/action/GDTAction$a;)V
    .locals 2

    sget-boolean v0, Lcom/qq/gdt/action/e;->j:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/qq/gdt/action/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/e$4;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/e$4;-><init>(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    new-instance v1, Lcom/qq/gdt/action/e$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/qq/gdt/action/e$5;-><init>(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->J()V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/e;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/e;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/qq/gdt/action/e;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->I()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 5

    const-string v0, "gdt_traceid"

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIntentData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/qq/gdt/action/e;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTraceId err:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReadConfigChannelId channelId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/d;->c()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/d;->c()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ","

    const-string v4, "you set "

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in remote channelid list \uff0cremote channelid list "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \uff0cplease set"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0xa052

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in remote channelid list \uff0cremote channelid list"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0xa051

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "not read channleIds"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0x64321

    goto :goto_0

    :cond_2
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "not read UserMessageSyncByMemory"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const p1, 0x64322

    :goto_0
    invoke-static {p1}, Lcom/qq/gdt/action/h/a;->a(I)V

    :cond_3
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/qq/gdt/action/e;->g:Z

    return p0
.end method

.method static synthetic c(Lcom/qq/gdt/action/e;)Ljavax/crypto/SecretKey;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/e;->o:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method private c(Z)Lorg/json/JSONObject;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    iget-wide v2, p0, Lcom/qq/gdt/action/e;->z:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/qq/gdt/action/e;->y:J

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    :goto_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    return-object p1
.end method

.method static synthetic d(Lcom/qq/gdt/action/e;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initOnce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/qq/gdt/action/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/qq/gdt/action/e;->f:Z

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "initOnce has executed"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/qq/gdt/action/j/t;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/qq/gdt/action/j/c;->a()Lcom/qq/gdt/action/j/c;

    move-result-object p1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/j/c;->a(Landroid/content/Context;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/qq/gdt/action/e;->f:Z

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/qq/gdt/action/j/d;->e()Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationContext ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->F()V

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "registerUserMessageBroadcast fail , ApplicationContext null"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method static synthetic e(Lcom/qq/gdt/action/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->H()V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "com.qq.gdt.action.DeviceIdPref"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "device_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set device id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w()Z
    .locals 1

    sget-boolean v0, Lcom/qq/gdt/action/e;->C:Z

    return v0
.end method


# virtual methods
.method public A()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last vister cp inveter time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/qq/gdt/action/e;->a:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network time "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/b;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/qq/gdt/action/e;->a:J

    sub-long/2addr v0, v3

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/b;->o()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public declared-synchronized B()Lcom/qq/gdt/action/PrivateController;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->G:Lcom/qq/gdt/action/PrivateController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/qq/gdt/action/c;

    invoke-direct {v0}, Lcom/qq/gdt/action/c;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/e;->G:Lcom/qq/gdt/action/PrivateController;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->G:Lcom/qq/gdt/action/PrivateController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/gdt/action/e;->J:Z

    return v0
.end method

.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "ainit"

    sget-boolean v1, Lcom/qq/gdt/action/e;->e:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "byAutoInit"

    sget-boolean v1, Lcom/qq/gdt/action/e;->j:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "byAutoInitFinal"

    sget-boolean v1, Lcom/qq/gdt/action/e;->k:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "ifrom"

    sget-object v1, Lcom/qq/gdt/action/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sinit"

    sget-boolean v1, Lcom/qq/gdt/action/e;->d:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/gdt/action/e;->A:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->z:J

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/e;->c(Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ENTER_FOREGROUND"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qq/gdt/action/j/t;->b(Landroid/content/Context;J)V

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/e;->b(Landroid/app/Activity;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->B:J

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->J()V

    iget-object p1, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/qq/gdt/action/g/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/e;->e(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/qq/gdt/action/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qq.gdt.action.DeviceIdPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gdt_traceid"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qq/gdt/action/j/t;->d(Landroid/content/Context;J)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v8, "0"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v10}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/qq/gdt/action/PrivateController;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e;->G:Lcom/qq/gdt/action/PrivateController;

    return-void
.end method

.method protected a(Lcom/qq/gdt/action/c/a;)V
    .locals 3

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/qq/gdt/action/c/a;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/a;->a([Lcom/qq/gdt/action/c/a;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/qq/gdt/action/multioprocess/b;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    monitor-enter p0

    const/4 v14, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package name gcheckUserMessageAndInit  from  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " eventObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v11, :cond_1

    const-string v0, "package name get from remote success  usermessage is null "

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x9c5f

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0xa047

    invoke-static {v0}, Lcom/qq/gdt/action/h/a;->a(I)V

    goto/16 :goto_5

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->k()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x9c62

    invoke-static {v0, v12, v11}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_0

    :cond_2
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0xa04a

    invoke-static {v0, v11}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->e()Lcom/qq/gdt/action/ChannelType;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->d()Ljava/lang/String;

    move-result-object v17

    const-string v1, "0"

    sput-object v1, Lcom/qq/gdt/action/e;->i:Ljava/lang/String;

    const-string v1, "init from last user set"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    sget-object v8, Lcom/qq/gdt/action/e;->i:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v10}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;ZZ)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-virtual/range {v1 .. v6}, Lcom/qq/gdt/action/multioprocess/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Z)Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual/range {p0 .. p0}, Lcom/qq/gdt/action/e;->b()Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logActon remote fill result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v7, :cond_5

    const v0, 0x9c64

    goto :goto_1

    :cond_5
    const v0, 0x9c63

    :goto_1
    invoke-static {v0, v12, v11}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    goto/16 :goto_5

    :cond_6
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v7, :cond_7

    const v0, 0xa04c

    goto :goto_2

    :cond_7
    const v0, 0xa04b

    :goto_2
    invoke-static {v0, v11}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto/16 :goto_5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "logActon user set not complete"

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x9c60

    invoke-static {v0, v12, v11}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_3

    :cond_9
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0xa048

    invoke-static {v0, v11}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    :cond_a
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->h()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->i()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->m()Lcom/qq/gdt/action/ChannelType;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->n()Ljava/lang/String;

    move-result-object v10

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "2"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/qq/gdt/action/multioprocess/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/qq/gdt/action/e;->E()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channelIdRemote e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_4
    const-string v1, "init from last remote set"

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x1

    move-object/from16 v1, p0

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v6, v0

    move-object v8, v10

    move-object/from16 v19, v10

    move/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;ZZ)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v0

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v7}, Lcom/qq/gdt/action/multioprocess/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Ljava/lang/String;Z)Lcom/qq/gdt/action/multioprocess/b;

    invoke-virtual/range {p0 .. p0}, Lcom/qq/gdt/action/e;->b()Z

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logActon remote fill result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v8, :cond_d

    const v0, 0x61be9

    goto/16 :goto_1

    :cond_d
    const v0, 0x61bdf

    goto/16 :goto_1

    :cond_e
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v8, :cond_f

    const v0, 0x642f9

    goto/16 :goto_2

    :cond_f
    const v0, 0x642ef

    goto/16 :goto_2

    :cond_10
    const-string v0, "logActon remote set not complete"

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const v0, 0x61bc1

    invoke-static {v0, v12, v11}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_5

    :cond_11
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x642d1

    invoke-static {v0, v11}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_3
    const-string v1, "checkUserMessageAndInit fill exception"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v14

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "auto_init_by_logaction"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x9c61

    invoke-static {v0, v12, v11}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_5

    :cond_12
    const-string v0, "auto_init_by_start"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0xa049

    invoke-static {v0, v11}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_13
    :goto_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/qq/gdt/action/e;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "userUniqueId\u53c2\u6570\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/multioprocess/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qq/gdt/action/e;->J:Z

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;ZZ)Z
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move-object/from16 v3, p6

    move-object/from16 v6, p7

    move/from16 v8, p9

    monitor-enter p0

    const/4 v9, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init byAuto = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " initfrom = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " needSaveUserSetInfo = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p8

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " userActionSetId = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " appKey = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " channel = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " channelId = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v12, v9, [Ljava/lang/Object;

    invoke-static {v7, v12}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-boolean v8, Lcom/qq/gdt/action/e;->j:Z

    sput-boolean v8, Lcom/qq/gdt/action/e;->k:Z

    sput-object v6, Lcom/qq/gdt/action/e;->i:Ljava/lang/String;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "byAutoInit"

    invoke-virtual {v12, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "ifrom"

    invoke-virtual {v12, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v6, Lcom/qq/gdt/action/e;->d:Z

    if-eqz v6, :cond_0

    const-string v0, "GDTAction\u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\uff0c\u4e0d\u9700\u8981\u518d\u6b21\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v9

    :cond_0
    if-nez v2, :cond_1

    :try_start_1
    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p0, v3, v0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v9

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, v1, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    const/16 v6, 0xbbd

    invoke-static {v6, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    invoke-static/range {p2 .. p2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xbba

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684userActionSetId\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v3, v0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v9

    :cond_2
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/qq/gdt/action/e;->m:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v0, 0xbbf

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684appKey\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, v3, v0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v9

    :cond_3
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/qq/gdt/action/e;->n:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/qq/gdt/action/e;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v0, 0xbc0

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const-string v0, "GDTAction\u521d\u59cb\u5316\u5931\u8d25\uff0cinit\u65b9\u6cd5\u7684channelId\u53c2\u6570\u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, v3, v0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/GDTAction$a;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v9

    :cond_4
    :try_start_5
    iput-object v0, v1, Lcom/qq/gdt/action/e;->v:Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->E()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v6, v0

    invoke-direct {p0, v6}, Lcom/qq/gdt/action/e;->b(Ljava/lang/String;)V

    iput-object v5, v1, Lcom/qq/gdt/action/e;->w:Lcom/qq/gdt/action/ChannelType;

    iput-object v2, v1, Lcom/qq/gdt/action/e;->H:Landroid/content/Context;

    iget-object v0, v1, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0xbc1

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :try_start_6
    invoke-static {}, Lcom/qq/gdt/action/j/h;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isMainProcess = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " getApplicationContext().getPackageName() = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " processName = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v9, [Ljava/lang/Object;

    invoke-static {v7, v13}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_7

    const/16 v0, 0xbc2

    goto :goto_0

    :cond_7
    const/16 v0, 0xbc3

    :goto_0
    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAppPackageName "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    const/16 v0, 0xbc4

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/qq/gdt/action/e;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/qq/gdt/action/j/j;->a()Lcom/qq/gdt/action/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/j/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/qq/gdt/action/e$2;

    invoke-direct {v2, p0, v4, v3}, Lcom/qq/gdt/action/e$2;-><init>(Lcom/qq/gdt/action/e;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/16 v0, 0xbc5

    invoke-static {v0, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const/4 v0, 0x1

    if-nez v8, :cond_8

    sput-boolean v0, Lcom/qq/gdt/action/e;->d:Z

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v2

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/qq/gdt/action/multioprocess/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Z)Lcom/qq/gdt/action/multioprocess/b;

    goto :goto_2

    :cond_8
    sput-boolean v0, Lcom/qq/gdt/action/e;->e:Z

    :goto_2
    sput-boolean v8, Lcom/qq/gdt/action/e;->k:Z

    const-string v2, "byAutoInitFinal"

    sget-boolean v3, Lcom/qq/gdt/action/e;->k:Z

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "ainit"

    sget-boolean v3, Lcom/qq/gdt/action/e;->e:Z

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "sinit"

    sget-boolean v3, Lcom/qq/gdt/action/e;->d:Z

    invoke-virtual {v12, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/16 v2, 0xbc6

    invoke-static {v2, v12}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_8
    const-string v2, "init e "

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return v9

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.qq.gdt.action.DeviceIdPref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "gdt_traceid"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.qq.gdt.action.DeviceIdPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "open_url"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/qq/gdt/action/j/t;->e(Landroid/content/Context;J)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {p1}, Lcom/qq/gdt/action/j/n;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/qq/gdt/action/e;->F:Lorg/json/JSONObject;

    return-void
.end method

.method public declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/qq/gdt/action/e;->H:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qq/gdt/action/e;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qq/gdt/action/e;->n:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/qq/gdt/action/e;->I:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->G()V

    iput-boolean v2, p0, Lcom/qq/gdt/action/e;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v2

    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "\u8bf7\u5148\u5b8c\u6210\u521d\u59cb\u5316\uff0c\u518d\u8c03\u7528start\u6216logAction\u65b9\u6cd5"

    invoke-static {v1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "gdt start error "

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.qq.gdt.action.DeviceIdPref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "open_url"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/e;->e(Landroid/content/Context;)V

    return-void
.end method

.method public d()Z
    .locals 1

    sget-boolean v0, Lcom/qq/gdt/action/e;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    sget-boolean v0, Lcom/qq/gdt/action/e;->e:Z

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->n:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "event_encrypt"

    return-object v0
.end method

.method public k()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->o:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public l()Ljavax/crypto/SecretKey;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->p:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/a;->a(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/e;->p:Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAesSecretKeyByEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->p:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public m()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qq/gdt/action/e;->A:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qq/gdt/action/e;->y:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/e;->c(Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ENTER_BACKGROUND"

    invoke-static {v2, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/qq/gdt/action/j/t;->c(Landroid/content/Context;J)V

    iget-object v1, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {v1}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/a;->a()V

    invoke-direct {p0}, Lcom/qq/gdt/action/e;->I()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "TICKET"

    invoke-static {v2, v1}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object v1, Lcom/qq/gdt/action/e;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/g/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/e;->s:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public p()J
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/e;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/qq/gdt/action/e;->K:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.qq.gdt.action.DeviceIdPref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/e;->K:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->K:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e;->u:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->w:Lcom/qq/gdt/action/ChannelType;

    invoke-virtual {v0}, Lcom/qq/gdt/action/ChannelType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/d;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/multioprocess/d;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->D:Ljava/lang/String;

    return-object v0
.end method

.method public y()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e;->F:Lorg/json/JSONObject;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/qq/gdt/action/e;->I:Z

    return v0
.end method
