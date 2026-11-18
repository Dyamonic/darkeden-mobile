.class public Lcom/taptap/sdk/update/download/core/interceptor/RetryInterceptor;
.super Ljava/lang/Object;
.source "RetryInterceptor.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v0

    .line 39
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processConnect()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    sget-object v1, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 44
    instance-of v2, v1, Lcom/taptap/sdk/update/download/core/exception/RetryException;

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->resetConnectForRetry()V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    .line 50
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getBlockIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->catchBlockConnectException(I)V

    .line 51
    throw v1
.end method

.method public interceptFetch(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processFetch()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    .line 62
    throw v0
.end method
