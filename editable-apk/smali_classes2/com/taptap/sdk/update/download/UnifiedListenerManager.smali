.class public Lcom/taptap/sdk/update/download/UnifiedListenerManager;
.super Ljava/lang/Object;
.source "UnifiedListenerManager.java"


# instance fields
.field final autoRemoveListenerIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

.field final realListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    .line 207
    new-instance v0, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/update/download/UnifiedListenerManager$1;-><init>(Lcom/taptap/sdk/update/download/UnifiedListenerManager;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->getThreadSafeArray(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object p0

    return-object p0
.end method

.method private static getThreadSafeArray(Lcom/taptap/sdk/update/download/DownloadTask;Landroid/util/SparseArray;)[Lcom/taptap/sdk/update/download/DownloadListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/DownloadTask;",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/taptap/sdk/update/download/DownloadListener;",
            ">;>;)[",
            "Lcom/taptap/sdk/update/download/DownloadListener;"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 344
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/taptap/sdk/update/download/DownloadListener;

    .line 347
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized addAutoRemoveListenersWhenTaskEnd(I)V
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized attachAndEnqueueIfNotRun(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 0

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->attachListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->isTaskPendingOrRunning(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->enqueue(Lcom/taptap/sdk/update/download/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized attachListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    instance-of p1, p2, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;

    if-eqz p1, :cond_1

    .line 98
    check-cast p2, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;->setAlwaysRecoverAssistModelIfNotSet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detachListener(I)V
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detachListener(Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 4

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 61
    iget-object v3, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 71
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detachListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)Z
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    .line 76
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 78
    monitor-exit p0

    return p1

    .line 80
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 81
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enqueueTaskWithUnifiedListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 0

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->attachListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V

    .line 181
    iget-object p2, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->enqueue(Lcom/taptap/sdk/update/download/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executeTaskWithUnifiedListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 0

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->attachListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V

    .line 194
    iget-object p2, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->execute(Lcom/taptap/sdk/update/download/DownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDownloadListener(Lcom/taptap/sdk/update/download/DownloadTask;Ljava/lang/String;)Lcom/taptap/sdk/update/download/DownloadListener;
    .locals 3

    .line 163
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    .line 164
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadListener;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getHostListener()Lcom/taptap/sdk/update/download/DownloadListener;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->hostListener:Lcom/taptap/sdk/update/download/DownloadListener;

    return-object v0
.end method

.method public declared-synchronized isListenerAttached(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)Z
    .locals 1

    monitor-enter p0

    .line 154
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 157
    monitor-exit p0

    return p1

    .line 159
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method isTaskPendingOrRunning(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 0

    .line 204
    invoke-static {p1}, Lcom/taptap/sdk/update/download/StatusUtil;->isSameTaskPendingOrRunning(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized removeAutoRemoveListenersWhenTaskEnd(I)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->autoRemoveListenerIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized replaceListener(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 5

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result p1

    .line 127
    iget-object v0, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/taptap/sdk/update/download/UnifiedListenerManager;->realListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taptap/sdk/update/download/DownloadListener;

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 145
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    instance-of p1, p2, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;

    if-eqz p1, :cond_4

    .line 147
    check-cast p2, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/update/download/core/listener/assist/ListenerAssist;->setAlwaysRecoverAssistModelIfNotSet(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
