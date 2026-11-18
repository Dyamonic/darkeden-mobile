.class public Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field client:Z

.field hostname:Ljava/lang/String;

.field listener:Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;

.field pingIntervalMillis:I

.field pushObserver:Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;

.field sink:Lcom/taptap/sdk/okio/BufferedSink;

.field socket:Ljava/net/Socket;

.field source:Lcom/taptap/sdk/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    sget-object v0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;

    iput-object v0, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;

    .line 547
    sget-object v0, Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;->CANCEL:Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;

    .line 556
    iput-boolean p1, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->client:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 589
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection;-><init>(Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;)V

    return-object v0
.end method

.method public listener(Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->listener:Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Listener;

    return-object p0
.end method

.method public pingIntervalMillis(I)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 584
    iput p1, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    return-object p0
.end method

.method public pushObserver(Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lcom/taptap/sdk/okhttp3/internal/http2/PushObserver;

    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {p1}, Lcom/taptap/sdk/okio/Okio;->source(Ljava/net/Socket;)Lcom/taptap/sdk/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/okio/Okio;->buffer(Lcom/taptap/sdk/okio/Source;)Lcom/taptap/sdk/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/taptap/sdk/okio/Okio;->sink(Ljava/net/Socket;)Lcom/taptap/sdk/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/taptap/sdk/okio/Okio;->buffer(Lcom/taptap/sdk/okio/Sink;)Lcom/taptap/sdk/okio/BufferedSink;

    move-result-object v2

    .line 560
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/taptap/sdk/okio/BufferedSource;Lcom/taptap/sdk/okio/BufferedSink;)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lcom/taptap/sdk/okio/BufferedSource;Lcom/taptap/sdk/okio/BufferedSink;)Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    .line 567
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->hostname:Ljava/lang/String;

    .line 568
    iput-object p3, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->source:Lcom/taptap/sdk/okio/BufferedSource;

    .line 569
    iput-object p4, p0, Lcom/taptap/sdk/okhttp3/internal/http2/Http2Connection$Builder;->sink:Lcom/taptap/sdk/okio/BufferedSink;

    return-object p0
.end method
