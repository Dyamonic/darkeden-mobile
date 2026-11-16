.class public Lcom/taptap/sdk/update/download/DownloadSerialQueue;
.super Lcom/taptap/sdk/update/download/core/listener/DownloadListener2;
.source "DownloadSerialQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final ID_INVALID:I = 0x0

.field private static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG:Ljava/lang/String; = "DownloadSerialQueue"


# instance fields
.field listenerBunch:Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

.field volatile looping:Z

.field volatile paused:Z

.field volatile runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

.field volatile shutedDown:Z

.field private final taskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v0, "OkDownload DynamicSerial"

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const v2, 0x7fffffff

    const-wide/16 v3, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcom/taptap/sdk/update/download/DownloadSerialQueue;-><init>(Lcom/taptap/sdk/update/download/DownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/update/download/DownloadSerialQueue;-><init>(Lcom/taptap/sdk/update/download/DownloadListener;Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadListener;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadListener;",
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener2;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->shutedDown:Z

    .line 45
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    .line 46
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    .line 62
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->build()Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->listenerBunch:Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    .line 66
    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized enqueue(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 87
    iget-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    .line 89
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->startNewLooper()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getWaitingTaskCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getWorkingTaskId()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized pause()V
    .locals 3

    monitor-enter p0

    .line 99
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require pause this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), butit has already been paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 104
    :try_start_1
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    .line 106
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->cancel()V

    .line 108
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    if-nez v0, :cond_0

    const-string v0, "DownloadSerialQueue"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "require resume this queue(remain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), but it is still running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 124
    :try_start_1
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    .line 126
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    .line 128
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->startNewLooper()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 169
    :goto_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->shutedDown:Z

    if-nez v0, :cond_2

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->paused:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->listenerBunch:Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/DownloadTask;->execute(Lcom/taptap/sdk/update/download/DownloadListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 173
    :try_start_1
    iput-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 174
    iput-boolean v1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->looping:Z

    .line 175
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-void
.end method

.method public setListener(Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 1

    .line 74
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->append(Lcom/taptap/sdk/update/download/DownloadListener;)Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch$Builder;->build()Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->listenerBunch:Lcom/taptap/sdk/update/download/core/listener/DownloadListenerBunch;

    return-void
.end method

.method public declared-synchronized shutdown()[Lcom/taptap/sdk/update/download/DownloadTask;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 157
    :try_start_0
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->shutedDown:Z

    .line 159
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->cancel()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/taptap/sdk/update/download/DownloadTask;

    .line 162
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->taskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startNewLooper()V
    .locals 1

    .line 186
    sget-object v0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 0

    monitor-enter p0

    .line 196
    :try_start_0
    sget-object p3, Lcom/taptap/sdk/update/download/core/cause/EndCause;->CANCELED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadSerialQueue;->runningTask:Lcom/taptap/sdk/update/download/DownloadTask;

    return-void
.end method
