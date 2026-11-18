.class public Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;
.super Ljava/lang/Object;
.source "BreakpointLocalCheck.java"


# instance fields
.field private dirty:Z

.field fileExist:Z

.field private final info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

.field infoRight:Z

.field outputStreamSupport:Z

.field private final responseInstanceLength:J

.field private final task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;J)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 58
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    .line 59
    iput-wide p3, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->responseInstanceLength:J

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->isFileExistToResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->fileExist:Z

    .line 134
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->isInfoRightToResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->infoRight:Z

    .line 135
    invoke-virtual {p0}, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->isOutputStreamSupportResume()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    .line 136
    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->infoRight:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->fileExist:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->dirty:Z

    return-void
.end method

.method public getCauseOrThrow()Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->infoRight:Z

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object v0

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->fileExist:Z

    if-nez v0, :cond_1

    .line 82
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object v0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    if-nez v0, :cond_2

    .line 84
    sget-object v0, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    return-object v0

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cause find with dirty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->dirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->dirty:Z

    return v0
.end method

.method public isFileExistToResume()Z
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isUriContentScheme(Landroid/net/Uri;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 125
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public isInfoRightToResume()Z
    .locals 8

    .line 91
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    return v1

    .line 100
    :cond_4
    iget-wide v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->responseInstanceLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->responseInstanceLength:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    return v1

    :cond_5
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 105
    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v3, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getContentLength()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_6

    return v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public isOutputStreamSupportResume()Z
    .locals 4

    .line 113
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->outputStreamFactory()Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->info:Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 117
    :cond_1
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->processFileStrategy()Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;

    move-result-object v0

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v0, v3}, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->isPreAllocateLength(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileExist["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->fileExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] infoRight["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->infoRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] outputStreamSupport["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taptap/sdk/update/download/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
