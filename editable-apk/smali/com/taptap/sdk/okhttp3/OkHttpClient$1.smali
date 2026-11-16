.class Lcom/taptap/sdk/okhttp3/OkHttpClient$1;
.super Lcom/taptap/sdk/okhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/taptap/sdk/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    return-void
.end method

.method public addLenient(Lcom/taptap/sdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 140
    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Headers$Builder;

    return-void
.end method

.method public apply(Lcom/taptap/sdk/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 180
    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public code(Lcom/taptap/sdk/okhttp3/Response$Builder;)I
    .locals 0

    .line 175
    iget p1, p1, Lcom/taptap/sdk/okhttp3/Response$Builder;->code:I

    return p1
.end method

.method public connectionBecameIdle(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)Z
    .locals 0

    .line 149
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/ConnectionPool;->connectionBecameIdle(Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)Z

    move-result p1

    return p1
.end method

.method public deduplicate(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
    .locals 0

    .line 163
    invoke-virtual {p1, p2, p3}, Lcom/taptap/sdk/okhttp3/ConnectionPool;->deduplicate(Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public equalsNonHost(Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/Address;)Z
    .locals 0

    .line 158
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/Address;->equalsNonHost(Lcom/taptap/sdk/okhttp3/Address;)Z

    move-result p1

    return p1
.end method

.method public get(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;Lcom/taptap/sdk/okhttp3/Route;)Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;
    .locals 0

    .line 154
    invoke-virtual {p1, p2, p3, p4}, Lcom/taptap/sdk/okhttp3/ConnectionPool;->get(Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;Lcom/taptap/sdk/okhttp3/Route;)Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;

    move-result-object p1

    return-object p1
.end method

.method public isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
    .locals 1

    .line 184
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid URL host"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public newWebSocketCall(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    .line 196
    invoke-static {p1, p2, v0}, Lcom/taptap/sdk/okhttp3/RealCall;->newRealCall(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)Lcom/taptap/sdk/okhttp3/RealCall;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)V
    .locals 0

    .line 167
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/ConnectionPool;->put(Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)V

    return-void
.end method

.method public routeDatabase(Lcom/taptap/sdk/okhttp3/ConnectionPool;)Lcom/taptap/sdk/okhttp3/internal/connection/RouteDatabase;
    .locals 0

    .line 171
    iget-object p1, p1, Lcom/taptap/sdk/okhttp3/ConnectionPool;->routeDatabase:Lcom/taptap/sdk/okhttp3/internal/connection/RouteDatabase;

    return-object p1
.end method

.method public setCache(Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;Lcom/taptap/sdk/okhttp3/internal/cache/InternalCache;)V
    .locals 0

    .line 144
    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;->setInternalCache(Lcom/taptap/sdk/okhttp3/internal/cache/InternalCache;)V

    return-void
.end method

.method public streamAllocation(Lcom/taptap/sdk/okhttp3/Call;)Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;
    .locals 0

    .line 188
    check-cast p1, Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/RealCall;->streamAllocation()Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object p1

    return-object p1
.end method

.method public timeoutExit(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 192
    check-cast p1, Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method
