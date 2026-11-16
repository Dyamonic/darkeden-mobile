.class public Lcom/taptap/sdk/themis/lite/ThemisLite;
.super Ljava/lang/Object;
.source "ThemisLite.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field public static m_ctx:Landroid/content/Context; = null

.field public static version:Ljava/lang/String; = "1.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taptap/sdk/themis/lite/ThemisLite;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CallbackRunner(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;J)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    .line 22
    new-instance p1, Lcom/taptap/sdk/themis/lite/ThemisLite$1;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/themis/lite/ThemisLite$1;-><init>(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;)V

    .line 37
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static InitThemis(Ljava/lang/String;Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "c3RhcnQgaW5pdCBUaGVtaXNMaXRlIGJ5IEphdmEsIFZlcnNpb246IDEuMC4x"

    .line 55
    invoke-static {v0}, Lcom/taptap/sdk/themis/lite/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/themis/lite/LogUtil;->info(Ljava/lang/String;)V

    const-string v0, "themis"

    .line 57
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p6, p7, p2, p3}, Lcom/taptap/sdk/themis/lite/ThemisLite;->initThemisEx(Ljava/lang/String;ZZJ)V

    .line 59
    invoke-static {p4}, Lcom/taptap/sdk/themis/lite/ThemisLite;->hLn7jRbD(Ljava/lang/String;)V

    .line 60
    invoke-static {p5}, Lcom/taptap/sdk/themis/lite/ThemisLite;->vQe8bYsT(Ljava/lang/String;)V

    .line 61
    invoke-static {p1, p2, p3}, Lcom/taptap/sdk/themis/lite/ThemisLite;->CallbackRunner(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static InitThemisByAppID(Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;JLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "c3RhcnQgaW5pdCBUaGVtaXNMaXRlIGJ5IEphdmEsIFZlcnNpb246IDEuMC4x"

    .line 74
    invoke-static {v0}, Lcom/taptap/sdk/themis/lite/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/themis/lite/LogUtil;->info(Ljava/lang/String;)V

    const-string v0, "themis"

    .line 76
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p7

    move v3, p8

    move-wide v4, p3

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/themis/lite/ThemisLite;->initThemisByAppIDEx(Ljava/lang/String;Ljava/lang/String;ZZJ)V

    .line 78
    invoke-static {p5}, Lcom/taptap/sdk/themis/lite/ThemisLite;->hLn7jRbD(Ljava/lang/String;)V

    .line 79
    invoke-static {p6}, Lcom/taptap/sdk/themis/lite/ThemisLite;->vQe8bYsT(Ljava/lang/String;)V

    .line 80
    invoke-static {p2, p3, p4}, Lcom/taptap/sdk/themis/lite/ThemisLite;->CallbackRunner(Lcom/taptap/sdk/themis/lite/ThemisLiteCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static Register(Landroid/content/Context;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/taptap/sdk/themis/lite/ThemisLite;->m_ctx:Landroid/content/Context;

    return-void
.end method

.method public static WakeUpCallback()V
    .locals 2

    .line 43
    sget-object v0, Lcom/taptap/sdk/themis/lite/ThemisLite;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object v0, Lcom/taptap/sdk/themis/lite/ThemisLite;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {}, Lcom/taptap/sdk/themis/lite/ThemisLite;->xJ3kLm9Q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {}, Lcom/taptap/sdk/themis/lite/ThemisLite;->zXq3tVwP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native hLn7jRbD(Ljava/lang/String;)V
.end method

.method private static native initThemisByAppIDEx(Ljava/lang/String;Ljava/lang/String;ZZJ)V
.end method

.method private static native initThemisEx(Ljava/lang/String;ZZJ)V
.end method

.method private static native vQe8bYsT(Ljava/lang/String;)V
.end method

.method private static native xJ3kLm9Q()Ljava/lang/String;
.end method

.method private static native zXq3tVwP()Ljava/lang/String;
.end method
