.class public final Lcom/taptap/sdk/update/internal/TapUpdateApi;
.super Ljava/lang/Object;
.source "TapUpdateApi.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapUpdateApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapUpdateApi.kt\ncom/taptap/sdk/update/internal/TapUpdateApi\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,127:1\n559#2:128\n559#2:137\n1#3:129\n1#3:138\n13#4,7:130\n13#4,7:139\n*S KotlinDebug\n*F\n+ 1 TapUpdateApi.kt\ncom/taptap/sdk/update/internal/TapUpdateApi\n*L\n101#1:128\n116#1:137\n101#1:129\n116#1:138\n106#1:130,7\n124#1:139,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JH\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0006\u0008\u0000\u0010\u0007\u0018\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000bH\u0086H\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJT\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0006\u0008\u0000\u0010\u0007\u0018\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\tH\u0086H\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/taptap/sdk/update/internal/TapUpdateApi;",
        "",
        "()V",
        "cachedUpdateInfo",
        "Lcom/taptap/sdk/update/bean/UpdateResult;",
        "get",
        "Lkotlin/Result;",
        "T",
        "path",
        "",
        "queryMap",
        "",
        "get-0E7RQCE",
        "(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "post",
        "body",
        "post-BWLJW6A",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requestUpdateInfo",
        "Lkotlinx/coroutines/Job;",
        "packageName",
        "versionCode",
        "",
        "callback",
        "Lcom/taptap/sdk/update/TapUpdateApiCallback;",
        "tap-update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi;

.field private static cachedUpdateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApi;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/TapUpdateApi;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApi;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCachedUpdateInfo$p()Lcom/taptap/sdk/update/bean/UpdateResult;
    .locals 1

    .line 53
    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApi;->cachedUpdateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    return-object v0
.end method

.method public static final synthetic access$setCachedUpdateInfo$p(Lcom/taptap/sdk/update/bean/UpdateResult;)V
    .locals 0

    .line 53
    sput-object p0, Lcom/taptap/sdk/update/internal/TapUpdateApi;->cachedUpdateInfo:Lcom/taptap/sdk/update/bean/UpdateResult;

    return-void
.end method

.method public static synthetic get-0E7RQCE$default(Lcom/taptap/sdk/update/internal/TapUpdateApi;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p0, p4, 0x2

    if-eqz p0, :cond_0

    .line 98
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object p2, p0

    check-cast p2, Ljava/util/Map;

    .line 100
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object p0

    .line 128
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    .line 102
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 103
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 105
    :cond_1
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 130
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 132
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p4, Lcom/taptap/sdk/update/internal/TapUpdateApi$get-0E7RQCE$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$get-0E7RQCE$$inlined$toCall$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    const/4 p5, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, p5, p4, v0, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 135
    new-instance p4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast p4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 130
    invoke-direct {p1, p0, p2, p4}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 136
    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 p0, 0x0

    .line 107
    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/16 p1, 0x8

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p0, Lkotlin/Result;

    invoke-virtual {p0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Object;

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic post-BWLJW6A$default(Lcom/taptap/sdk/update/internal/TapUpdateApi;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p0, p5, 0x2

    if-eqz p0, :cond_0

    .line 112
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object p2, p0

    check-cast p2, Ljava/util/Map;

    :cond_0
    and-int/lit8 p0, p5, 0x4

    const/4 p5, 0x0

    if-eqz p0, :cond_1

    move-object p3, p5

    .line 115
    :cond_1
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p0

    .line 137
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    .line 117
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    move-object v1, p6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 118
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 120
    check-cast p3, Ljava/lang/String;

    .line 121
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 120
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    .line 124
    :cond_3
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 139
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 141
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p3, Lcom/taptap/sdk/update/internal/TapUpdateApi$post-BWLJW6A$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$post-BWLJW6A$$inlined$toCall$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    const/4 p6, 0x1

    invoke-direct {p2, p5, p3, p6, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 144
    new-instance p3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object p5

    invoke-direct {p3, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast p3, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 139
    invoke-direct {p1, p0, p2, p3}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 145
    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 p0, 0x0

    .line 125
    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p6}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/16 p1, 0x8

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p0, Lkotlin/Result;

    invoke-virtual {p0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Object;

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic requestUpdateInfo$default(Lcom/taptap/sdk/update/internal/TapUpdateApi;Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, -0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/update/internal/TapUpdateApi;->requestUpdateInfo(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic get-0E7RQCE(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object p1

    .line 128
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 103
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 105
    :cond_0
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 130
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 132
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v1, Lcom/taptap/sdk/update/internal/TapUpdateApi$get-0E7RQCE$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$get-0E7RQCE$$inlined$toCall$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 135
    new-instance v1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 130
    invoke-direct {p2, p1, v0, v1}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 136
    move-object v4, p2

    check-cast v4, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v7, p3

    invoke-static/range {v4 .. v9}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/16 p2, 0x8

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    const/16 p2, 0x9

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic post-BWLJW6A(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p1

    .line 137
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    check-cast v0, Ljava/util/Map$Entry;

    .line 117
    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 120
    check-cast p3, Ljava/lang/String;

    .line 121
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object p2

    .line 120
    check-cast p2, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    .line 124
    :cond_1
    check-cast p1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 139
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 141
    new-instance p3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApi$post-BWLJW6A$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$post-BWLJW6A$$inlined$toCall$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p3, v1, v0, v2, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 144
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 139
    invoke-direct {p2, p1, p3, v0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 145
    move-object v3, p2

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 p1, 0x0

    .line 125
    invoke-static {p1}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v6, p4

    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    const/16 p2, 0x8

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Object;

    const/16 p2, 0x9

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    check-cast p1, Ljava/lang/Object;

    return-object p1
.end method

.method public final requestUpdateInfo(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;)Lkotlinx/coroutines/Job;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;-><init>(Ljava/lang/String;ILcom/taptap/sdk/update/TapUpdateApiCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lcom/taptap/sdk/update/extension/SystemExtKt;->runAsync(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
