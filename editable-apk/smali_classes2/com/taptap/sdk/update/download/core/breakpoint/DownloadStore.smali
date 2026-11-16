.class public interface abstract Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;
.super Ljava/lang/Object;
.source "DownloadStore.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;


# virtual methods
.method public abstract getAfterCompleted(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
.end method

.method public abstract markFileClear(I)Z
.end method

.method public abstract markFileDirty(I)Z
.end method

.method public abstract onSyncToFilesystemSuccess(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onTaskEnd(ILcom/taptap/sdk/update/download/core/cause/EndCause;Ljava/lang/Exception;)V
.end method

.method public abstract onTaskStart(I)V
.end method
