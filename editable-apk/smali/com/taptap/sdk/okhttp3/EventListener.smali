.class public abstract Lcom/taptap/sdk/okhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lcom/taptap/sdk/okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/taptap/sdk/okhttp3/EventListener$1;

    invoke-direct {v0}, Lcom/taptap/sdk/okhttp3/EventListener$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/okhttp3/EventListener;->NONE:Lcom/taptap/sdk/okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lcom/taptap/sdk/okhttp3/EventListener;)Lcom/taptap/sdk/okhttp3/EventListener$Factory;
    .locals 1

    .line 57
    new-instance v0, Lcom/taptap/sdk/okhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/okhttp3/EventListener$2;-><init>(Lcom/taptap/sdk/okhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public callEnd(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public callFailed(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public callStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public connectEnd(Lcom/taptap/sdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/taptap/sdk/okhttp3/Protocol;)V
    .locals 0
    .param p4    # Lcom/taptap/sdk/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectFailed(Lcom/taptap/sdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lcom/taptap/sdk/okhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0
    .param p4    # Lcom/taptap/sdk/okhttp3/Protocol;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectStart(Lcom/taptap/sdk/okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public connectionAcquired(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public connectionReleased(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public dnsEnd(Lcom/taptap/sdk/okhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Lcom/taptap/sdk/okhttp3/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestBodyEnd(Lcom/taptap/sdk/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public requestBodyStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public requestHeadersEnd(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Request;)V
    .locals 0

    return-void
.end method

.method public requestHeadersStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseBodyEnd(Lcom/taptap/sdk/okhttp3/Call;J)V
    .locals 0

    return-void
.end method

.method public responseBodyStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseHeadersEnd(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
    .locals 0

    return-void
.end method

.method public responseHeadersStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public secureConnectEnd(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Handshake;)V
    .locals 0
    .param p2    # Lcom/taptap/sdk/okhttp3/Handshake;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public secureConnectStart(Lcom/taptap/sdk/okhttp3/Call;)V
    .locals 0

    return-void
.end method
