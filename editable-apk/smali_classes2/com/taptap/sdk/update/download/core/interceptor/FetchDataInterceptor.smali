.class public Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;
.super Ljava/lang/Object;
.source "FetchDataInterceptor.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;


# instance fields
.field private final blockIndex:I

.field private final dispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

.field private final readBuffer:[B

.field private final task:Lcom/taptap/sdk/update/download/DownloadTask;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;Lcom/taptap/sdk/update/download/DownloadTask;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->blockIndex:I

    .line 47
    iput-object p2, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    .line 48
    invoke-virtual {p4}, Lcom/taptap/sdk/update/download/DownloadTask;->getReadBufferSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    .line 49
    iput-object p3, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    .line 51
    iput-object p4, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    .line 52
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    return-void
.end method


# virtual methods
.method public interceptFetch(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getTask()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 63
    iget-object v0, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-long v0, v0

    return-wide v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    iget v2, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->blockIndex:I

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    invoke-virtual {v1, v2, v3, v0}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->write(I[BI)V

    int-to-long v0, v0

    .line 71
    invoke-virtual {p1, v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->increaseCallbackBytes(J)V

    .line 72
    iget-object v2, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    iget-object v3, p0, Lcom/taptap/sdk/update/download/core/interceptor/FetchDataInterceptor;->task:Lcom/taptap/sdk/update/download/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->isFetchProcessMoment(Lcom/taptap/sdk/update/download/DownloadTask;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    :cond_1
    return-wide v0

    .line 58
    :cond_2
    sget-object p1, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw p1
.end method
