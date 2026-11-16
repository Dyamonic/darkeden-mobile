.class final Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForResponse;
.super Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/retrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SuspendForResponse"
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


# direct methods
.method constructor <init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;Lcom/taptap/sdk/retrofit2/CallAdapter;)V
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
            "TResponseT;>;>;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/retrofit2/HttpServiceMethod;-><init>(Lcom/taptap/sdk/retrofit2/RequestFactory;Lcom/taptap/sdk/okhttp3/Call$Factory;Lcom/taptap/sdk/retrofit2/Converter;)V

    .line 192
    iput-object p4, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForResponse;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

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

    .line 197
    iget-object v0, p0, Lcom/taptap/sdk/retrofit2/HttpServiceMethod$SuspendForResponse;->callAdapter:Lcom/taptap/sdk/retrofit2/CallAdapter;

    invoke-interface {v0, p1}, Lcom/taptap/sdk/retrofit2/CallAdapter;->adapt(Lcom/taptap/sdk/retrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/retrofit2/Call;

    .line 200
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-object p2, p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 205
    :try_start_0
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->awaitResponse(Lcom/taptap/sdk/retrofit2/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 207
    invoke-static {p1, p2}, Lcom/taptap/sdk/retrofit2/KotlinExtensions;->suspendAndThrow(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
