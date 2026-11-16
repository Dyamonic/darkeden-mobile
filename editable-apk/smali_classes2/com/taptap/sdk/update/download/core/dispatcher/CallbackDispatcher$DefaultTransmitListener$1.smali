.class Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$1;
.super Ljava/lang/Object;
.source "CallbackDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

.field final synthetic val$task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$1;->this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$1;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$1;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$1;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-interface {v0, v1}, Lcom/taptap/sdk/update/download/DownloadListener;->taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V

    return-void
.end method
