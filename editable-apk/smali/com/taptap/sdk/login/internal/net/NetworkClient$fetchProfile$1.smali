.class final Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/login/internal/net/NetworkClient;->fetchProfile(Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;)V
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
    value = "SMAP\nNetworkClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1\n+ 2 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,153:1\n13#2,7:154\n*S KotlinDebug\n*F\n+ 1 NetworkClient.kt\ncom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1\n*L\n95#1:154,7\n*E\n"
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
    c = "com.taptap.sdk.login.internal.net.NetworkClient$fetchProfile$1"
    f = "NetworkClient.kt"
    i = {}
    l = {
        0x60
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $accessToken:Lcom/taptap/sdk/login/AccessToken;

.field final synthetic $callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
            "Lcom/taptap/sdk/login/internal/bean/Profile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $path:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/login/internal/net/NetworkClient;",
            "Ljava/lang/String;",
            "Lcom/taptap/sdk/login/AccessToken;",
            "Lcom/taptap/sdk/login/internal/net/HttpCallback<",
            "Lcom/taptap/sdk/login/internal/bean/Profile;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    iput-object p2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$accessToken:Lcom/taptap/sdk/login/AccessToken;

    iput-object p4, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

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

    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;

    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    iget-object v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$accessToken:Lcom/taptap/sdk/login/AccessToken;

    iget-object v4, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;-><init>(Lcom/taptap/sdk/login/internal/net/NetworkClient;Ljava/lang/String;Lcom/taptap/sdk/login/AccessToken;Lcom/taptap/sdk/login/internal/net/HttpCallback;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 77
    iget v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 78
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 79
    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->access$getOpenAPIDomain(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 81
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$path:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 82
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->access$getClientId$p(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "client_id"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Builder()\n              \u2026      .build().toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->this$0:Lcom/taptap/sdk/login/internal/net/NetworkClient;

    invoke-static {v1}, Lcom/taptap/sdk/login/internal/net/NetworkClient;->access$getOpenAPIHttp(Lcom/taptap/sdk/login/internal/net/NetworkClient;)Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 87
    sget-object v1, Lcom/taptap/sdk/login/internal/util/CodeUtil;->INSTANCE:Lcom/taptap/sdk/login/internal/util/CodeUtil;

    .line 90
    iget-object v4, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$accessToken:Lcom/taptap/sdk/login/AccessToken;

    invoke-virtual {v4}, Lcom/taptap/sdk/login/AccessToken;->getKid()Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$accessToken:Lcom/taptap/sdk/login/AccessToken;

    invoke-virtual {v5}, Lcom/taptap/sdk/login/AccessToken;->getMacKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GET"

    .line 87
    invoke-virtual {v1, p1, v6, v4, v5}, Lcom/taptap/sdk/login/internal/util/CodeUtil;->getAuthorization(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    move-object v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "Authorization"

    .line 85
    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addHeader$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    .line 94
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    .line 154
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 156
    new-instance v3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v4, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$invokeSuspend$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$invokeSuspend$$inlined$toCall$1;

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

    .line 96
    new-instance p1, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;

    iget-object v3, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

    invoke-direct {p1, v3}, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1$1;-><init>(Lcom/taptap/sdk/login/internal/net/HttpCallback;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->label:I

    invoke-static {v1, p1, v3}, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt;->enqueueResult(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 99
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/login/internal/net/NetworkClient$fetchProfile$1;->$callback:Lcom/taptap/sdk/login/internal/net/HttpCallback;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "TapHttp"

    .line 100
    invoke-static {v1, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    new-instance p1, Lcom/taptap/sdk/kit/internal/exception/TapTapException;

    const-string v1, "Fail to fetch profile"

    invoke-direct {p1, v1}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/login/internal/net/HttpCallback;->onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V

    .line 103
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
