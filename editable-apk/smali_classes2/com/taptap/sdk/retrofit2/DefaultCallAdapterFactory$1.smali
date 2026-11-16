.class Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lcom/taptap/sdk/retrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/taptap/sdk/retrofit2/Retrofit;)Lcom/taptap/sdk/retrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/CallAdapter<",
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/retrofit2/Call<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->this$0:Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory;

    iput-object p2, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adapt(Lcom/taptap/sdk/retrofit2/Call;)Lcom/taptap/sdk/retrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->val$executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;

    invoke-direct {v1, v0, p1}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lcom/taptap/sdk/retrofit2/Call;)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic adapt(Lcom/taptap/sdk/retrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->adapt(Lcom/taptap/sdk/retrofit2/Call;)Lcom/taptap/sdk/retrofit2/Call;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
