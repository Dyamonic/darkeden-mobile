.class public Lcom/bytedance/bdtracker/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/d0$e;,
        Lcom/bytedance/bdtracker/d0$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/bdtracker/x3;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lcom/bytedance/bdtracker/n3;

.field public final B:Lcom/bytedance/bdtracker/j;

.field public final C:Lcom/bytedance/bdtracker/o1;

.field public D:J

.field public volatile E:Z

.field public final F:Lcom/bytedance/bdtracker/e0;

.field public final G:Lcom/bytedance/bdtracker/k3;

.field public a:J

.field public b:Lcom/bytedance/bdtracker/a0;

.field public c:Z

.field public final d:Lcom/bytedance/bdtracker/d;

.field public final e:Lcom/bytedance/bdtracker/v1;

.field public f:Lcom/bytedance/bdtracker/c0;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;"
        }
    .end annotation
.end field

.field public volatile h:Lcom/bytedance/bdtracker/d4;

.field public final i:Lcom/bytedance/bdtracker/x1;

.field public volatile j:Landroid/os/Handler;

.field public k:Lcom/bytedance/bdtracker/g0;

.field public l:Lcom/bytedance/bdtracker/h0;

.field public volatile m:Lcom/bytedance/bdtracker/z;

.field public final n:Lcom/bytedance/bdtracker/i0;

.field public o:Lcom/bytedance/applog/UriConfig;

.field public final p:Landroid/os/Handler;

.field public q:Lcom/bytedance/bdtracker/m2;

.field public volatile r:Z

.field public s:Lcom/bytedance/bdtracker/b0;

.field public volatile t:Lcom/bytedance/bdtracker/f0;

.field public final u:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bytedance/bdtracker/b0;",
            ">;"
        }
    .end annotation
.end field

.field public volatile v:Z

.field public volatile w:J

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/d0$d;",
            ">;"
        }
    .end annotation
.end field

.field public volatile y:Lcom/bytedance/bdtracker/f1;

.field public volatile z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/x1;Lcom/bytedance/bdtracker/o1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/bytedance/bdtracker/d0;->a:J

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d0;->E:Z

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    iput-object p3, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    iput-object p4, p0, Lcom/bytedance/bdtracker/d0;->C:Lcom/bytedance/bdtracker/o1;

    new-instance p4, Lcom/bytedance/bdtracker/i0;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/i0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    new-instance p4, Lcom/bytedance/bdtracker/e0;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/e0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/d0;->F:Lcom/bytedance/bdtracker/e0;

    new-instance p4, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_w:"

    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1
    iget-object v2, p1, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {v1, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/bdtracker/j;

    invoke-direct {p4, p0}, Lcom/bytedance/bdtracker/j;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/d0;->B:Lcom/bytedance/bdtracker/j;

    .line 3
    iget-object p2, p2, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isDeferredALinkEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1, p4}, Lcom/bytedance/bdtracker/d;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 5
    :cond_0
    iget-object p1, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/u4;->b:Lcom/bytedance/bdtracker/y3;

    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/y3;->a(Landroid/os/Handler;)V

    .line 7
    iget-object p1, p3, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    .line 8
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isMigrateEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p3, Lcom/bytedance/bdtracker/x1;->b:Landroid/content/Context;

    const/4 p2, 0x1

    .line 11
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/l2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/l2;

    move-result-object p4

    .line 12
    iget-boolean p4, p4, Lcom/bytedance/bdtracker/l2;->c:Z

    if-eqz p4, :cond_3

    .line 13
    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    if-nez p4, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p4, p4, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "google_aid"

    .line 15
    invoke-interface {p4, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->remove(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 16
    :goto_0
    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->g:Lcom/bytedance/applog/store/kv/IKVStore;

    iget-object v1, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/u4;->b()Ljava/lang/String;

    move-result-object v1

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "old_did"

    .line 17
    invoke-interface {p4, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "is_migrate"

    invoke-interface {p4, v1, p2}, Lcom/bytedance/applog/store/kv/IKVStore;->putBoolean(Ljava/lang/String;Z)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 18
    :goto_1
    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "openudid"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "clientudid"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "serial_number"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "sim_serial_number"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "udid"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "udid_list"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    iget-object p4, p3, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    const-string v1, "device_id"

    invoke-virtual {p4, v1}, Lcom/bytedance/bdtracker/u4;->a(Ljava/lang/String;)V

    const-string p4, "clearMigrationInfo"

    invoke-virtual {p3, p4}, Lcom/bytedance/bdtracker/x1;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_2
    :try_start_1
    invoke-static {p1}, Lcom/bytedance/bdtracker/l2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/l2;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p3

    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v1, "detect migrate is error, "

    :try_start_3
    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v0

    invoke-interface {p4, v1, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/l2;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    :try_start_5
    invoke-static {p1}, Lcom/bytedance/bdtracker/l2;->a(Landroid/content/Context;)Lcom/bytedance/bdtracker/l2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/l2;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    throw p2

    .line 19
    :catchall_2
    :cond_4
    :goto_5
    new-instance p1, Lcom/bytedance/bdtracker/n3;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/n3;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 20
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isClearDidAndIid()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 22
    iget-object p2, p2, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getClearKey()Ljava/lang/String;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/x1;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 24
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 26
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->getIpcDataChecker()Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/bytedance/bdtracker/r2;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/r2;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    :cond_7
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 28
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->i()V

    :cond_8
    new-instance p1, Lcom/bytedance/bdtracker/k3;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/k3;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->G:Lcom/bytedance/bdtracker/k3;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, Lcom/bytedance/bdtracker/d0$b;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/d0$b;-><init>(Lcom/bytedance/bdtracker/d0;)V

    invoke-static {v0}, Lcom/bytedance/bdtracker/o5;->a(Lcom/bytedance/bdtracker/g;)V

    return-void
.end method

.method public final a(Lcom/bytedance/bdtracker/b0;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 105
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p1, Lcom/bytedance/bdtracker/b0;->b:Z

    .line 107
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/b0;->a()J

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/x3;)V
    .locals 5

    iget-wide v0, p1, Lcom/bytedance/bdtracker/x3;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 71
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Data ts is 0"

    .line 72
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 74
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 75
    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, p1, v4}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of p1, p1, Lcom/bytedance/bdtracker/h4;

    rem-int/lit8 v0, v1, 0xa

    if-eqz v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lcom/bytedance/bdtracker/d0;->a:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/bytedance/bdtracker/g0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 76
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v2, "is_first_time_launch"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 77
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/d0;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 78
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 79
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string p1, "Register new uuid:{} failed"

    .line 80
    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, v1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 84
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "setUserUniqueId not change"

    .line 85
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/bytedance/bdtracker/v;->a()Lcom/bytedance/bdtracker/h4;

    move-result-object v1

    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 86
    iget-object v5, v5, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    .line 87
    invoke-static {v5}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x3;->clone()Lcom/bytedance/bdtracker/x3;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/h4;

    .line 88
    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 89
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 90
    iput-object v6, v1, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 91
    iget-wide v6, v1, Lcom/bytedance/bdtracker/x3;->c:J

    sub-long v6, v3, v6

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/bdtracker/x3;->a(J)V

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v8

    :goto_0
    iput-wide v6, v1, Lcom/bytedance/bdtracker/h4;->s:J

    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 92
    iget-object v6, v6, Lcom/bytedance/bdtracker/i0;->m:Ljava/lang/String;

    .line 93
    iput-object v6, v1, Lcom/bytedance/bdtracker/h4;->B:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 94
    iget-object v7, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 95
    invoke-virtual {v6, v7, v1}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-nez v1, :cond_3

    .line 96
    sget-object v1, Lcom/bytedance/bdtracker/v;->j:Lcom/bytedance/bdtracker/h4;

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x3;->clone()Lcom/bytedance/bdtracker/x3;

    move-result-object p2

    check-cast p2, Lcom/bytedance/bdtracker/h4;

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {p2, v3, v4}, Lcom/bytedance/bdtracker/x3;->a(J)V

    const-wide/16 v3, -0x1

    iput-wide v3, p2, Lcom/bytedance/bdtracker/h4;->s:J

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 98
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 99
    invoke-virtual {v1, v3, p2, v0, p1}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/f4;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 100
    iget-object v1, v1, Lcom/bytedance/bdtracker/i0;->m:Ljava/lang/String;

    .line 101
    iput-object v1, p1, Lcom/bytedance/bdtracker/f4;->v:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 102
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 103
    invoke-virtual {p1, v1, p2}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/bdtracker/x3;

    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/x3;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;)V"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/bytedance/bdtracker/w;->a:Ljava/util/concurrent/ExecutorService;

    .line 82
    new-instance v1, Lcom/bytedance/bdtracker/d0$c;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/d0$c;-><init>(Lcom/bytedance/bdtracker/d0;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-boolean v3, v3, Lcom/bytedance/bdtracker/d;->x:Z

    if-nez v3, :cond_1e

    if-eqz v0, :cond_1

    goto/16 :goto_10

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    array-length v4, p1

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v5, p1, v4

    invoke-static {v5}, Lcom/bytedance/bdtracker/x3;->a(Ljava/lang/String;)Lcom/bytedance/bdtracker/x3;

    move-result-object v5

    .line 17
    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 18
    iget-object v7, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 19
    invoke-virtual {v6, v7, v5}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 22
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->y:Lcom/bytedance/bdtracker/f1;

    .line 24
    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 25
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/f1;

    if-eqz p1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/bdtracker/x3;

    instance-of v6, v5, Lcom/bytedance/bdtracker/e4;

    if-eqz v6, :cond_6

    check-cast v5, Lcom/bytedance/bdtracker/e4;

    .line 27
    iget-object v6, v5, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    .line 28
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/e4;->e()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v4, v6, v5}, Lcom/bytedance/bdtracker/f1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    if-eqz v0, :cond_6

    invoke-virtual {v0, v6, v5}, Lcom/bytedance/bdtracker/f1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 29
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 30
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->s:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1, v3, p0}, Lcom/bytedance/bdtracker/p1;->a(Ljava/util/List;Lcom/bytedance/bdtracker/d0;)V

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1c

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 32
    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    move v4, v3

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/bdtracker/x3;

    .line 33
    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 34
    iget-object v7, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 35
    invoke-virtual {v6, v5, p1, v7}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/x3;Ljava/util/List;Lcom/bytedance/bdtracker/d;)V

    instance-of v6, v5, Lcom/bytedance/bdtracker/h4;

    if-eqz v6, :cond_a

    invoke-static {v5}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/x3;)Z

    move-result v4

    move v3, v1

    :cond_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v5}, Lcom/bytedance/bdtracker/d0;->b(Lcom/bytedance/bdtracker/x3;)V

    :cond_c
    :goto_5
    const-string v6, "event_process"

    invoke-static {v6, v5}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_d
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d0;->E:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 37
    iget-boolean v5, v0, Lcom/bytedance/bdtracker/x1;->a:Z

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_6

    :cond_e
    move v0, v2

    :goto_6
    if-eqz v0, :cond_12

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/bdtracker/d0;->D:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-ltz v0, :cond_12

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v1;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_f

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d0;->a(Ljava/util/List;)V

    goto :goto_9

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    rem-int/2addr v7, v6

    if-nez v7, :cond_10

    move v6, v2

    goto :goto_7

    :cond_10
    move v6, v1

    :goto_7
    add-int/2addr v5, v6

    move v6, v2

    :goto_8
    if-ge v6, v5, :cond_12

    mul-int/lit16 v7, v6, 0xc8

    add-int/lit16 v8, v7, 0xc8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-interface {v0, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/bytedance/bdtracker/d0;->a(Ljava/util/List;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 39
    :cond_11
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 40
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "can\'t not use realtime event"

    .line 41
    invoke-interface {v0, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_12
    :goto_9
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    .line 43
    iget-object v0, v0, Lcom/bytedance/bdtracker/d4;->c:Lcom/bytedance/bdtracker/c4;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/c4;->b(Ljava/util/List;)V

    if-eqz v3, :cond_14

    .line 44
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    if-eqz p1, :cond_14

    const/4 v0, 0x7

    if-eqz v4, :cond_13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_a

    :cond_13
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/v1;->d()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 45
    :cond_14
    :goto_a
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 46
    iget-boolean v0, p1, Lcom/bytedance/bdtracker/i0;->o:Z

    iput-boolean v2, p1, Lcom/bytedance/bdtracker/i0;->o:Z

    if-nez v0, :cond_17

    .line 47
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 48
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v0, "batch_event_size"

    const/4 v3, -0x1

    invoke-interface {p1, v0, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 49
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/v1;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->h:Lcom/bytedance/bdtracker/d4;

    .line 50
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 51
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 52
    iget-object v4, v0, Lcom/bytedance/bdtracker/d4;->a:Lcom/bytedance/bdtracker/b4;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v2

    const-string v3, "eventv3"

    const-string v6, "_app_id= ? "

    invoke-virtual {v0, v4, v3, v6, v5}, Lcom/bytedance/bdtracker/d4;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lt v0, p1, :cond_16

    goto :goto_c

    :cond_16
    :goto_b
    move v1, v2

    :goto_c
    if-eqz v1, :cond_18

    .line 53
    :cond_17
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    .line 54
    :cond_18
    iget-boolean p1, p0, Lcom/bytedance/bdtracker/d0;->c:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 55
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/i0;->i:Z

    if-eqz p1, :cond_1c

    .line 56
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 57
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/d0;->a(Z)Z

    goto :goto_f

    :cond_19
    new-instance p1, Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 60
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 61
    const-class v4, Lcom/bytedance/applog/collector/Collector;

    invoke-direct {p1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v5, v2

    move v6, v5

    :goto_d
    if-ge v5, v0, :cond_1a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/bdtracker/x3;

    invoke-virtual {v7}, Lcom/bytedance/bdtracker/x3;->g()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1a
    const v0, 0x4b000

    if-lt v6, v0, :cond_1b

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    if-eqz v0, :cond_1b

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->z:Lcom/bytedance/applog/InitConfig$IpcDataChecker;

    invoke-interface {v0, v4}, Lcom/bytedance/applog/InitConfig$IpcDataChecker;->checkIpcData([Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    .line 62
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 63
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "check ipc data"

    .line 64
    invoke-interface {v3, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    :goto_e
    if-eqz v1, :cond_1c

    const-string v0, "K_DATA"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 66
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1c
    :goto_f
    if-eqz p2, :cond_1d

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/bdtracker/d0;->w:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    iput-wide p1, p0, Lcom/bytedance/bdtracker/d0;->w:J

    .line 68
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    :cond_1d
    return-void

    :catchall_1
    move-exception p1

    .line 69
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_1e
    :goto_10
    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "ssid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 1
    :cond_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "Register to get ssid by temp header..."

    .line 3
    invoke-interface {v3, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v3, p1}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    invoke-virtual {v5, v3}, Lcom/bytedance/bdtracker/g0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/bdtracker/k0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const/4 v2, 0x0

    .line 5
    :cond_3
    invoke-static {v2}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Register to get ssid by header success."

    :try_start_1
    new-array v6, v0, [Ljava/lang/Object;

    .line 8
    invoke-interface {v3, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 11
    invoke-interface {v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    return v0
.end method

.method public a(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d0;->c:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d0;->c:Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/bdtracker/d0;->c:Z

    return p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    return-object v0
.end method

.method public b(Lcom/bytedance/bdtracker/x3;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/bytedance/bdtracker/e4;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/bytedance/bdtracker/h4;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->g()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    instance-of v0, p1, Lcom/bytedance/bdtracker/a4;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/bytedance/bdtracker/i4;

    if-eqz v0, :cond_6

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/x3;->h()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, p1, Lcom/bytedance/bdtracker/h4;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/h4;->k()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    instance-of v1, p1, Lcom/bytedance/bdtracker/a4;

    if-eqz v1, :cond_5

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "log_type"

    :try_start_1
    check-cast p1, Lcom/bytedance/bdtracker/a4;

    .line 3
    iget-object p1, p1, Lcom/bytedance/bdtracker/a4;->s:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :catchall_1
    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/f0;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/bdtracker/s3;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1, p1}, Lcom/bytedance/bdtracker/x1;->h(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1, p2}, Lcom/bytedance/bdtracker/x1;->i(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/bytedance/bdtracker/x1;->g(Ljava/lang/String;)Z

    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const-string v1, "$tr_web_ssid"

    invoke-virtual {p2, v1}, Lcom/bytedance/bdtracker/x1;->d(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 11
    iget-object p2, p2, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 12
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isClearABCacheOnUserChange()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 13
    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/bytedance/bdtracker/x1;->e(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/bdtracker/d0;->v:Z

    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    new-instance v1, Lcom/bytedance/bdtracker/d0$e;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/bdtracker/d0$e;-><init>(Lcom/bytedance/bdtracker/d0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n3;->a(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lcom/bytedance/bdtracker/d4;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->h:Lcom/bytedance/bdtracker/d4;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->h:Lcom/bytedance/bdtracker/d4;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/d4;

    .line 1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getDbName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/bdtracker/d4;-><init>(Lcom/bytedance/bdtracker/d0;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->h:Lcom/bytedance/bdtracker/d4;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->h:Lcom/bytedance/bdtracker/d4;

    return-object v0
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n3;->b(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/bytedance/bdtracker/x3;

    check-cast p2, Lcom/bytedance/bdtracker/x3;

    .line 1
    iget-wide v0, p1, Lcom/bytedance/bdtracker/x3;->c:J

    iget-wide p1, p2, Lcom/bytedance/bdtracker/x3;->c:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n3;->c(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Lcom/bytedance/applog/UriConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->o:Lcom/bytedance/applog/UriConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->o:Lcom/bytedance/applog/UriConfig;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->o:Lcom/bytedance/applog/UriConfig;

    return-object v0
.end method

.method public e(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n3;->d(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n3;->e(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getAbUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget v1, v0, Lcom/bytedance/bdtracker/v1;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->g:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "version_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->m()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "channel"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/v1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_f

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    if-eqz v1, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    check-cast v0, Lcom/bytedance/applog/IPullAbTestConfigCallback;

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "ABTest is not enabled"

    .line 3
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/bdtracker/z;

    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/z;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object v1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    :try_start_0
    invoke-virtual {v1, p1}, Lcom/bytedance/bdtracker/z;->a(I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v0, :cond_29

    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onRemoteConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/bytedance/bdtracker/j3; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_10

    :catch_0
    if-eqz v0, :cond_29

    invoke-interface {v0}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onTimeoutError()V

    goto/16 :goto_10

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    goto/16 :goto_10

    .line 5
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "oaid"

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/x1;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bd_did"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "install_id"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    sget-object p1, Lcom/bytedance/bdtracker/f5;->c:Lcom/bytedance/bdtracker/q4;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/bytedance/bdtracker/q4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "os"

    const-string v1, "Harmony"

    .line 8
    :goto_0
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string p1, "os"

    const-string v1, "Android"

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/x1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/g0;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Report oaid success: {}"

    :try_start_2
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 11
    invoke-interface {v0, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_10

    :catchall_0
    move-exception p1

    .line 12
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v3, "Report oaid failed"

    .line 14
    invoke-interface {v0, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 15
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/bdtracker/x3;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->b(Lcom/bytedance/bdtracker/x3;)V

    goto/16 :goto_10

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    .line 17
    iput-boolean v2, v4, Lcom/bytedance/bdtracker/b0;->d:Z

    .line 18
    iget-object v4, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    :cond_4
    if-eqz v0, :cond_29

    new-instance v0, Lcom/bytedance/bdtracker/f0;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/f0;-><init>(Lcom/bytedance/bdtracker/d0;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->t:Lcom/bytedance/bdtracker/f0;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_10

    .line 19
    :pswitch_5
    invoke-virtual {p0, v3, v2}, Lcom/bytedance/bdtracker/d0;->a([Ljava/lang/String;Z)V

    goto/16 :goto_10

    :pswitch_6
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    if-nez p1, :cond_5

    new-instance p1, Lcom/bytedance/bdtracker/z;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/z;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    :cond_5
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    goto/16 :goto_10

    :cond_7
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    .line 20
    iput-boolean v2, p1, Lcom/bytedance/bdtracker/b0;->d:Z

    .line 21
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v3, p0, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    :cond_8
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 22
    invoke-virtual {p1, v3}, Lcom/bytedance/bdtracker/x1;->e(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/x1;->f(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_10

    .line 23
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    invoke-virtual {p0, v3}, Lcom/bytedance/bdtracker/d0;->a(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_8
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->b:Lcom/bytedance/bdtracker/a0;

    if-nez p1, :cond_a

    new-instance p1, Lcom/bytedance/bdtracker/a0;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/a0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->b:Lcom/bytedance/bdtracker/a0;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_a
    iput-boolean v4, p1, Lcom/bytedance/bdtracker/b0;->d:Z

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->b:Lcom/bytedance/bdtracker/a0;

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    goto/16 :goto_10

    :pswitch_9
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->C:Lcom/bytedance/bdtracker/o1;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    .line 26
    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 27
    iget-object v6, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 28
    invoke-virtual {v0, v1, v5, v6}, Lcom/bytedance/bdtracker/o1;->a(Ljava/util/ArrayList;Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/i0;)I

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->C:Lcom/bytedance/bdtracker/o1;

    .line 29
    iget-object v0, p1, Lcom/bytedance/bdtracker/o1;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_b

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/bytedance/bdtracker/o1;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p1, Lcom/bytedance/bdtracker/o1;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 30
    :cond_b
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/bdtracker/d0;->a([Ljava/lang/String;Z)V

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_a
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->s:Lcom/bytedance/bdtracker/b0;

    .line 31
    iget-boolean v0, p1, Lcom/bytedance/bdtracker/b0;->d:Z

    if-nez v0, :cond_29

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/b0;->a()J

    move-result-wide v0

    .line 33
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/b0;->d:Z

    if-nez p1, :cond_29

    .line 34
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v0, v3

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    .line 35
    iget-object v0, v0, Lcom/bytedance/bdtracker/d4;->c:Lcom/bytedance/bdtracker/c4;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/c4;->b(Ljava/util/List;)V

    goto/16 :goto_10

    .line 36
    :pswitch_c
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    .line 37
    sget-object v1, Lcom/bytedance/bdtracker/i0;->q:Lcom/bytedance/bdtracker/i0$b;

    if-nez v1, :cond_c

    new-instance v1, Lcom/bytedance/bdtracker/i0$b;

    invoke-direct {v1, v3}, Lcom/bytedance/bdtracker/i0$b;-><init>(Lcom/bytedance/bdtracker/i0$a;)V

    sput-object v1, Lcom/bytedance/bdtracker/i0;->q:Lcom/bytedance/bdtracker/i0$b;

    :cond_c
    sget-object v1, Lcom/bytedance/bdtracker/i0;->q:Lcom/bytedance/bdtracker/i0$b;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/bdtracker/x3;->a(J)V

    sget-object v1, Lcom/bytedance/bdtracker/i0;->q:Lcom/bytedance/bdtracker/i0$b;

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p0, v3, v4}, Lcom/bytedance/bdtracker/d0;->a([Ljava/lang/String;Z)V

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :pswitch_d
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 40
    iget-boolean p1, p1, Lcom/bytedance/bdtracker/d;->x:Z

    const-wide/16 v3, 0x1388

    if-nez p1, :cond_11

    .line 41
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 42
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isSilenceInBackground()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/i0;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    :cond_d
    const-wide v5, 0x7fffffffffffffffL

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/b0;

    .line 44
    iget-boolean v7, v0, Lcom/bytedance/bdtracker/b0;->d:Z

    if-nez v7, :cond_e

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/b0;->a()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-gez v0, :cond_e

    move-wide v5, v7

    goto :goto_3

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-lez p1, :cond_10

    goto :goto_4

    :cond_10
    move-wide v3, v5

    :cond_11
    :goto_4
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_29

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/d0$d;

    if-eqz v1, :cond_12

    check-cast v1, Lcom/bytedance/bdtracker/d0$e;

    .line 46
    iget-object v3, v1, Lcom/bytedance/bdtracker/d0$e;->b:Lcom/bytedance/bdtracker/d0;

    iget-object v1, v1, Lcom/bytedance/bdtracker/d0$d;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v1}, Lcom/bytedance/bdtracker/d0;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 48
    :cond_13
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p1

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/bytedance/bdtracker/d0;->a([Ljava/lang/String;Z)V

    goto/16 :goto_10

    :pswitch_f
    new-instance p1, Lcom/bytedance/bdtracker/g0;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/g0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 49
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    if-eqz p1, :cond_14

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result p1

    if-nez p1, :cond_14

    move p1, v2

    goto :goto_6

    :cond_14
    move p1, v4

    :goto_6
    if-nez p1, :cond_15

    new-instance p1, Lcom/bytedance/bdtracker/h0;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/h0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/bytedance/bdtracker/d0;->E:Z

    :cond_15
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getSettingUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Lcom/bytedance/bdtracker/c0;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/c0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d0;->f:Lcom/bytedance/bdtracker/c0;

    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    invoke-virtual {p1}, Lcom/bytedance/applog/UriConfig;->getProfileUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->A:Lcom/bytedance/bdtracker/n3;

    .line 51
    iget-object p1, p1, Lcom/bytedance/bdtracker/n3;->b:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    :cond_17
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    const-string v0, "sp_filter_name"

    .line 54
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d0;->h()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    if-eqz v0, :cond_18

    .line 55
    iput-boolean v2, v0, Lcom/bytedance/bdtracker/b0;->b:Z

    .line 56
    :cond_18
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->f:Lcom/bytedance/bdtracker/c0;

    if-eqz v0, :cond_19

    .line 57
    iput-boolean v2, v0, Lcom/bytedance/bdtracker/b0;->b:Z

    .line 58
    :cond_19
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 59
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 60
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 61
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 63
    invoke-static {v0, p1, v3}, Lcom/bytedance/bdtracker/f1;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/bdtracker/f1;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/bytedance/bdtracker/d0;->y:Lcom/bytedance/bdtracker/f1;

    goto/16 :goto_d

    .line 65
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 66
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 67
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isEventFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 68
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 69
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 70
    :try_start_8
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/o4;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-interface {p1}, Lcom/bytedance/applog/store/kv/IKVStore;->getAll()Ljava/util/Map;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    :catchall_4
    move-object v6, v3

    :goto_7
    if-eqz v6, :cond_23

    :try_start_a
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_1b

    goto/16 :goto_c

    :cond_1b
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :cond_1c
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    if-nez v8, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "is_block"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v7, "is_block"

    invoke-interface {p1, v7, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_8

    :cond_1e
    const-string v10, "events"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v10, :cond_1f

    :try_start_b
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    :catchall_5
    move-object v8, v3

    :goto_9
    if-eqz v8, :cond_1c

    :try_start_c
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_1c

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_1f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_a

    :catchall_6
    move-object v8, v3

    :goto_a
    if-eqz v8, :cond_20

    :try_start_e
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v11

    if-lez v11, :cond_20

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_20
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_1c

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_21
    if-lez v7, :cond_22

    new-instance p1, Lcom/bytedance/bdtracker/h1;

    invoke-direct {p1, v0, v5}, Lcom/bytedance/bdtracker/h1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_b

    :cond_22
    new-instance p1, Lcom/bytedance/bdtracker/g1;

    invoke-direct {p1, v0, v5}, Lcom/bytedance/bdtracker/g1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_b
    move-object v3, p1

    .line 71
    :catchall_7
    :cond_23
    :goto_c
    iput-object v3, p0, Lcom/bytedance/bdtracker/d0;->y:Lcom/bytedance/bdtracker/f1;

    .line 72
    :cond_24
    :goto_d
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    if-eqz p1, :cond_29

    .line 74
    check-cast p1, Lcom/bytedance/bdtracker/r2;

    .line 75
    iget-object v0, p1, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 76
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    const-string v1, "mEngine.config"

    .line 77
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->j()Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_10

    :cond_25
    iget-object v0, p1, Lcom/bytedance/bdtracker/r2;->b:Lcom/bytedance/bdtracker/n2;

    new-instance v1, Lcom/bytedance/bdtracker/q2;

    invoke-direct {v1, p1}, Lcom/bytedance/bdtracker/q2;-><init>(Lcom/bytedance/bdtracker/r2;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/n2;->a(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_10

    .line 78
    :pswitch_10
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 79
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog is starting..."

    .line 80
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 81
    iget-object v0, p1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 82
    iget-object v1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackEnabled()Z

    move-result v1

    const-string v3, "bav_log_collect"

    .line 83
    invoke-interface {v0, v3, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    iput v0, p1, Lcom/bytedance/bdtracker/v1;->r:I

    .line 85
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/x1;->q()Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result p1

    if-eqz p1, :cond_27

    new-instance p1, Landroid/os/HandlerThread;

    const-string v3, "bd_tracker_n:"

    invoke-static {v3}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    iget-object v5, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 87
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_26

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    :cond_26
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 90
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 91
    sput-boolean v2, Lcom/bytedance/bdtracker/c5;->a:Z

    .line 92
    sget-object v0, Lcom/bytedance/bdtracker/w;->a:Ljava/util/concurrent/ExecutorService;

    .line 93
    new-instance v1, Lcom/bytedance/bdtracker/d5;

    invoke-direct {v1, p1}, Lcom/bytedance/bdtracker/d5;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 94
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 95
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog started on main process."

    .line 96
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 97
    :cond_27
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 98
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "AppLog started on secondary process."

    .line 99
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result p1

    if-nez p1, :cond_29

    new-instance p1, Lcom/bytedance/bdtracker/d0$a;

    invoke-direct {p1, p0}, Lcom/bytedance/bdtracker/d0$a;-><init>(Lcom/bytedance/bdtracker/d0;)V

    const-string v0, "start_end"

    invoke-static {v0, p1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    goto :goto_10

    .line 100
    :cond_28
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 101
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "AppLog is not ready, will try start again after 1 second..."

    .line 102
    invoke-interface {p1, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    .line 103
    :goto_f
    iget-object p1, p0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 104
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Unknown handler message type"

    .line 105
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    :goto_10
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d0;->r:Z

    .line 1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 2
    iget-object v2, v1, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/v1;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/bytedance/bdtracker/x1;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/bdtracker/o5;->b(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
