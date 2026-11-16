.class final Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TapReviewApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/review/internal/TapReviewApi;->fetchCrossAppCode(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapReviewApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapReviewApi.kt\ncom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1\n+ 2 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,45:1\n13#2,7:46\n*S KotlinDebug\n*F\n+ 1 TapReviewApi.kt\ncom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1\n*L\n34#1:46,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.taptap.sdk.review.internal.TapReviewApi$fetchCrossAppCode$1"
    f = "TapReviewApi.kt"
    i = {}
    l = {
        0x23
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

.field label:I


# direct methods
.method constructor <init>(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->$callback:Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;

    iget-object v0, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->$callback:Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

    invoke-direct {p1, v0, p2}, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;-><init>(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget v1, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->access$getReviewHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p1

    const-string v1, "/sdk-core/v1/cross-app-code"

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 33
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    .line 46
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 48
    new-instance v4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v5, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1$invokeSuspend$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1$invokeSuspend$$inlined$toCall$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v5, v3, v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 51
    new-instance v5, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v5, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 46
    invoke-direct {v1, p1, v4, v5}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 52
    move-object v6, v1

    check-cast v6, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v7, 0x0

    .line 35
    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    const/4 v10, 0x1

    const/4 v11, 0x0

    iput v3, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->label:I

    invoke-static/range {v6 .. v11}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 36
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->$callback:Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/review/internal/TapCrossAppCode;

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchCrossAppCode success: code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/taptap/sdk/review/internal/TapCrossAppCode;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taptap/sdk/review/internal/TapReviewLoggerKt;->logInfo(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v1}, Lcom/taptap/sdk/review/internal/TapCrossAppCode;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;->onCodeResult(Ljava/lang/String;)V

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;->$callback:Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "fetchCrossAppCode fail"

    .line 41
    invoke-static {v1, p1}, Lcom/taptap/sdk/review/internal/TapReviewLoggerKt;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_4

    .line 42
    invoke-interface {v0, v2}, Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;->onCodeResult(Ljava/lang/String;)V

    .line 44
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
