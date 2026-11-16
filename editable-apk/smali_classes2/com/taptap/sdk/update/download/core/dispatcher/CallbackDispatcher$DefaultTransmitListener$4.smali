.class Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;
.super Ljava/lang/Object;
.source "CallbackDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

.field final synthetic val$cause:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

.field final synthetic val$info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

.field final synthetic val$task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->this$0:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener;

    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$cause:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getListener()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$task:Lcom/taptap/sdk/update/download/DownloadTask;

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher$DefaultTransmitListener$4;->val$cause:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    invoke-interface {v0, v1, v2, v3}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    return-void
.end method
