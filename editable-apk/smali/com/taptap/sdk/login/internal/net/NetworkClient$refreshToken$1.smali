.class final Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/net/NetworkClient;->refreshToken(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nNetworkClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1\n+ 2 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,153:1\n13#2,7:154\n*S KotlinDebug\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1\n*L\n64#1:154,7\n*E\n"
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
    c = "com.taptap.sdk.login.internal.net.NetworkClient$refreshToken$1"
    f = "NetworkClient.kt"
    i = {}
    l = {
        0x41
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $onFail:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/internal/net/NetworkClient;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$params:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onFail:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$params:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onFail:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/util/HashMap;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 62
    iget-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-static {p1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->access$getTokenHttp(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p1

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$params:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    const-string v3, "/oauth2/v1/token"

    invoke-virtual {p1, v3, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postForm(Ljava/lang/String;Ljava/util/Map;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;

    move-result-object p1

    .line 63
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    .line 154
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 156
    new-instance v3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v4, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1$invokeSuspend$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1$invokeSuspend$$inlined$toCall$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 159
    new-instance v4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 154
    invoke-direct {v1, p1, v3, v4}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 65
    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1$1;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v3}, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->label:I

    invoke-static {v1, p1, v3}, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt;->enqueueResult(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 68
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$refreshToken$1;->$onFail:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 69
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
