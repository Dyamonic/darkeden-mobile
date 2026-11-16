.class Lcom/taptap/sdk/update/download/DownloadContext$1;
.super Ljava/lang/Object;
.source "DownloadContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/DownloadContext;->start(Lcom/taptap/sdk/update/download/DownloadListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/DownloadContext;

.field final synthetic val$scheduleTaskList:Ljava/util/List;

.field final synthetic val$targetListener:Lcom/taptap/sdk/update/download/DownloadListener;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext;Ljava/util/List;Lcom/taptap/sdk/update/download/DownloadListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->val$scheduleTaskList:Ljava/util/List;

    iput-object p3, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->val$targetListener:Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->val$scheduleTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/update/download/DownloadTask;

    .line 115
    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadContext;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/download/DownloadTask;->isAutoCallbackToUIThread()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/update/download/DownloadContext;->access$000(Lcom/taptap/sdk/update/download/DownloadContext;Z)V

    goto :goto_1

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$1;->val$targetListener:Lcom/taptap/sdk/update/download/DownloadListener;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/update/download/DownloadTask;->execute(Lcom/taptap/sdk/update/download/DownloadListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
