.class public Lcom/taptap/sdk/update/download/core/download/DownloadChain;
.super Ljava/lang/Object;
.source "DownloadChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final TAG:Ljava/lang/String; = "DownloadChain"


# instance fields
.field private final blockIndex:I

.field private final cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

.field private final callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

.field connectIndex:I

.field final connectInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

.field volatile currentThread:Ljava/lang/Thread;

.field fetchIndex:I

.field final fetchInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;",
            ">;"
        }
    .end annotation
.end field

.field final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

.field noCallbackIncreaseBytes:J

.field private final releaseConnectionRunnable:Ljava/lang/Runnable;

.field private responseContentLength:J

.field private final store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

.field private final task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 53
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload Cancel Block"

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(ILcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectIndex:I

    .line 69
    iput v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    .line 236
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    new-instance v0, Lcom/taptap/sdk/update/download/core/download/-$$Lambda$NTs4VaUIlN3pZiRp5Rv0ENBrS-A;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/core/download/-$$Lambda$NTs4VaUIlN3pZiRp5Rv0ENBrS-A;-><init>(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnectionRunnable:Ljava/lang/Runnable;

    .line 90
    iput p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    .line 91
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 92
    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    .line 93
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    .line 94
    iput-object p5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    .line 95
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    return-void
.end method

.method static createChain(ILcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/download/DownloadChain;
    .locals 7

    .line 85
    new-instance v6, Lcom/taptap/sdk/update/download/core/download/DownloadChain;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;-><init>(ILcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/download/DownloadCache;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V

    return-object v6
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public flushNoCallbackIncreaseBytes()V
    .locals 7

    .line 168
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->callbackDispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    iget-wide v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    invoke-interface {v0, v1, v4, v5, v6}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    .line 171
    iput-wide v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    return-void
.end method

.method public getBlockIndex()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    return v0
.end method

.method public getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    return-object v0
.end method

.method public declared-synchronized getConnection()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectionOrCreate()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getRedirectLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DownloadChain"

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create connection on url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/OkDownload;->connectionFactory()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Factory;->create(Ljava/lang/String;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 145
    :cond_2
    :try_start_1
    sget-object v0, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadStore()Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->store:Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    return-object v0
.end method

.method public getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    return-object v0
.end method

.method public getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponseContentLength()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->responseContentLength:J

    return-wide v0
.end method

.method public getTask()Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    return-object v0
.end method

.method public increaseCallbackBytes(J)V
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    return-void
.end method

.method isFinished()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loopFetch()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 231
    iget v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processFetch()J

    move-result-wide v0

    return-wide v0
.end method

.method public processConnect()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    iget v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;

    invoke-interface {v0, p0}, Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;->interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw v0
.end method

.method public processFetch()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    iget v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;

    invoke-interface {v0, p0}, Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;->interceptFetch(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)J

    move-result-wide v0

    return-wide v0

    .line 224
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw v0
.end method

.method public declared-synchronized releaseConnection()V
    .locals 3

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    invoke-interface {v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;->release()V

    const-string v0, "DownloadChain"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " task["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] block["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseConnectionAsync()V
    .locals 2

    .line 263
    sget-object v0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnectionRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetConnectForRetry()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectIndex:I

    .line 206
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnection()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnectionAsync()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string v1, "TapUpdateLog"

    const-string v2, "download interrupt exception"

    .line 255
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 257
    :goto_2
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->releaseConnectionAsync()V

    .line 259
    throw v1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The chain has been finished!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setConnection(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;)V
    .locals 0

    monitor-enter p0

    .line 125
    :try_start_0
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connection:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRedirectLocation(Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->setRedirectLocation(Ljava/lang/String;)V

    return-void
.end method

.method public setResponseContentLength(J)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->responseContentLength:J

    return-void
.end method

.method start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/taptap/sdk/update/download/core/interceptor/RetryInterceptor;

    invoke-direct {v1}, Lcom/taptap/sdk/update/download/core/interceptor/RetryInterceptor;-><init>()V

    .line 178
    new-instance v2, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;

    invoke-direct {v2}, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;-><init>()V

    .line 179
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    new-instance v4, Lcom/taptap/sdk/update/download/core/interceptor/connect/HeaderInterceptor;

    invoke-direct {v4}, Lcom/taptap/sdk/update/download/core/interceptor/connect/HeaderInterceptor;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectInterceptorList:Ljava/util/List;

    new-instance v4, Lcom/taptap/sdk/update/download/core/interceptor/connect/CallServerInterceptor;

    invoke-direct {v4}, Lcom/taptap/sdk/update/download/core/interceptor/connect/CallServerInterceptor;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 184
    iput v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->connectIndex:I

    .line 185
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processConnect()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object v4

    .line 186
    iget-object v5, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->cache:Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v5

    iget-object v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget v7, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getResponseContentLength()J

    move-result-wide v8

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchStart(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    .line 192
    new-instance v5, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;

    iget v6, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    .line 193
    invoke-interface {v4}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 194
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;-><init>(ILjava/io/InputStream;Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 195
    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iput v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->fetchIndex:I

    .line 200
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processFetch()J

    move-result-wide v1

    .line 201
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget v4, p0, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->blockIndex:I

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw v0
.end method
