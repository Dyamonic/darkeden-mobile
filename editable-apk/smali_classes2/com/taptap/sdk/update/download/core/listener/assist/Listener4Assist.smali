.class public Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;
.super Ljava/lang/Object;
.source "Listener4Assist.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;,
        Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;,
        Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;"
    }
.end annotation


# instance fields
.field private assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

.field callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

.field private final modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;-><init>(Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ModelCreator;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    return-void
.end method


# virtual methods
.method public fetchEnd(Lcom/taptap/sdk/update/download/DownloadTask;I)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v1, p1, p2, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;->dispatchBlockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_2

    .line 110
    iget-object v0, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0, p2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;->blockEnd(Lcom/taptap/sdk/update/download/DownloadTask;ILcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V

    :cond_2
    return-void
.end method

.method public fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 9

    .line 81
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    add-long v7, v1, p3

    .line 86
    iget-object v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->blockCurrentOffsetMap:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-wide v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    .line 89
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_2

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, v0

    .line 90
    invoke-interface/range {v1 .. v6}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;->dispatchFetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 94
    :cond_2
    iget-object p3, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz p3, :cond_3

    .line 95
    invoke-interface {p3, p1, p2, v7, v8}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;->progressBlock(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    .line 96
    iget-object p2, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    iget-wide p3, v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->currentOffset:J

    invoke-interface {p2, p1, p3, p4}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;->progress(Lcom/taptap/sdk/update/download/DownloadTask;J)V

    :cond_3
    return-void
.end method

.method public getAssistExtend()Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    return-object v0
.end method

.method public getCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;)J
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->getOrRecoverModel(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->getCurrentOffset()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Z)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->addAndGetModel(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    .line 58
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;->dispatchInfoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;->infoReady(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;ZLcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V

    :cond_1
    return-void
.end method

.method public isAlwaysRecoverAssistModel()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->isAlwaysRecoverAssistModel()Z

    move-result v0

    return v0
.end method

.method public setAlwaysRecoverAssistModel(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModel(Z)V

    return-void
.end method

.method public setAlwaysRecoverAssistModelIfNotSet(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->setAlwaysRecoverAssistModelIfNotSet(Z)V

    return-void
.end method

.method public setAssistExtend(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    return-void
.end method

.method public setCallback(Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    return-void
.end method

.method public setCurrentOffset(Lcom/taptap/sdk/update/download/DownloadTask;J)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->addAndGetModel(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;->setCurrentOffset(J)V

    return-void
.end method

.method public declared-synchronized taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->modelHandler:Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler;->removeOrCreate(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/listener/assist/ListenerModelHandler$ListenerModel;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;

    .line 117
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->assistExtend:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;

    if-eqz v1, :cond_0

    .line 118
    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$AssistExtend;->dispatchTaskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 119
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist;->callback:Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Callback;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;Lcom/taptap/sdk/update/download/core/listener/assist/Listener4Assist$Listener4Model;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
