.class public Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;
.super Ljava/lang/Object;
.source "BreakpointInterceptor.java"

# interfaces
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Connect;
.implements Lcom/taptap/sdk/update/download/core/interceptor/Interceptor$Fetch;


# static fields
.field private static final CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "BreakpointInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\d+ *- *(\\d+) */ *\\d+"

    .line 138
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;->CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRangeRightFromContentRange(Ljava/lang/String;)J
    .locals 2

    .line 166
    sget-object v0, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;->CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method getExactContentLengthRangeFrom0(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;)J
    .locals 6

    const-string v0, "Content-Range"

    .line 145
    invoke-interface {p1, v0}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 148
    invoke-static {v0}, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;->getRangeRightFromContentRange(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-string v2, "Content-Length"

    .line 155
    invoke-interface {p1, v2}, Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;->getResponseHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lcom/taptap/sdk/update/download/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 157
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public interceptConnect(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Update store failed!"

    .line 50
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->processConnect()Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getInfo()Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;

    move-result-object v2

    .line 53
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isInterrupt()Z

    move-result v3

    if-nez v3, :cond_4

    .line 57
    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlockCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->isChunked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 60
    invoke-virtual {p0, v1}, Lcom/taptap/sdk/update/download/core/interceptor/BreakpointInterceptor;->getExactContentLengthRangeFrom0(Lcom/taptap/sdk/update/download/core/connection/DownloadConnection$Connected;)J

    move-result-wide v5

    .line 61
    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v5, v9

    if-lez v3, :cond_2

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SingleBlock special check: the response instance-length["

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "] isn\'t equal to the instance length from trial-connection["

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "BreakpointInterceptor"

    invoke-static {v7, v3}, Lcom/taptap/sdk/update/download/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 66
    invoke-virtual {v2, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    move-result-object v8

    .line 67
    invoke-virtual {v8}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;->getRangeLeft()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    .line 69
    :goto_0
    new-instance v3, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;

    invoke-direct {v3, v9, v10, v5, v6}, Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;-><init>(JJ)V

    .line 70
    invoke-virtual {v2}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->resetBlockInfos()V

    .line 71
    invoke-virtual {v2, v3}, Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;->addBlock(Lcom/taptap/sdk/update/download/core/breakpoint/BlockInfo;)V

    if-nez v4, :cond_1

    .line 79
    invoke-static {}, Lcom/taptap/sdk/update/download/OkDownload;->with()Lcom/taptap/sdk/update/download/OkDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/OkDownload;->callbackDispatcher()Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/update/download/core/dispatcher/CallbackDispatcher;->dispatch()Lcom/taptap/sdk/update/download/DownloadListener;

    move-result-object v3

    .line 80
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getTask()Lcom/taptap/sdk/update/download/DownloadTask;

    move-result-object v4

    sget-object v5, Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;->CONTENT_LENGTH_CHANGED:Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;

    invoke-interface {v3, v4, v2, v5}, Lcom/taptap/sdk/update/download/DownloadListener;->downloadFromBeginning(Lcom/taptap/sdk/update/download/DownloadTask;Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;Lcom/taptap/sdk/update/download/core/cause/ResumeFailedCause;)V

    goto :goto_1

    :cond_1
    const-string p1, "Discard breakpoint because of on this special case, we have to download from beginning"

    .line 76
    invoke-static {v7, p1}, Lcom/taptap/sdk/update/download/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/taptap/sdk/update/download/core/exception/RetryException;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/update/download/core/exception/RetryException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getDownloadStore()Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;

    move-result-object p1

    .line 87
    :try_start_0
    invoke-interface {p1, v2}, Lcom/taptap/sdk/update/download/core/breakpoint/DownloadStore;->update(Lcom/taptap/sdk/update/download/core/breakpoint/BreakpointInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 88
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 91
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    :cond_4
    sget-object p1, Lcom/taptap/sdk/update/download/core/exception/InterruptException;->SIGNAL:Lcom/taptap/sdk/update/download/core/exception/InterruptException;

    throw p1
.end method

.method public interceptFetch(Lcom/taptap/sdk/update/download/core/download/DownloadChain;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getResponseContentLength()J

    move-result-wide v0

    .line 100
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getBlockIndex()I

    move-result v2

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    .line 106
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getOutputStream()Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;

    move-result-object v8

    .line 110
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->loopFetch()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v11, v9, v3

    if-nez v11, :cond_4

    .line 119
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    .line 120
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isUserCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v8, v2}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->done(I)V

    :cond_1
    if-eqz v5, :cond_3

    .line 125
    invoke-virtual {v8, v2}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->inspectComplete(I)V

    cmp-long p1, v6, v0

    if-nez p1, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch-length isn\'t equal to the response content-length, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "!= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-wide v6

    :cond_4
    add-long/2addr v6, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 119
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    .line 120
    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadChain;->getCache()Lcom/taptap/sdk/update/download/core/download/DownloadCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/update/download/core/download/DownloadCache;->isUserCanceled()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v8, v2}, Lcom/taptap/sdk/update/download/core/file/MultiPointOutputStream;->done(I)V

    .line 121
    :cond_5
    throw v0
.end method
