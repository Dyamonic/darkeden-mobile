.class Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;
.super Lcom/taptap/sdk/update/download/core/listener/DownloadListener2;
.source "DownloadContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueueAttachListener"
.end annotation


# instance fields
.field private final contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

.field private final hostContext:Lcom/taptap/sdk/update/download/DownloadContext;

.field private final remainCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext;Lcom/taptap/sdk/update/download/DownloadContextListener;I)V
    .locals 1

    .line 404
    invoke-direct {p0}, Lcom/taptap/sdk/update/download/core/listener/DownloadListener2;-><init>()V

    .line 405
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->remainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    iput-object p2, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    .line 407
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->hostContext:Lcom/taptap/sdk/update/download/DownloadContext;

    return-void
.end method


# virtual methods
.method public taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
    .locals 7

    .line 416
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->remainCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 417
    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->hostContext:Lcom/taptap/sdk/update/download/DownloadContext;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/taptap/sdk/update/download/DownloadContextListener;->taskEnd(Lcom/taptap/sdk/update/download/DownloadContext;Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;I)V

    if-gtz v0, :cond_0

    .line 419
    iget-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    iget-object p2, p0, Lcom/taptap/sdk/update/download/DownloadContext$QueueAttachListener;->hostContext:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-interface {p1, p2}, Lcom/taptap/sdk/update/download/DownloadContextListener;->queueEnd(Lcom/taptap/sdk/update/download/DownloadContext;)V

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "taskEnd and remainCount "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadContext"

    invoke-static {p2, p1}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    return-void
.end method
