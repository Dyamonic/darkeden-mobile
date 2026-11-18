.class final Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TapTapGidInner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/gid/internal/TapTapGidInner;->startQueryGid(Lcom/taptap/sdk/gid/internal/bean/TapThemisData;)V
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
    value = "SMAP\nTapTapGidInner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapTapGidInner.kt\ncom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1\n+ 2 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,322:1\n13#2,7:323\n*S KotlinDebug\n*F\n+ 1 TapTapGidInner.kt\ncom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1\n*L\n208#1:323,7\n*E\n"
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
    c = "com.taptap.sdk.gid.internal.TapTapGidInner$startQueryGid$1"
    f = "TapTapGidInner.kt"
    i = {}
    l = {
        0xd1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $params:Lorg/json/JSONObject;

.field label:I


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->$params:Lorg/json/JSONObject;

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

    new-instance p1, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;

    iget-object v0, p0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->$params:Lorg/json/JSONObject;

    invoke-direct {p1, v0, p2}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;-><init>(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 204
    iget v1, p0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->label:I

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

    .line 205
    sget-object p1, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {p1}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getTapHttp(Lcom/taptap/sdk/gid/internal/TapTapGidInner;)Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p1

    const-string v1, "device/v1/query"

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 206
    iget-object v1, p0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->$params:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 207
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;-><init>()V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    invoke-virtual {p1, v1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    .line 323
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 325
    new-instance v3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v4, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1$invokeSuspend$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1$invokeSuspend$$inlined$toCall$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v2, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 328
    new-instance v4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 323
    invoke-direct {v1, p1, v3, v4}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    const-wide/16 v3, 0x258

    .line 209
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/taptap/sdk/gid/internal/TapTapGidInner$startQueryGid$1;->label:I

    invoke-virtual {v1, v3, v4, p1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;->enqueueResult-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 210
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TapTapGid"

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/gid/internal/bean/TapGid;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryGid onSuccess, response = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getStartTime$p()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v1, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/taptap/sdk/gid/internal/bean/TapGid;->getId()Ljava/lang/String;

    move-result-object v3

    .line 216
    sget-object v6, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;

    const/4 v7, 0x2

    new-array v8, v7, [Lkotlin/Pair;

    .line 218
    invoke-virtual {v0}, Lcom/taptap/sdk/gid/internal/bean/TapGid;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "data"

    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const-string v0, "id"

    .line 219
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v8, v2

    .line 217
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v8, "http_successful"

    .line 216
    invoke-virtual {v6, v8, v0}, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 222
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v9

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 223
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-virtual {v0, v3}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->setCurrentGid$tap_gid_release(Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapGidStorage;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapGidStorage;

    invoke-static {}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getRegionType$p()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/taptap/sdk/gid/internal/TapGidStorage;->saveGidToSp(ILjava/lang/String;)V

    .line 225
    sget-object v0, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->INSTANCE:Lcom/taptap/sdk/gid/internal/TapTapGidInner;

    invoke-static {v0, v7, v3}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$notifyUpdateCallbacks(Lcom/taptap/sdk/gid/internal/TapTapGidInner;ILjava/lang/String;)V

    .line 229
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryGid onSuccess, newGid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/taptap/sdk/gid/internal/TapTapGidInner;->access$getStartTime$p()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryGid onError, responseError = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;

    .line 236
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "throwable"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "http_failure"

    .line 234
    invoke-virtual {v0, v1, p1}, Lcom/taptap/sdk/gid/internal/util/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
