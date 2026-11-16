.class final Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TapGatekeeperManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->queryGatekeeper(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
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
    value = "SMAP\nTapGatekeeperManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapGatekeeperManager.kt\ncom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1\n+ 2 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,167:1\n13#2,7:168\n*S KotlinDebug\n*F\n+ 1 TapGatekeeperManager.kt\ncom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1\n*L\n119#1:168,7\n*E\n"
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
    c = "com.taptap.sdk.initializer.gate.TapGatekeeperManager$queryGatekeeper$1"
    f = "TapGatekeeperManager.kt"
    i = {}
    l = {
        0x78
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $params:Lorg/json/JSONObject;

.field final synthetic $runnable:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$params:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$runnable:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;

    iget-object v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$params:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$runnable:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 115
    iget v1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->label:I

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

    .line 116
    sget-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-static {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->access$getTapHttp(Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;)Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p1

    const-string v1, "sdk-core/v1/gatekeeper"

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 117
    iget-object v1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$params:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 118
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    .line 168
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 170
    new-instance v4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v5, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1$invokeSuspend$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1$invokeSuspend$$inlined$toCall$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v2, v5, v3, v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 173
    new-instance v5, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v5, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 168
    invoke-direct {v1, p1, v4, v5}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    const-wide/16 v4, 0x258

    .line 120
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->label:I

    invoke-virtual {v1, v4, v5, p1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueResult-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 121
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$runnable:Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    .line 122
    sget-object v4, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-static {v3}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->access$setGatekeeperSuccess$p(Z)V

    .line 123
    sget-object v3, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v3, v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->setTapGatekeeper$tap_initializer_release(Lcom/taptap/sdk/initializer/gate/TapGatekeeper;)V

    .line 124
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-static {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->access$writeGatekeeperToCache(Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;)V

    .line 125
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->setGatekeeperError$tap_initializer_release(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshes the startup status of the module based on the server configuration\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-virtual {v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapTapSdk"

    .line 126
    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;->$runnable:Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 134
    instance-of v1, p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    if-eqz v1, :cond_4

    .line 135
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v1

    const-string v2, "invalid_client"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->access$setGatekeeperSuccess$p(Z)V

    .line 137
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-static {v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->access$writeGatekeeperToCache(Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;)V

    .line 138
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    new-instance v2, Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    .line 139
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;->getError()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getDescription()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-direct {v2, v3, p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt;->showGatekeeperError(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)Lkotlinx/coroutines/Job;

    .line 138
    invoke-virtual {v1, v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->setGatekeeperError$tap_initializer_release(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)V

    .line 145
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 150
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
