.class final Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final callbackExecutor:Ljava/util/concurrent/Executor;

.field final delegate:Lcom/taptap/sdk/retrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/taptap/sdk/retrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->cancel()V

    return-void
.end method

.method public clone()Lcom/taptap/sdk/retrofit2/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TT;>;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v2}, Lcom/taptap/sdk/retrofit2/Call;->clone()Lcom/taptap/sdk/retrofit2/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lcom/taptap/sdk/retrofit2/Call;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->clone()Lcom/taptap/sdk/retrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lcom/taptap/sdk/retrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 76
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    new-instance v1, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    invoke-direct {v1, p0, p1}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;-><init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;Lcom/taptap/sdk/retrofit2/Callback;)V

    invoke-interface {v0, v1}, Lcom/taptap/sdk/retrofit2/Call;->enqueue(Lcom/taptap/sdk/retrofit2/Callback;)V

    return-void
.end method

.method public execute()Lcom/taptap/sdk/retrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/retrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->execute()Lcom/taptap/sdk/retrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->isExecuted()Z

    move-result v0

    return v0
.end method

.method public request()Lcom/taptap/sdk/okhttp3/Request;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->request()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lcom/taptap/sdk/okio/Timeout;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->timeout()Lcom/taptap/sdk/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
