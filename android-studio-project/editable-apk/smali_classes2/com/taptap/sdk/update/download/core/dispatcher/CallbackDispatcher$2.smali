.class Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;
.super Ljava/lang/Object;
.source "CallbackDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->endTasks(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

.field final synthetic val$completedTaskCollection:Ljava/util/Collection;

.field final synthetic val$fileBusyCollection:Ljava/util/Collection;

.field final synthetic val$sameTaskConflictCollection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$completedTaskCollection:Ljava/util/Collection;

    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$sameTaskConflictCollection:Ljava/util/Collection;

    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$fileBusyCollection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$completedTaskCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 146
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v3

    sget-object v4, Lcom/taptap/sdk/update/download/core/cause/EndCause;->COMPLETED:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    invoke-interface {v3, v1, v4, v2}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$sameTaskConflictCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 149
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v3

    sget-object v4, Lcom/taptap/sdk/update/download/core/cause/EndCause;->SAME_TASK_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    invoke-interface {v3, v1, v4, v2}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$2;->val$fileBusyCollection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 152
    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v3

    sget-object v4, Lcom/taptap/sdk/update/download/core/cause/EndCause;->FILE_BUSY:Lcom/taptap/sdk/update/download/core/cause/EndCause;

    invoke-interface {v3, v1, v4, v2}, Lcom/taptap/sdk/update/download/DownloadListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V

    goto :goto_2

    :cond_2
    return-void
.end method
