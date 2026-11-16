.class public Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;
.super Ljava/lang/Object;
.source "ProcessFileStrategy.java"


# instance fields
.field private final fileLock:Lcom/taptap/sdk/update/download/core/file/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/taptap/sdk/update/download/core/file/FileLock;

    invoke-direct {v0}, Lcom/taptap/sdk/update/download/core/file/FileLock;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->fileLock:Lcom/taptap/sdk/update/download/core/file/FileLock;

    return-void
.end method


# virtual methods
.method public completeProcessStream(Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    return-void
.end method

.method public createProcessStream(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;
    .locals 1

    .line 37
    new-instance v0, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    invoke-direct {v0, p1, p2, p3}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;-><init>(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;)V

    return-object v0
.end method

.method public discardProcess(Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Delete file failed!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public getFileLock()Lcom/taptap/sdk/update/download/core/file/FileLock;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/file/ProcessFileStrategy;->fileLock:Lcom/taptap/sdk/update/download/core/file/FileLock;

    return-object v0
.end method

.method public isPreAllocateLength(Lcom/taptap/sdk/update/download/DownloadTask;)Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->outputStreamFactory()Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/update/download/core/file/DownloadOutputStream$Factory;->supportSeek()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getSetPreAllocateLength()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/DownloadTask;->getSetPreAllocateLength()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
