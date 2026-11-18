.class public Lcom/taptap/sdk/update/download/core/download/DownloadCall;
.super Lcom/taptap/sdk/update/download/core/NamedRunnable;
.source "DownloadCall.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/update/download/core/NamedRunnable;",
        "Ljava/lang/Comparable<",
        "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final MAX_COUNT_RETRY_FOR_PRECONDITION_FAILED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DownloadCall"


# instance fields
.field public final asyncExecuted:Z

.field final blockChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadChain;",
            ">;"
        }
    .end annotation
.end field

.field volatile cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

.field volatile canceled:Z

.field volatile currentThread:Ljava/lang/Thread;

.field volatile finishing:Z

.field private final store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

.field public final task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 50
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Block"

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/update/download/DownloadTask;ZLcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;-><init>(Lcom/taptap/sdk/update/download/DownloadTask;ZLjava/util/ArrayList;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadTask;ZLjava/util/ArrayList;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadChain;",
            ">;",
            "Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;",
            ")V"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/NamedRunnable;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 79
    iput-boolean p2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->asyncExecuted:Z

    .line 80
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    .line 81
    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    return-void
.end method

.method public static create(Lcom/taptap/sdk/update/download/DownloadTask;ZLcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/download/DownloadCall;
    .locals 1

    .line 86
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;-><init>(Lcom/taptap/sdk/update/download/DownloadTask;ZLcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V

    return-object v0
.end method

.method private inspectTaskEnd(Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2

    .line 274
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/EndCause;->CANCELED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-eq p2, v0, :cond_2

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->finishing:Z

    .line 281
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    .line 284
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-ne p2, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->markFileClear(I)Z

    .line 286
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->processFileStrategy()Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object p1

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->completeProcessStream(Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 290
    :cond_1
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {p1, v0, p2, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    return-void

    :catchall_0
    move-exception p1

    .line 281
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "can\'t recognize cancelled on here"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private inspectTaskStart()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->onTaskStart(I)V

    .line 268
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V

    return-void
.end method


# virtual methods
.method assembleBlockAndCallbackFromBeginning(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v1

    .line 388
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->isAcceptRange()Z

    move-result p2

    .line 387
    invoke-static {v0, p1, v1, v2, p2}, Lcom/taptap/sdk/update/download/core/Util;->assembleBlock(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;JZ)V

    .line 389
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p2

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 390
    invoke-interface {p2, v0, p1, p3}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    return-void
.end method

.method public cancel()Z
    .locals 9

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->finishing:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 98
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->flyingCanceled(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V

    .line 100
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->setUserCanceled()V

    .line 109
    :cond_2
    iget-object v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 110
    array-length v6, v5

    if-nez v6, :cond_3

    goto :goto_1

    .line 118
    :cond_3
    array-length v6, v5

    :goto_0
    if-ge v1, v6, :cond_6

    aget-object v7, v5, v1

    .line 119
    instance-of v8, v7, Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    if-eqz v8, :cond_4

    .line 120
    check-cast v7, Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cancel()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    if-eqz v1, :cond_6

    const-string v1, "DownloadCall"

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interrupt thread with cancel operation because of chains are not running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 114
    invoke-virtual {v6}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {v1, v5}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    if-eqz v4, :cond_7

    .line 125
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->cancelAsync()V

    :cond_7
    const-string v1, "DownloadCall"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " consume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v1, v2}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public compareTo(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)I
    .locals 1

    .line 407
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->getPriority()I

    move-result p1

    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->getPriority()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->compareTo(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)I

    move-result p1

    return p1
.end method

.method createCache(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/DownloadCache;
    .locals 3

    .line 295
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->processFileStrategy()Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    .line 296
    invoke-virtual {v0, v1, p1, v2}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->createProcessStream(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object p1

    .line 297
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;-><init>(Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;)V

    return-object v0
.end method

.method createLocalCheck(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;
    .locals 2

    .line 370
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;-><init>(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)V

    return-object v0
.end method

.method createRemoteCheck(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;
    .locals 2

    .line 376
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-direct {v0, v1, p1}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;-><init>(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-object v0
.end method

.method public equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/DownloadTask;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public execute()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    .line 144
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->processFileStrategy()Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    move-result-object v1

    .line 148
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->inspectTaskStart()V

    const/4 v2, 0x0

    move v3, v2

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-gtz v4, :cond_1

    .line 152
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 153
    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/DownloadTask;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;-><init>(Ljava/io/IOException;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    goto/16 :goto_2

    .line 157
    :cond_1
    iget-boolean v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 162
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v6}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v6

    invoke-interface {v4, v6}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 164
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v4, v6}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v4

    .line 168
    :cond_3
    invoke-virtual {p0, v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->setInfoToTask(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    iget-boolean v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 176
    :cond_4
    invoke-virtual {p0, v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->createCache(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v6

    .line 177
    iput-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    .line 180
    invoke-virtual {p0, v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->createRemoteCheck(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;

    move-result-object v7

    .line 182
    :try_start_1
    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->check()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    iget-object v8, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/DownloadTask;->getRedirectLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->setRedirectLocation(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->getFileLock()Lcom/taptap/sdk/update/download/core/file/FileLock;

    move-result-object v8

    iget-object v9, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v9}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/taptap/sdk/update/download/core/file/FileLock;->waitForRelease(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v8

    iget-object v9, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 194
    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v10

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->inspectAnotherSameInfo(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)Z

    .line 197
    :try_start_2
    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->isResumable()Z

    move-result v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v9, " "

    const-string v10, "DownloadCall"

    if-eqz v8, :cond_6

    .line 200
    :try_start_3
    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->getInstanceLength()J

    move-result-wide v11

    .line 199
    invoke-virtual {p0, v4, v11, v12}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->createLocalCheck(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;

    move-result-object v8

    .line 201
    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->check()V

    .line 202
    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->isDirty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 203
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "breakpoint invalid: download from beginning because of local check is dirty "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 204
    invoke-virtual {v12}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-static {v10, v9}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v9, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1, v9}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->discardProcess(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 208
    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->getCauseOrThrow()Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    move-result-object v8

    .line 207
    invoke-virtual {p0, v4, v7, v8}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->assembleBlockAndCallbackFromBeginning(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    goto :goto_0

    .line 210
    :cond_5
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v7

    iget-object v8, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 211
    invoke-interface {v7, v8, v4}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    goto :goto_0

    .line 214
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "breakpoint invalid: download from beginning because of remote check not resumable "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 215
    invoke-virtual {v11}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 214
    invoke-static {v10, v8}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v8, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1, v8}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->discardProcess(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 219
    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;->getCauseOrThrow()Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    move-result-object v8

    .line 218
    invoke-virtual {p0, v4, v7, v8}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->assembleBlockAndCallbackFromBeginning(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/BreakpointRemoteCheck;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    :goto_0
    invoke-virtual {p0, v6, v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->start(Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    .line 229
    iget-boolean v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-eqz v4, :cond_7

    goto :goto_2

    .line 232
    :cond_7
    invoke-virtual {v6}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isPreconditionFailed()Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v4, v3, 0x1

    if-ge v3, v5, :cond_8

    .line 234
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    iget-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v6}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v6

    invoke-interface {v3, v6}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->remove(I)V

    move v3, v4

    move v4, v5

    goto :goto_1

    :cond_8
    move v3, v4

    :cond_9
    move v4, v2

    :goto_1
    if-nez v4, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v6, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->setUnknownError(Ljava/io/IOException;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 184
    invoke-virtual {v6, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 170
    new-instance v1, Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;

    invoke-direct {v1, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache$PreError;-><init>(Ljava/io/IOException;)V

    iput-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    .line 242
    :goto_2
    iput-boolean v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->finishing:Z

    .line 243
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    .line 246
    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-nez v1, :cond_f

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isServerCanceled()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isUnknownError()Z

    move-result v2

    if-nez v2, :cond_e

    .line 251
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isPreconditionFailed()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    .line 255
    :cond_b
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isFileBusyAfterRun()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 256
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->FILE_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    goto :goto_4

    .line 257
    :cond_c
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isPreAllocateFailed()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 258
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->PRE_ALLOCATE_FAILED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    .line 259
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getRealCause()Ljava/io/IOException;

    move-result-object v1

    goto :goto_4

    .line 261
    :cond_d
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    goto :goto_4

    .line 253
    :cond_e
    :goto_3
    sget-object v2, Lcom/taptap/sdk/update/download/core/cause/EndCause;->ERROR:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    .line 254
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getRealCause()Ljava/io/IOException;

    move-result-object v1

    .line 263
    :goto_4
    invoke-direct {p0, v0, v2, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->inspectTaskEnd(Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :cond_f
    :goto_5
    return-void
.end method

.method protected finished()V
    .locals 2

    .line 336
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->finish(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call is finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadCall"

    invoke-static {v1, v0}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getPriority()I

    move-result v0

    return v0
.end method

.method protected interrupted(Ljava/lang/InterruptedException;)V
    .locals 0

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->finishing:Z

    return v0
.end method

.method setInfoToTask(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-static {v0, p1}, Lcom/taptap/sdk/update/download/DownloadTask$TaskHideWrapper;->setBreakpointInfo(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-void
.end method

.method start(Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 306
    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 310
    invoke-virtual {p2, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v4

    .line 311
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/taptap/sdk/update/download/core/Util;->isCorrectFull(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    invoke-static {v4}, Lcom/taptap/sdk/update/download/core/Util;->resetBlockIfDirty(Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V

    .line 316
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget-object v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-static {v3, v4, p2, p1, v5}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->createChain(ILcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    move-result-object v4

    .line 317
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getBlockIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_1
    iget-boolean p2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->canceled:Z

    if-eqz p2, :cond_2

    return-void

    .line 325
    :cond_2
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->setRequireStreamBlocks(Ljava/util/List;)V

    .line 327
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->startBlocks(Ljava/util/List;)V

    return-void
.end method

.method startBlocks(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadChain;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    .line 344
    invoke-virtual {p0, v2}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->submitChain(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 350
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 352
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void

    :catchall_0
    move-exception v1

    .line 357
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v3, 0x1

    .line 358
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    .line 360
    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 363
    throw v0
.end method

.method submitChain(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/download/DownloadChain;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
