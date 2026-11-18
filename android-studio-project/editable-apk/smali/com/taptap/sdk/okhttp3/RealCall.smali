.class final Lcom/taptap/sdk/okhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lcom/taptap/sdk/okhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

.field private eventListener:Lcom/taptap/sdk/okhttp3/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lcom/taptap/sdk/okhttp3/Request;

.field final retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lcom/taptap/sdk/okio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    .line 60
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    .line 61
    iput-boolean p3, p0, Lcom/taptap/sdk/okhttp3/RealCall;->forWebSocket:Z

    .line 62
    new-instance p2, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {p2, p1, p3}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lcom/taptap/sdk/okhttp3/OkHttpClient;Z)V

    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    .line 63
    new-instance p2, Lcom/taptap/sdk/okhttp3/RealCall$1;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/okhttp3/RealCall$1;-><init>(Lcom/taptap/sdk/okhttp3/RealCall;)V

    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->timeout:Lcom/taptap/sdk/okio/AsyncTimeout;

    .line 68
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lcom/taptap/sdk/okio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/taptap/sdk/okio/Timeout;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/okhttp3/RealCall;)Lcom/taptap/sdk/okhttp3/EventListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    return-object p0
.end method

.method private captureCallStackTrace()V
    .locals 2

    .line 115
    invoke-static {}, Lcom/taptap/sdk/okhttp3/internal/platform/Platform;->get()Lcom/taptap/sdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/okhttp3/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    return-void
.end method

.method static newRealCall(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)Lcom/taptap/sdk/okhttp3/RealCall;
    .locals 1

    .line 73
    new-instance v0, Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lcom/taptap/sdk/okhttp3/RealCall;-><init>(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->eventListenerFactory()Lcom/taptap/sdk/okhttp3/EventListener$Factory;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/taptap/sdk/okhttp3/EventListener$Factory;->create(Lcom/taptap/sdk/okhttp3/Call;)Lcom/taptap/sdk/okhttp3/EventListener;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/taptap/sdk/okhttp3/Call;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->clone()Lcom/taptap/sdk/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/taptap/sdk/okhttp3/RealCall;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    iget-boolean v2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lcom/taptap/sdk/okhttp3/RealCall;->newRealCall(Lcom/taptap/sdk/okhttp3/OkHttpClient;Lcom/taptap/sdk/okhttp3/Request;Z)Lcom/taptap/sdk/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->clone()Lcom/taptap/sdk/okhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lcom/taptap/sdk/okhttp3/Callback;)V
    .locals 2

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->executed:Z

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->captureCallStackTrace()V

    .line 125
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/okhttp3/EventListener;->callStart(Lcom/taptap/sdk/okhttp3/Call;)V

    .line 126
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;-><init>(Lcom/taptap/sdk/okhttp3/RealCall;Lcom/taptap/sdk/okhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/okhttp3/Dispatcher;->enqueue(Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;)V

    return-void

    .line 121
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute()Lcom/taptap/sdk/okhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->executed:Z

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    invoke-direct {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->captureCallStackTrace()V

    .line 88
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->timeout:Lcom/taptap/sdk/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/taptap/sdk/okio/AsyncTimeout;->enter()V

    .line 89
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/okhttp3/EventListener;->callStart(Lcom/taptap/sdk/okhttp3/Call;)V

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->executed(Lcom/taptap/sdk/okhttp3/RealCall;)V

    .line 92
    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->getResponseWithInterceptorChain()Lcom/taptap/sdk/okhttp3/Response;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall;)V

    return-object v0

    .line 93
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    invoke-virtual {v1, p0, v0}, Lcom/taptap/sdk/okhttp3/EventListener;->callFailed(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 98
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall;)V

    throw v0

    .line 84
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 86
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lcom/taptap/sdk/okhttp3/Response;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->cookieJar()Lcom/taptap/sdk/okhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/taptap/sdk/okhttp3/internal/http/BridgeInterceptor;-><init>(Lcom/taptap/sdk/okhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->internalCache()Lcom/taptap/sdk/okhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/taptap/sdk/okhttp3/internal/cache/CacheInterceptor;-><init>(Lcom/taptap/sdk/okhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lcom/taptap/sdk/okhttp3/internal/connection/ConnectInterceptor;-><init>(Lcom/taptap/sdk/okhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :cond_0
    new-instance v0, Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lcom/taptap/sdk/okhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lcom/taptap/sdk/okhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v12, Lcom/taptap/sdk/okhttp3/internal/http/RealInterceptorChain;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    iget-object v8, p0, Lcom/taptap/sdk/okhttp3/RealCall;->eventListener:Lcom/taptap/sdk/okhttp3/EventListener;

    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    .line 251
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v9

    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    .line 252
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v10

    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v11

    move-object v0, v12

    move-object v7, p0

    invoke-direct/range {v0 .. v11}, Lcom/taptap/sdk/okhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;Lcom/taptap/sdk/okhttp3/internal/http/HttpCodec;Lcom/taptap/sdk/okhttp3/internal/connection/RealConnection;ILcom/taptap/sdk/okhttp3/Request;Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/EventListener;III)V

    .line 254
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    invoke-interface {v12, v0}, Lcom/taptap/sdk/okhttp3/Interceptor$Chain;->proceed(Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lcom/taptap/sdk/okhttp3/Request;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    return-object v0
.end method

.method streamAllocation()Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lcom/taptap/sdk/okhttp3/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lcom/taptap/sdk/okio/Timeout;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->timeout:Lcom/taptap/sdk/okio/AsyncTimeout;

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall;->timeout:Lcom/taptap/sdk/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/taptap/sdk/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 107
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-boolean v1, p0, Lcom/taptap/sdk/okhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p0}, Lcom/taptap/sdk/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
