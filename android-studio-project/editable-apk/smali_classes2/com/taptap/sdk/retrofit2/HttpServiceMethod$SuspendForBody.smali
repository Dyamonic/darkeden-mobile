.class final Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;
.super Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuspendForBody"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/taptap/sdk/retrofit2/HttpServiceMethod<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/retrofit2/CallAdapter<",
            "TResponseT;",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field

.field private final isNullable:Z

.field private final isUnit:Z


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;Lcom/taptap/sdk/retrofit2/CallAdapter;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/RequestFactory;",
            "Lcom/taptap/sdk/okhttp3/Call$Factory;",
            "Lcom/taptap/sdk/retrofit2/Converter<",
            "Lcom/taptap/sdk/okhttp3/ResponseBody;",
            "TResponseT;>;",
            "Lcom/taptap/sdk/retrofit2/CallAdapter<",
            "TResponseT;",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TResponseT;>;>;ZZ)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/retrofit2/HttpServiceMethod;-><init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;)V

    .line 225
    iput-object p4, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

    .line 226
    iput-boolean p5, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    .line 227
    iput-boolean p6, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->isUnit:Z

    return-void
.end method


# virtual methods
.method protected adapt(Lcom/taptap/sdk/retrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/retrofit2/Call<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/retrofit2/CallAdapter;->adapt(Lcom/taptap/sdk/retrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/retrofit2/Call;

    .line 235
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->isUnit:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->awaitUnit(Lcom/taptap/sdk/retrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForBody;->isNullable:Z

    if-eqz v0, :cond_1

    .line 250
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->awaitNullable(Lcom/taptap/sdk/retrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 252
    :cond_1
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->await(Lcom/taptap/sdk/retrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 258
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 256
    :goto_0
    throw p1
.end method
