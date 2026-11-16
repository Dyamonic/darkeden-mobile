.class public final Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;
.super Ljava/lang/Object;
.source "NoticeUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/wrapper/NoticeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoticeUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoticeUtils.kt\ncom/taptap/sdk/moment/wrapper/NoticeUtils$Companion\n+ 2 TapMomentApi.kt\ncom/taptap/sdk/moment/TapMomentApi\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt\n*L\n1#1,67:1\n29#2,9:68\n38#2,2:78\n41#2,5:81\n46#2:93\n32#3:77\n33#3:80\n13#4,7:86\n*S KotlinDebug\n*F\n+ 1 NoticeUtils.kt\ncom/taptap/sdk/moment/wrapper/NoticeUtils$Companion\n*L\n34#1:68,9\n34#1:78,2\n34#1:81,5\n34#1:93\n34#1:77\n34#1:80\n34#1:86,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0002J*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;",
        "",
        "()V",
        "encodeXua",
        "",
        "getNoticeInfo",
        "Lkotlin/Result;",
        "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;",
        "clientId",
        "getNoticeInfo-gIAlu-s",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;-><init>()V

    return-void
.end method

.method private final encodeXua()Ljava/lang/String;
    .locals 4

    .line 47
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getRegionType()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itkMoments"

    goto :goto_0

    :cond_0
    const-string v0, "itkMomentsIntl"

    .line 56
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V=1&PN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&VN_CODE=405040000"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&VN=4.5.4"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&LANG="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&LOC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "UTF-8"

    .line 55
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getNoticeInfo-gIAlu-s(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;

    iget v1, v0, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;-><init>(Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, v4, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&X-UA="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion;->encodeXua()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, ""

    .line 36
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "client_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 71
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 74
    sget-object v1, Lcom/taptap/sdk/moment/TapMomentApi;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentApi;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/TapMomentApi;->getNetApi()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    const-string v3, "/feed/v1/reminder-with-user"

    invoke-virtual {v1, v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->get(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;

    move-result-object v1

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 77
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    .line 78
    move-object v6, v1

    check-cast v6, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 77
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    .line 82
    move-object v5, v1

    check-cast v5, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addHeader$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    goto :goto_3

    .line 85
    :cond_4
    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 86
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    .line 88
    new-instance p2, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;

    sget-object v3, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo-gIAlu-s$$inlined$get-BWLJW6A$default$1;->INSTANCE:Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo-gIAlu-s$$inlined$get-BWLJW6A$default$1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {p2, v5, v3, v2, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;

    .line 91
    new-instance v3, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$SdkDefault;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    check-cast v3, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;

    .line 86
    invoke-direct {p1, v1, p2, v3}, Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;-><init>(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;)V

    .line 92
    move-object v1, p1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;

    const-wide/16 p1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    iput v2, v4, Lcom/taptap/sdk/moment/wrapper/NoticeUtils$Companion$getNoticeInfo$1;->label:I

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall$DefaultImpls;->enqueueResult-gIAlu-s$default(Lcom/taptap/sdk/kit/internal/http/call/ITapHttpCall;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    return-object p1
.end method
