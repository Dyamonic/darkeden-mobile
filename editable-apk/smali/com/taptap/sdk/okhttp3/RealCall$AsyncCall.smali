.class final Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;
.super Lcom/taptap/sdk/okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

.field final synthetic this$0:Lcom/taptap/sdk/okhttp3/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    const-class v0, Lcom/taptap/sdk/okhttp3/RealCall;

    return-void
.end method

.method constructor <init>(Lcom/taptap/sdk/okhttp3/RealCall;Lcom/taptap/sdk/okhttp3/Callback;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iput-object p2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->timeout:Lcom/taptap/sdk/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/taptap/sdk/okio/AsyncTimeout;->enter()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {v2}, Lcom/taptap/sdk/okhttp3/RealCall;->getResponseWithInterceptorChain()Lcom/taptap/sdk/okhttp3/Response;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v3, v3, Lcom/taptap/sdk/okhttp3/RealCall;->retryAndFollowUpInterceptor:Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lcom/taptap/sdk/okhttp3/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 203
    :try_start_1
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/taptap/sdk/okhttp3/Callback;->onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

    iget-object v3, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-interface {v1, v3, v2}, Lcom/taptap/sdk/okhttp3/Callback;->onResponse(Lcom/taptap/sdk/okhttp3/Call;Lcom/taptap/sdk/okhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v5, v1

    move-object v1, v0

    move v0, v5

    .line 209
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {v2, v1}, Lcom/taptap/sdk/okhttp3/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Lcom/taptap/sdk/okhttp3/internal/platform/Platform;->get()Lcom/taptap/sdk/okhttp3/internal/platform/Platform;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {v4}, Lcom/taptap/sdk/okhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/taptap/sdk/okhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-static {v0}, Lcom/taptap/sdk/okhttp3/RealCall;->access$000(Lcom/taptap/sdk/okhttp3/RealCall;)Lcom/taptap/sdk/okhttp3/EventListener;

    move-result-object v0

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/okhttp3/EventListener;->callFailed(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 215
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

    iget-object v2, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-interface {v0, v2, v1}, Lcom/taptap/sdk/okhttp3/Callback;->onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 218
    :goto_3
    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v1, v1, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;)V

    throw v0
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 182
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 185
    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-static {p1}, Lcom/taptap/sdk/okhttp3/RealCall;->access$000(Lcom/taptap/sdk/okhttp3/RealCall;)Lcom/taptap/sdk/okhttp3/EventListener;

    move-result-object p1

    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/okhttp3/EventListener;->callFailed(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V

    .line 188
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/taptap/sdk/okhttp3/Callback;

    iget-object v1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    invoke-interface {p1, v1, v0}, Lcom/taptap/sdk/okhttp3/Callback;->onFailure(Lcom/taptap/sdk/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object p1, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object p1, p1, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;)V

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->client:Lcom/taptap/sdk/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/OkHttpClient;->dispatcher()Lcom/taptap/sdk/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/okhttp3/Dispatcher;->finished(Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;)V

    throw p1
.end method

.method get()Lcom/taptap/sdk/okhttp3/RealCall;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request;->url()Lcom/taptap/sdk/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/taptap/sdk/okhttp3/Request;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/taptap/sdk/okhttp3/RealCall$AsyncCall;->this$0:Lcom/taptap/sdk/okhttp3/RealCall;

    iget-object v0, v0, Lcom/taptap/sdk/okhttp3/RealCall;->originalRequest:Lcom/taptap/sdk/okhttp3/Request;

    return-object v0
.end method
