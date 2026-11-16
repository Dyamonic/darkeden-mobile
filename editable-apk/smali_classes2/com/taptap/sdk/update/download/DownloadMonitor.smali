.class public interface abstract Lcom/taptap/sdk/update/download/DownloadMonitor;
.super Ljava/lang/Object;
.source "DownloadMonitor.java"


# virtual methods
.method public abstract taskDownloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V
.end method

.method public abstract taskDownloadFromBreakpoint(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
.end method

.method public abstract taskEnd(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
.end method

.method public abstract taskStart(Lcom/taptap/sdk/update/download/DownloadTask;)V
.end method
