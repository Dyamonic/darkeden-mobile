.class Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$ResponseCallback;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Callback<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/taptap/sdk/retrofit2/Response<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/taptap/sdk/retrofit2/Response<",
            "TR;>;>;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$ResponseCallback;->this$0:Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$ResponseCallback;->future:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/taptap/sdk/retrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 136
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$ResponseCallback;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onResponse(Lcom/taptap/sdk/retrofit2/Call;Lcom/taptap/sdk/retrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TR;>;",
            "Lcom/taptap/sdk/retrofit2/Response<",
            "TR;>;)V"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/taptap/sdk/retrofit2/CompletableFutureCallAdapterFactory$ResponseCallAdapter$ResponseCallback;->future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
