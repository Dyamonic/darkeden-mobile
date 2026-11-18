.class Lcom/taptap/sdk/update/download/DownloadContext$2;
.super Ljava/lang/Object;
.source "DownloadContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/DownloadContext;->callbackQueueEndOnSerialLoop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/DownloadContext;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/DownloadContext;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/taptap/sdk/update/download/DownloadContext$2;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/taptap/sdk/update/download/DownloadContext$2;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    iget-object v0, v0, Lcom/taptap/sdk/update/download/DownloadContext;->contextListener:Lcom/taptap/sdk/update/download/DownloadContextListener;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/DownloadContext$2;->this$0:Lcom/taptap/sdk/update/download/DownloadContext;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/DownloadContextListener;->queueEnd(Lcom/taptap/sdk/update/download/DownloadContext;)V

    return-void
.end method
