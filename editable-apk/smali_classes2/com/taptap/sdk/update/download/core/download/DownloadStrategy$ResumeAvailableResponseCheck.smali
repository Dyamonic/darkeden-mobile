.class public Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;
.super Ljava/lang/Object;
.source "DownloadStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeAvailableResponseCheck"
.end annotation


# instance fields
.field private blockIndex:I

.field private connected:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

.field private info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;


# direct methods
.method protected constructor <init>(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;ILcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->connected:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    .line 284
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    .line 285
    iput p2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->blockIndex:I

    return-void
.end method


# virtual methods
.method public inspect()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    iget v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->blockIndex:I

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->connected:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    invoke-interface {v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v1

    .line 291
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->connected:Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    const-string v3, "Etag"

    invoke-interface {v2, v3}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v3

    .line 294
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v8

    :goto_0
    iget-object v9, p0, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3, v1, v4, v9, v2}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->getPreconditionFailedCause(IZLcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    move-result-object v2

    if-nez v2, :cond_3

    .line 301
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v2

    .line 302
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v8

    :goto_1
    invoke-virtual {v2, v1, v5}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->isServerCanceled(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 305
    :cond_2
    new-instance v2, Lcom/taptap/sdk/update/download/core/exception/ServerCanceledException;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v3

    invoke-direct {v2, v1, v3, v4}, Lcom/taptap/sdk/update/download/core/exception/ServerCanceledException;-><init>(IJ)V

    throw v2

    .line 298
    :cond_3
    new-instance v0, Lcom/taptap/sdk/update/download/core/exception/ResumeFailedException;

    invoke-direct {v0, v2}, Lcom/taptap/sdk/update/download/core/exception/ResumeFailedException;-><init>(Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    throw v0
.end method
