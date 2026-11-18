.class public final synthetic Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

.field public final synthetic f$1:Lcom/taptap/sdk/retrofit2/Callback;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;Lcom/taptap/sdk/retrofit2/Callback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$1:Lcom/taptap/sdk/retrofit2/Callback;

    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$1:Lcom/taptap/sdk/retrofit2/Callback;

    iget-object v2, p0, Lcom/taptap/sdk/retrofit2/-$$Lambda$DefaultCallAdapterFactory$ExecutorCallbackCall$1$m7Fq0gMj8KZnaugCNlsvmcaX-sk;->f$2:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall$1;->lambda$onFailure$1$DefaultCallAdapterFactory$ExecutorCallbackCall$1(Lcom/taptap/sdk/retrofit2/Callback;Ljava/lang/Throwable;)V

    return-void
.end method
