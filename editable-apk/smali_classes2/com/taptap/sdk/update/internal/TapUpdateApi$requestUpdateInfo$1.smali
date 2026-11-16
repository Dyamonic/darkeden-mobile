.class final Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TapUpdateApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/internal/TapUpdateApi;->requestUpdateInfo(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapUpdateApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapUpdateApi.kt\ncom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1\n+ 2 TapUpdateApi.kt\ncom/taptap/sdk/update/internal/TapUpdateApi\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,127:1\n100#2,2:128\n102#2,5:132\n107#2:144\n559#3:130\n1#4:131\n13#5,7:137\n*S KotlinDebug\n*F\n+ 1 TapUpdateApi.kt\ncom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1\n*L\n69#1:128,2\n69#1:132,5\n69#1:144\n69#1:130\n69#1:131\n69#1:137,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.taptap.sdk.update.internal.TapUpdateApi$requestUpdateInfo$1"
    f = "TapUpdateApi.kt"
    i = {}
    l = {
        0x3e,
        0x90,
        0x4e,
        0x59
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $versionCode:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/taptap/sdk/update/TapUpdateApiCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$packageName:Ljava/lang/String;

    iput p2, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$versionCode:I

    iput-object p3, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;

    iget-object v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$versionCode:I

    iget-object v3, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;-><init>(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    :cond_3
    move-object v1, p1

    goto/16 :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApi;->access$getCachedUpdateInfo$p()Lcom/taptap/sdk/update/bean/UpdateResult;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 62
    new-instance p1, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$1;

    iget-object v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

    invoke-direct {p1, v1, v6}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$1;-><init>(Lcom/taptap/sdk/update/TapUpdateApiCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->label:I

    invoke-static {p1, v1}, Lcom/taptap/sdk/update/extension/SystemExtKt;->dispatchMain(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 66
    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 69
    :cond_7
    sget-object p1, Lcom/taptap/sdk/update/internal/TapUpdateApi;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi;

    new-array p1, v3, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 72
    iget-object v7, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$packageName:Ljava/lang/String;

    const-string v8, "identifier"

    invoke-static {v8, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, p1, v1

    .line 73
    iget v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v7, "taptap_version_code"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v5

    .line 74
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-virtual {v1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v7, "update_id"

    invoke-static {v7, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v4

    .line 71
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    const-string v7, "/app/v1/get-uri-by-identifier"

    invoke-virtual {v1, v7}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object v1

    .line 130
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 132
    move-object v8, v1

    check-cast v8, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    goto :goto_1

    .line 135
    :cond_8
    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 137
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 139
    new-instance v7, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v8, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-direct {v7, v6, v8, v5, v6}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v7, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 142
    new-instance v5, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v5, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 137
    invoke-direct {p1, v1, v7, v5}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 143
    move-object v8, p1

    check-cast v8, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v9, 0x0

    .line 144
    move-object v11, p0

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v12, 0x1

    const/4 v13, 0x0

    iput v4, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->label:I

    invoke-static/range {v8 .. v13}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 77
    :goto_2
    iget-object p1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v1

    check-cast v4, Lcom/taptap/sdk/update/bean/UpdateResult;

    .line 78
    new-instance v5, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$2$1;

    invoke-direct {v5, v4, p1, v6}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$2$1;-><init>(Lcom/taptap/sdk/update/bean/UpdateResult;Lcom/taptap/sdk/update/TapUpdateApiCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->label:I

    invoke-static {v5, p0}, Lcom/taptap/sdk/update/extension/SystemExtKt;->dispatchMain(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 88
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->$callback:Lcom/taptap/sdk/update/TapUpdateApiCallback;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 89
    new-instance v4, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$3$1;

    invoke-direct {v4, p1, v3, v6}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$3$1;-><init>(Lcom/taptap/sdk/update/TapUpdateApiCallback;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iput-object v1, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->label:I

    invoke-static {v4, p0}, Lcom/taptap/sdk/update/extension/SystemExtKt;->dispatchMain(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 94
    :cond_a
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
