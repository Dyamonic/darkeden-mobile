.class public Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;
.super Ljava/lang/Object;
.source "RemitSyncExecutor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemitSyncExecutor"

.field static final WHAT_REMOVE_FREE_BUNCH_ID:I = -0x1

.field static final WHAT_REMOVE_FREE_ID:I = -0x2

.field static final WHAT_REMOVE_INFO:I = -0x3

.field static final WHAT_SYNC_BUNCH_ID:I


# instance fields
.field private final agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

.field private final freeToDBIdList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    .line 55
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "OkDownload RemitHandoverToDB"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;Landroid/os/Handler;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;",
            "Landroid/os/Handler;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

    .line 64
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    .line 65
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    const-string v2, "RemitSyncExecutor"

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 153
    iget p1, p1, Landroid/os/Message;->what:I

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;->syncCacheToDB(I)V

    .line 156
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync info with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 159
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync cache to db failed for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 142
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 144
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;->syncCacheToDB(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync bunch info with ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 148
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync info to db failed for ids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 131
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove free bunch ids "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 137
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove free bunch id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 124
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->agent:Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor$RemitAgent;->removeInfo(I)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method isFreeToDatabase(I)Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->freeToDBIdList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public postRemoveFreeId(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 104
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 105
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postRemoveFreeIds(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 98
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postRemoveInfo(I)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 92
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 93
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postSync(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postSync(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 86
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public postSyncInfoDelay(IJ)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method removePostWithId(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method removePostWithIds([I)V
    .locals 4

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 114
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/breakpoint/RemitSyncExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
