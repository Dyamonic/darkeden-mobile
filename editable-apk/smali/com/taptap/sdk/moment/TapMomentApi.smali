.class public final Lcom/taptap/sdk/moment/TapMomentApi;
.super Ljava/lang/Object;
.source "TapMomentApi.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapMomentApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapMomentApi.kt\ncom/taptap/sdk/moment/TapMomentApi\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,73:1\n32#2,2:74\n32#2,2:76\n13#3,7:78\n*S KotlinDebug\n*F\n+ 1 TapMomentApi.kt\ncom/taptap/sdk/moment/TapMomentApi\n*L\n37#1:74,2\n41#1:76,2\n45#1:78,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\\\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\n\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000f2\u0014\u0008\u0002\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u000fH\u0087H\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\rR\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/TapMomentApi;",
        "",
        "()V",
        "netApi",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getNetApi",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "netApi$delegate",
        "Lkotlin/Lazy;",
        "get",
        "Lkotlin/Result;",
        "T",
        "path",
        "",
        "queryMap",
        "",
        "headerMap",
        "get-BWLJW6A",
        "(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getHost",
        "tap-moment_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi;

.field private static final netApi$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/moment/TapMomentApi;

    invoke-direct {v0}, Lcom/taptap/sdk/moment/TapMomentApi;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/TapMomentApi;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi;

    .line 15
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentApi$netApi$2;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi$netApi$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/moment/TapMomentApi;->netApi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic get-BWLJW6A(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 35
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentApi;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapMomentApi;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object p0

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 38
    move-object v2, p0

    check-cast v2, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 39
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 42
    move-object v1, p0

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addHeader$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 43
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 45
    :cond_1
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 78
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 80
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object v0, Lcom/taptap/sdk/moment/TapMomentApi$get-BWLJW6A$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi$get-BWLJW6A$$inlined$toCall$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v1, v0, v2, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 83
    new-instance v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 78
    invoke-direct {p1, p0, p2, v0}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 84
    move-object v3, p1

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 p0, 0x0

    .line 46
    invoke-static {p0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    move-object v6, p3

    invoke-static/range {v3 .. v8}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

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

.method public static synthetic get-BWLJW6A$default(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 32
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 35
    :cond_0
    sget-object p4, Lcom/taptap/sdk/moment/TapMomentApi;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi;

    invoke-virtual {p4}, Lcom/taptap/sdk/moment/TapMomentApi;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p4

    invoke-virtual {p4, p0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object p0

    .line 37
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Ljava/lang/String;

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 39
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addHeader$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 43
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 45
    :cond_2
    check-cast p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 78
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 80
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    sget-object p4, Lcom/taptap/sdk/moment/TapMomentApi$get-BWLJW6A$$inlined$toCall$1;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi$get-BWLJW6A$$inlined$toCall$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    const/4 p5, 0x0

    const/4 v0, 0x1

    invoke-direct {p2, p5, p4, v0, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 83
    new-instance p4, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast p4, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 78
    invoke-direct {p1, p0, p2, p4}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 84
    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 p0, 0x0

    .line 46
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


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getRegionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 56
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tapsdk.api.xdrnd.com"

    goto :goto_0

    :cond_0
    const-string v0, "tapsdk.tapapis.com"

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tapsdk.api.xdrnd.cn"

    goto :goto_0

    :cond_2
    const-string v0, "tapsdk.tapapis.cn"

    :goto_0
    return-object v0
.end method

.method public final getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 15
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentApi;->netApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method
