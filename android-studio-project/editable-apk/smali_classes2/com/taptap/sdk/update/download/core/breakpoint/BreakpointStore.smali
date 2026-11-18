.class public interface abstract Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointStore;
.super Ljava/lang/Object;
.source "BreakpointStore.java"


# virtual methods
.method public abstract createAndInsert(Lcom/taptap/sdk/update/download/DownloadTask;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract findAnotherInfoFromCompare(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
.end method

.method public abstract findOrCreateId(Lcom/taptap/sdk/update/download/DownloadTask;)I
.end method

.method public abstract get(I)Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;
.end method

.method public abstract getResponseFilename(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isFileDirty(I)Z
.end method

.method public abstract isOnlyMemoryCache()Z
.end method

.method public abstract remove(I)V
.end method

.method public abstract update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
