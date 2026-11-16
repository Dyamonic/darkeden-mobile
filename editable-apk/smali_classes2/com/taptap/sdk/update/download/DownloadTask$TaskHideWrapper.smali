.class public Lcom/taptap/sdk/update/download/DownloadTask$TaskHideWrapper;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskHideWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastCallbackProcessTs(Lcom/taptap/sdk/update/download/DownloadTask;)J
    .locals 2

    .line 959
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/DownloadTask;->getLastCallbackProcessTs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setBreakpointInfo(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 0

    .line 969
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/download/DownloadTask;->setBreakpointInfo(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V

    return-void
.end method

.method public static setLastCallbackProcessTs(Lcom/taptap/sdk/update/download/DownloadTask;J)V
    .locals 0

    .line 964
    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/update/download/DownloadTask;->setLastCallbackProcessTs(J)V

    return-void
.end method
