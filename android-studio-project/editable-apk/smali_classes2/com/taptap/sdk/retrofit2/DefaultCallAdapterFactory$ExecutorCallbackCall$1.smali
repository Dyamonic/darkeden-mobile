.class Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->enqueue(Lcom/taptap/sdk/retrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

.field final synthetic val$callback:Lcom/taptap/sdk/retrofit2/Callback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;Lcom/taptap/sdk/retrofit2/Callback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFailure$1$DefaultCallAdapterFactory$ExecutorCallbackCall$1(Lcom/taptap/sdk/retrofit2/Callback;Ljava/lang/Throwable;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    invoke-interface {p1, v0, p2}, Lcom/taptap/sdk/retrofit2/Callback;->onFailure(Lcom/taptap/sdk/retrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$onResponse$0$DefaultCallAdapterFactory$ExecutorCallbackCall$1(Lcom/taptap/sdk/retrofit2/Callback;Lcom/taptap/sdk/retrofit2/Response;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->delegate:Lcom/taptap/sdk/retrofit2/Call;

    invoke-interface {v0}, Lcom/taptap/sdk/retrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p2, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Lcom/taptap/sdk/retrofit2/Callback;->onFailure(Lcom/taptap/sdk/retrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    invoke-interface {p1, v0, p2}, Lcom/taptap/sdk/retrofit2/Callback;->onResponse(Lcom/taptap/sdk/retrofit2/Call;Lcom/taptap/sdk/retrofit2/Response;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lcom/taptap/sdk/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    new-instance v1, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;

    invoke-direct {v1, p0, v0, p2}, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;-><init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lcom/taptap/sdk/retrofit2/Callback;Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lcom/taptap/sdk/retrofit2/Call;Lcom/taptap/sdk/retrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TT;>;",
            "Lcom/taptap/sdk/retrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    iget-object p1, p1, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lcom/taptap/sdk/retrofit2/Callback;

    new-instance v1, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$ETt9rqc6wIIrXwFfMOX_FeIHNAQ;

    invoke-direct {v1, p0, v0, p2}, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$ETt9rqc6wIIrXwFfMOX_FeIHNAQ;-><init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lcom/taptap/sdk/retrofit2/Callback;Lcom/taptap/sdk/retrofit2/Response;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
