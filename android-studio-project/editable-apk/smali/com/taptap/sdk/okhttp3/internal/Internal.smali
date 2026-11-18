.class public abstract Lcom/taptap/sdk/okhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/taptap/sdk/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 44
    new-instance v0, Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/taptap/sdk/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/taptap/sdk/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/taptap/sdk/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lcom/taptap/sdk/okhttp3/Response$Builder;)I
.end method

.method public abstract connectionBecameIdle(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)Z
.end method

.method public abstract deduplicate(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;
.end method

.method public abstract equalsNonHost(Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/Address;)Z
.end method

.method public abstract get(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/Address;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;Lcom/taptap/sdk/okhttp3/Route;)Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;
.end method

.method public abstract isInvalidHttpUrlHost(Ljava/lang/IllegalArgumentException;)Z
.end method

.method public abstract newWebSocketCall(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Call;
.end method

.method public abstract put(Lcom/taptap/sdk/okhttp3/ConnectionPool;Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;)V
.end method

.method public abstract routeDatabase(Lcom/taptap/sdk/okhttp3/ConnectionPool;)Lcom/taptap/sdk/okhttp3/internal/connection/RouteDatabase;
.end method

.method public abstract setCache(Lcom/taptap/sdk/okhttp3/OkHttpClient$Builder;Lcom/taptap/sdk/okhttp3/internal/cache/InternalCache;)V
.end method

.method public abstract streamAllocation(Lcom/taptap/sdk/okhttp3/Call;)Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;
.end method

.method public abstract timeoutExit(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .param p2    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
