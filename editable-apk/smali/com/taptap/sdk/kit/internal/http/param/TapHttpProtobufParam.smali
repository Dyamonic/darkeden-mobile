.class public final Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;
.super Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
.source "TapHttpProtobufParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpProtobufParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpProtobufParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,48:1\n32#2,2:49\n*S KotlinDebug\n*F\n+ 1 TapHttpProtobufParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam\n*L\n37#1:49,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\r\u0010\u000c\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u000eJ\r\u0010\u000f\u001a\u00020\u0008H\u0010\u00a2\u0006\u0002\u0008\u0010J\r\u0010\u0011\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u0012R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "http",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "url",
        "",
        "protobufByteArray",
        "Lkotlin/Function0;",
        "",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "getProtobufByteArray",
        "()Lkotlin/jvm/functions/Function0;",
        "buildRequest",
        "Lcom/taptap/sdk/okhttp3/Request;",
        "buildRequest$tap_kit_release",
        "getContentByteArray",
        "getContentByteArray$tap_kit_release",
        "getTechnicalLogParam",
        "getTechnicalLogParam$tap_kit_release",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final protobufByteArray:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protobufByteArray"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->protobufByteArray:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;
    .locals 12

    .line 19
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getHeaderParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleName$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->getHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 21
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->buildUrlString()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getContentByteArray$tap_kit_release()[B

    move-result-object v5

    .line 24
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;->handle([B)[B

    move-result-object v9

    .line 25
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v10

    new-instance v11, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;

    .line 27
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getEnableAuthorization$tap_kit_release()Z

    move-result v4

    move-object v1, v11

    move-object v2, v8

    move-object v6, v9

    move-object v7, v0

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;-><init>(Ljava/lang/String;Ljava/lang/String;Z[B[BLjava/util/Map;)V

    invoke-interface {v10, v11}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->handle(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;)V

    const-string v1, "application/x-protobuf"

    .line 33
    invoke-static {v1}, Lcom/taptap/sdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/taptap/sdk/okhttp3/Request$Builder;-><init>()V

    .line 35
    invoke-virtual {v2, v8}, Lcom/taptap/sdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v2

    .line 37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/taptap/sdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v1, v9}, Lcom/taptap/sdk/okhttp3/RequestBody;->create(Lcom/taptap/sdk/okhttp3/MediaType;[B)Lcom/taptap/sdk/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->post(Lcom/taptap/sdk/okhttp3/RequestBody;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->build()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v0

    const-string v1, "Builder()\n            .u\u2026nt))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentByteArray$tap_kit_release()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->protobufByteArray:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final getProtobufByteArray()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "[B>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpProtobufParam;->protobufByteArray:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getTechnicalLogParam$tap_kit_release()Ljava/lang/String;
    .locals 1

    const-string v0, "ProtobufData()"

    return-object v0
.end method
