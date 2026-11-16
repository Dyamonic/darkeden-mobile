.class Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;
.super Ljava/lang/Object;
.source "CallbackDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

.field final synthetic val$blockIndex:I

.field final synthetic val$increaseBytes:J

.field final synthetic val$task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;Lcom/taptap/sdk/update/download/DownloadTask;IJ)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    iput p3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$blockIndex:I

    iput-wide p4, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$increaseBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$blockIndex:I

    iget-wide v3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$9;->val$increaseBytes:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/taptap/sdk/update/download/DownloadListener;->fetchProgress(Lcom/taptap/sdk/update/download/DownloadTask;IJ)V

    return-void
.end method
