.class public Lcom/taptap/sdk/update/download/core/interceptor/connect/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getTask()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/taptap/sdk/update/download/DownloadTask;)V

    .line 34
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    .line 36
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getConnectionOrCreate()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;->execute()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object p1

    return-object p1
.end method
