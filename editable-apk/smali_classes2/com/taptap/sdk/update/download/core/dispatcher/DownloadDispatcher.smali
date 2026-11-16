.class public Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;
.super Ljava/lang/Object;
.source "DownloadDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadDispatcher"


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ExecutorService;

.field private final finishingCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;"
        }
    .end annotation
.end field

.field private final flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field maxParallelRunningCount:I

.field private final readyAsyncCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningAsyncCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningSyncCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;"
        }
    .end annotation
.end field

.field private final skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 52
    iput v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    .line 85
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    .line 86
    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->finishingCalls:Ljava/util/List;

    return-void
.end method

.method private declared-synchronized cancelLocked([Lcom/taptap/sdk/update/download/core/IdentifiedTask;)V
    .locals 7

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DownloadDispatcher"

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start cancel bunch task manually: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 232
    invoke-direct {p0, v6, v2, v3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->filterCanceledCalls(Lcom/taptap/sdk/update/download/core/IdentifiedTask;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    :cond_0
    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "DownloadDispatcher"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish cancel bunch task manually: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    .line 235
    :try_start_3
    invoke-direct {p0, v2, v3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/List;Ljava/util/List;)V

    const-string v2, "DownloadDispatcher"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish cancel bunch task manually: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized enqueueIgnorePriority(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-static {p1, v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->create(Lcom/taptap/sdk/update/download/DownloadTask;ZLcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    move-result-object p1

    .line 160
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncSize()I

    move-result v0

    iget v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized enqueueLocked(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueLocked for single task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 153
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->enqueueIgnorePriority(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 155
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v0, p1, :cond_2

    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized enqueueLocked([Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 10

    monitor-enter p0

    .line 116
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DownloadDispatcher"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start enqueueLocked for bunch task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 130
    invoke-virtual {p0, v8, v4}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-direct {p0, v8, v5, v6}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0, v8}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->enqueueIgnorePriority(Lcom/taptap/sdk/update/download/DownloadTask;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v7

    .line 136
    invoke-virtual {v7, v4, v5, v6}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->endTasks(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 139
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->endTasksWithError(Ljava/util/Collection;Ljava/lang/Exception;)V

    .line 142
    :goto_1
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_4

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_4
    const-string v2, "DownloadDispatcher"

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end enqueueLocked for bunch task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " consume "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized filterCanceledCalls(Lcom/taptap/sdk/update/download/core/IdentifiedTask;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/IdentifiedTask;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 261
    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eq v2, p1, :cond_1

    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 262
    :cond_1
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 264
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 265
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    .line 262
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 271
    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eq v2, p1, :cond_6

    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 272
    :cond_6
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 278
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 279
    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eq v2, p1, :cond_9

    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 280
    :cond_9
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 285
    :cond_a
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleCanceledCalls(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle cancel calls, cancel calls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 292
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->cancel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p2, "DownloadDispatcher"

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle cancel calls, callback cancel event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 300
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    const/4 p2, 0x0

    .line 301
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 302
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p2

    iget-object p1, p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/EndCause;->CANCELED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_2

    .line 306
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 308
    iget-object v0, v0, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 310
    :cond_3
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->endTasksWithCanceled(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, p1, v0, v0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method private inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;)Z"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    .line 425
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    .line 426
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private declared-synchronized processCalls()V
    .locals 5

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    .line 501
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncSize()I

    move-result v0

    iget v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    .line 502
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    .line 504
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 509
    iget-object v2, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 510
    invoke-virtual {p0, v2}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->isFileConflictAfterRun(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 511
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v1

    sget-object v3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->FILE_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_0

    .line 516
    :cond_4
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 519
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncSize()I

    move-result v1

    iget v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v1, v2, :cond_3

    monitor-exit p0

    return-void

    .line 521
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runningAsyncSize()I
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static setMaxParallelRunningCount(I)V
    .locals 3

    .line 528
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 534
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 535
    iput p0, v0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I

    return-void

    .line 530
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current dispatcher is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not DownloadDispatcher exactly!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel([Lcom/taptap/sdk/update/download/core/IdentifiedTask;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 203
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancelLocked([Lcom/taptap/sdk/update/download/core/IdentifiedTask;)V

    .line 204
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 205
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->processCalls()V

    return-void
.end method

.method public cancel(I)Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 218
    invoke-static {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->mockTaskForCompare(I)Lcom/taptap/sdk/update/download/DownloadTask$MockTaskForCompare;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancelLocked(Lcom/taptap/sdk/update/download/core/IdentifiedTask;)Z

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 220
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->processCalls()V

    return p1
.end method

.method public cancel(Lcom/taptap/sdk/update/download/core/IdentifiedTask;)Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 210
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancelLocked(Lcom/taptap/sdk/update/download/core/IdentifiedTask;)Z

    move-result p1

    .line 211
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 212
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->processCalls()V

    return p1
.end method

.method public cancelAll()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    iget-object v2, v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    iget-object v2, v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    iget-object v2, v2, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 193
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/taptap/sdk/update/download/DownloadTask;

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/update/download/core/IdentifiedTask;

    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->cancelLocked([Lcom/taptap/sdk/update/download/core/IdentifiedTask;)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method declared-synchronized cancelLocked(Lcom/taptap/sdk/update/download/core/IdentifiedTask;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel manually: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/IdentifiedTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    :try_start_1
    invoke-direct {p0, p1, v0, v1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->filterCanceledCalls(Lcom/taptap/sdk/update/download/core/IdentifiedTask;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/List;Ljava/util/List;)V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 250
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/List;Ljava/util/List;)V

    .line 251
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enqueue(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 111
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->enqueueLocked(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 112
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public enqueue([Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 105
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->enqueueLocked([Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 106
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public execute(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 3

    const-string v0, "DownloadDispatcher"

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 175
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-static {p1, v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->create(Lcom/taptap/sdk/update/download/DownloadTask;ZLcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->syncRunCall(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findSameTask(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findSameTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 319
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 323
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 324
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 325
    :cond_4
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 328
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 329
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    .line 330
    :cond_7
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_8
    const/4 p1, 0x0

    .line 333
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finish(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V
    .locals 2

    monitor-enter p0

    .line 376
    :try_start_0
    iget-boolean v0, p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->asyncExecuted:Z

    .line 378
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->finishingCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->finishingCalls:Ljava/util/List;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 381
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    .line 385
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    if-eqz v0, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->processCalls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_3
    monitor-exit p0

    return-void

    .line 385
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Call wasn\'t in-flight!"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flyingCanceled(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flying canceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean p1, p1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->asyncExecuted:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkDownload Download"

    const/4 v8, 0x0

    .line 97
    invoke-static {v1, v8}, Lcom/taptap/sdk/update/download/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, p1, v0}, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method inspectCompleted(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;)Z"
        }
    .end annotation

    .line 435
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->isPassIfAlreadyCompleted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/taptap/sdk/update/download/StatusUtil;->isCompleted(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    .line 437
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->validFilenameFromStore(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 441
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->validInfoOnCompleted(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V

    if-eqz p2, :cond_1

    .line 444
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p2

    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    const/4 v1, 0x0

    .line 447
    invoke-interface {p2, p1, v0, v1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method inspectForConflict(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/core/download/DownloadCall;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;)Z"
        }
    .end annotation

    .line 460
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v0

    .line 461
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 462
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 463
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 464
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    .line 467
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isFinishing()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 468
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "task: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is finishing, move it to finishing list"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DownloadDispatcher"

    invoke-static {p3, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->finishingCalls:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    return v2

    :cond_2
    if-eqz p3, :cond_3

    .line 476
    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 478
    :cond_3
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p2

    sget-object p3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    .line 479
    invoke-interface {p2, p1, p3, v5}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :goto_1
    return v4

    .line 484
    :cond_4
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->getFile()Ljava/io/File;

    move-result-object v1

    .line 485
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_5

    .line 488
    invoke-interface {p4, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 490
    :cond_5
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p2

    sget-object p3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->FILE_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    invoke-interface {p2, p1, p3, v5}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    :goto_2
    return v4

    :cond_6
    return v2
.end method

.method public declared-synchronized isFileConflictAfterRun(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is file conflict after run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 393
    monitor-exit p0

    return v1

    .line 396
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 397
    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    if-ne v5, p1, :cond_2

    goto :goto_0

    .line 399
    :cond_2
    iget-object v3, v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 400
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 401
    monitor-exit p0

    return v4

    .line 405
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 406
    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    if-ne v5, p1, :cond_5

    goto :goto_1

    .line 408
    :cond_5
    iget-object v3, v3, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 409
    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    .line 410
    monitor-exit p0

    return v4

    .line 414
    :cond_6
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isPending(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 358
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 362
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isRunning(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadDispatcher"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 339
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 341
    monitor-exit p0

    return v2

    .line 345
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/core/download/DownloadCall;

    .line 346
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 347
    :cond_4
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->equalsTask(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 348
    monitor-exit p0

    return v2

    :cond_5
    const/4 p1, 0x0

    .line 352
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDownloadStore(Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/DownloadDispatcher;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    return-void
.end method

.method syncRunCall(Lcom/taptap/sdk/update/download/core/download/DownloadCall;)V
    .locals 0

    .line 367
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCall;->run()V

    return-void
.end method
