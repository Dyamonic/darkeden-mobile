.class public final Lcom/bytedance/bdtracker/q5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/applog/IOaidObserver;",
            ">;"
        }
    .end annotation
.end field

.field public static k:Lcom/bytedance/bdtracker/g;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Lcom/bytedance/dr/OaidApi;

.field public final c:Z

.field public final d:Lcom/bytedance/bdtracker/s5;

.field public final e:Landroid/content/Context;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/bytedance/bdtracker/q5;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/q5;->h:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/bdtracker/q5;->i:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/q5;->j:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/q5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/q5;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/q5;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/dr/OaidFactory;->createOaidImpl(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/q5;->b:Lcom/bytedance/dr/OaidApi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/dr/OaidApi;->support(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/q5;->c:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/bdtracker/q5;->c:Z

    :goto_0
    new-instance v0, Lcom/bytedance/bdtracker/s5;

    invoke-direct {v0, p1}, Lcom/bytedance/bdtracker/s5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/q5;->d:Lcom/bytedance/bdtracker/s5;

    return-void
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Lcom/bytedance/applog/IOaidObserver;

    invoke-interface {v2, p0}, Lcom/bytedance/applog/IOaidObserver;->onOaidLoaded(Lcom/bytedance/applog/IOaidObserver$Oaid;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 3

    sget-object v0, Lcom/bytedance/bdtracker/q5;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/bytedance/bdtracker/q5;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    invoke-direct {v1, v0}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Lcom/bytedance/bdtracker/q5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/bytedance/bdtracker/q5;->m:Ljava/util/Map;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/bytedance/bdtracker/q5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/bytedance/bdtracker/d0$b;

    invoke-virtual {v0, p0}, Lcom/bytedance/bdtracker/d0$b;->a(Ljava/util/Map;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic a(Lcom/bytedance/bdtracker/q5;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/q5;->b()V

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    const-string v1, "Oaid#JSON put failed"

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/q5;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()[Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/bytedance/bdtracker/q5;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "Oaid#init"

    invoke-interface {v0, v3, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/q5;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/bdtracker/q5$a;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/q5$a;-><init>(Lcom/bytedance/bdtracker/q5;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bytedance/bdtracker/q5;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "TrackerDr"

    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/bytedance/bdtracker/p5;

    invoke-direct {v3, v0, v1}, Lcom/bytedance/bdtracker/p5;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 12

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "Oaid#initOaid"

    invoke-interface {v0, v3, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/q5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Oaid#initOaid exec"

    :try_start_1
    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/q5;->d:Lcom/bytedance/bdtracker/s5;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/s5;->a()Lcom/bytedance/bdtracker/r5;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Oaid#initOaid fetch={}"

    :try_start_2
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/bytedance/bdtracker/r5;->a:Ljava/lang/String;

    sput-object v2, Lcom/bytedance/bdtracker/q5;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r5;->a()Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/bytedance/bdtracker/q5;->m:Ljava/util/Map;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/bytedance/bdtracker/q5;->e:Landroid/content/Context;

    .line 1
    iget-object v6, p0, Lcom/bytedance/bdtracker/q5;->b:Lcom/bytedance/dr/OaidApi;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v6, v2}, Lcom/bytedance/dr/OaidApi;->getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    iget-boolean v8, v2, Lcom/bytedance/dr/OaidApi$a;->b:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    instance-of v9, v2, Lcom/bytedance/dr/impl/e$b;

    if-eqz v9, :cond_2

    check-cast v2, Lcom/bytedance/dr/impl/e$b;

    iget-wide v9, v2, Lcom/bytedance/dr/impl/e$b;->c:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/bdtracker/q5;->g:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v6, v7

    move-object v8, v6

    :cond_2
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_6

    const/4 v4, -0x1

    if-eqz v0, :cond_3

    iget-object v7, v0, Lcom/bytedance/bdtracker/r5;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/r5;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v6, v7

    if-gtz v4, :cond_5

    move v4, v3

    :cond_5
    new-instance v0, Lcom/bytedance/bdtracker/r5;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/Boolean;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, p0, Lcom/bytedance/bdtracker/q5;->g:Ljava/lang/Long;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/bdtracker/r5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/bytedance/bdtracker/q5;->d:Lcom/bytedance/bdtracker/s5;

    invoke-virtual {v2, v0}, Lcom/bytedance/bdtracker/s5;->a(Lcom/bytedance/bdtracker/r5;)V

    move-object v7, v0

    :cond_6
    if-eqz v7, :cond_7

    iget-object v0, v7, Lcom/bytedance/bdtracker/r5;->a:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/bdtracker/q5;->l:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/bytedance/bdtracker/r5;->a()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/q5;->m:Ljava/util/Map;

    :cond_7
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "Oaid#initOaid oaidModel={}"

    :try_start_3
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v7, v4, v1

    invoke-interface {v0, v3, v2, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/q5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v1, Lcom/bytedance/bdtracker/q5;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/bdtracker/q5;->c()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/q5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    sget-object v0, Lcom/bytedance/bdtracker/q5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/bytedance/bdtracker/q5;->m:Ljava/util/Map;

    check-cast v0, Lcom/bytedance/bdtracker/d0$b;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/d0$b;->a(Ljava/util/Map;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/q5;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v1, Lcom/bytedance/applog/IOaidObserver$Oaid;

    sget-object v2, Lcom/bytedance/bdtracker/q5;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/bytedance/applog/IOaidObserver$Oaid;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/bdtracker/q5;->c()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/bdtracker/q5;->a(Lcom/bytedance/applog/IOaidObserver$Oaid;[Ljava/lang/Object;)V

    sget-object v1, Lcom/bytedance/bdtracker/q5;->k:Lcom/bytedance/bdtracker/g;

    if-eqz v1, :cond_9

    sget-object v2, Lcom/bytedance/bdtracker/q5;->m:Ljava/util/Map;

    check-cast v1, Lcom/bytedance/bdtracker/d0$b;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d0$b;->a(Ljava/util/Map;)V

    :cond_9
    throw v0
.end method
