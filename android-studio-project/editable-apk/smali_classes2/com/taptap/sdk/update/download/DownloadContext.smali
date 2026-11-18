.class public Lcom/taptap/sdk/update/download/DownloadContext;
.super Ljava/lang/Object;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;,
        Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;,
        Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;,
        Lcom/taptap/sdk/update/download/DownloadContext$Builder;
    }
.end annotation


# static fields
.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "DownloadContext"


# instance fields
.field final contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

.field private final set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

.field volatile started:Z

.field private final tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Serial"

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/taptap/sdk/update/download/DownloadContext;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>([Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadContextListener;Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->started:Z

    .line 66
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    .line 67
    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    .line 68
    iput-object p3, p0, Lcom/taptap/sdk/update/download/DownloadContext;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    return-void
.end method

.method constructor <init>([Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadContextListener;Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;Landroid/os/Handler;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/update/download/DownloadContext;-><init>([Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadContextListener;Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;)V

    .line 60
    iput-object p4, p0, Lcom/taptap/sdk/update/download/DownloadContext;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/update/download/DownloadContext;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/DownloadContext;->callbackQueueEndOnSerialLoop(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/taptap/sdk/update/download/DownloadContext;)[Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    return-object p0
.end method

.method private callbackQueueEndOnSerialLoop(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->uiHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->uiHandler:Landroid/os/Handler;

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->uiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/taptap/sdk/update/download/DownloadContext$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/DownloadContext$2;-><init>(Lcom/taptap/sdk/update/download/DownloadContext;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {v0, p0}, Lcom/taptap/sdk/update/download/DownloadContextListener;->queueEnd(Lcom/taptap/sdk/update/download/DownloadContext;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public alter()Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;
    .locals 1

    .line 131
    new-instance v0, Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/DownloadContext$AlterContext;-><init>(Lcom/taptap/sdk/update/download/DownloadContext;)V

    return-object v0
.end method

.method executeOnSerialExecutor(Ljava/lang/Runnable;)V
    .locals 1

    .line 155
    sget-object v0, Lcom/taptap/sdk/update/download/DownloadContext;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTasks()[Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->started:Z

    return v0
.end method

.method public start(Lcom/taptap/sdk/update/download/DownloadListener;Z)V
    .locals 6

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadContext"

    invoke-static {v3, v2}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lcom/taptap/sdk/update/download/DownloadContext;->started:Z

    .line 99
    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v2}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;-><init>()V

    .line 101
    invoke-virtual {v2, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    new-instance v2, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;

    iget-object v4, p0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    iget-object v5, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    array-length v5, v5

    invoke-direct {v2, p0, v4, v5}, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;-><init>(Lcom/taptap/sdk/update/download/DownloadContext;Lcom/taptap/sdk/update/download/DownloadContextListener;I)V

    .line 102
    invoke-virtual {p1, v2}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->build()Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    iget-object v4, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 111
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 112
    new-instance v4, Lcom/taptap/sdk/update/download/DownloadContext$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/taptap/sdk/update/download/DownloadContext$1;-><init>(Lcom/taptap/sdk/update/download/DownloadContext;Ljava/util/List;Lcom/taptap/sdk/update/download/DownloadListener;)V

    invoke-virtual {p0, v4}, Lcom/taptap/sdk/update/download/DownloadContext;->executeOnSerialExecutor(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/DownloadTask;->enqueue([Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V

    .line 126
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start finish "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {v3, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startOnParallel(Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/taptap/sdk/update/download/DownloadContext;->start(Lcom/taptap/sdk/update/download/DownloadListener;Z)V

    return-void
.end method

.method public startOnSerial(Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/taptap/sdk/update/download/DownloadContext;->start(Lcom/taptap/sdk/update/download/DownloadListener;Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->started:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancel([Lcom/taptap/sdk/update/download/core/IdentifiedTask;)V

    :cond_0
    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadContext;->started:Z

    return-void
.end method

.method public toBuilder()Lcom/taptap/sdk/update/download/DownloadContext$Builder;
    .locals 4

    .line 159
    new-instance v0, Lcom/taptap/sdk/update/download/DownloadContext$Builder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->set:Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/DownloadContext;->tasks:[Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;-><init>(Lcom/taptap/sdk/update/download/DownloadContext$QueueSet;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    .line 160
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/DownloadContext$Builder;->setListener(Lcom/taptap/sdk/update/download/DownloadContextListener;)Lcom/taptap/sdk/update/download/DownloadContext$Builder;

    move-result-object v0

    return-object v0
.end method
