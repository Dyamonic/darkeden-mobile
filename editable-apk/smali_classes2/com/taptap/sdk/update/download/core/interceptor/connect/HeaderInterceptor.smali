.class public Lcom/taptap/sdk/update/download/core/interceptor/connect/HeaderInterceptor;
.super Ljava/lang/Object;
.source "HeaderInterceptor.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;


# static fields
.field private static final TAG:Ljava/lang/String; = "HeaderInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getConnectionOrCreate()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getTask()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getHeaderMapFields()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    invoke-static {v3, v1}, Lcom/taptap/sdk/update/download/core/Util;->addUserRequestHeaderField(Ljava/util/Map;Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;)V

    :cond_0
    if-eqz v3, :cond_1

    const-string v4, "User-Agent"

    .line 57
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 58
    :cond_1
    invoke-static {v1}, Lcom/taptap/sdk/update/download/core/Util;->addDefaultUserAgent(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;)V

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getBlockIndex()I

    move-result v3

    .line 63
    invoke-virtual {v0, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getRangeLeft()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getRangeRight()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Range"

    .line 71
    invoke-interface {v1, v6, v5}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssembleHeaderRange ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/DownloadTask;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") block("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") downloadFrom("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getRangeLeft()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") currentOffset("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getCurrentOffset()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HeaderInterceptor"

    .line 72
    invoke-static {v5, v4}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getEtag()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "If-Match"

    .line 79
    invoke-interface {v1, v5, v4}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v4

    if-nez v4, :cond_8

    .line 86
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v4

    .line 87
    invoke-interface {v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v2, v3, v1}, Lcom/taptap/sdk/update/download/DownloadListener;->connectStart(Lcom/taptap/sdk/update/download/DownloadTask;ILjava/util/Map;)V

    .line 89
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processConnect()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v4

    if-nez v4, :cond_7

    .line 95
    invoke-interface {v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderFields()Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_4

    .line 96
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 98
    :cond_4
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v5

    .line 99
    invoke-interface {v1}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseCode()I

    move-result v6

    .line 98
    invoke-interface {v5, v2, v3, v6, v4}, Lcom/taptap/sdk/update/download/DownloadListener;->connectEnd(Lcom/taptap/sdk/update/download/DownloadTask;IILjava/util/Map;)V

    .line 102
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/OkDownload;->downloadStrategy()Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v1, v3, v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy;->resumeAvailableResponseCheck(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;ILcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/taptap/sdk/update/download/core/download/DownloadStrategy$ResumeAvailableResponseCheck;->inspect()V

    const-string v0, "Content-Length"

    .line 108
    invoke-interface {v1, v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 113
    :cond_5
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->parseContentLength(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, "Content-Range"

    .line 110
    invoke-interface {v1, v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->parseContentLengthFromContentRange(Ljava/lang/String;)J

    move-result-wide v2

    .line 116
    :goto_1
    invoke-virtual {p1, v2, v3}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->setResponseContentLength(J)V

    return-object v1

    .line 92
    :cond_7
    sget-object p1, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw p1

    .line 83
    :cond_8
    sget-object p1, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw p1

    .line 65
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No block-info found on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
