.class public final Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;
.super Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
.source "TapHttpJsonParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpJsonParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpJsonParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,61:1\n32#2,2:62\n*S KotlinDebug\n*F\n+ 1 TapHttpJsonParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam\n*L\n50#1:62,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\nJ\r\u0010\u000b\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u0008\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\r\u0010\u0011\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u0012R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "http",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "url",
        "",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V",
        "body",
        "",
        "addBody",
        "Lorg/json/JSONObject;",
        "buildRequest",
        "Lcom/taptap/sdk/okhttp3/Request;",
        "buildRequest$tap_kit_release",
        "getContentByteArray",
        "",
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
.field private body:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V
    .locals 1

    const-string v0, "http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 14
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->body:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    .line 19
    iput-object p1, v0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;
    .locals 12

    .line 31
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getHeaderParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleName$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->getHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 34
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->buildUrlString()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getContentByteArray$tap_kit_release()[B

    move-result-object v5

    .line 36
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;->handle([B)[B

    move-result-object v9

    .line 37
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v10

    .line 38
    new-instance v11, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;

    .line 40
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getEnableAuthorization$tap_kit_release()Z

    move-result v4

    move-object v1, v11

    move-object v2, v8

    move-object v6, v9

    move-object v7, v0

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;-><init>(Ljava/lang/String;Ljava/lang/String;Z[B[BLjava/util/Map;)V

    .line 37
    invoke-interface {v10, v11}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->handle(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;)V

    const-string v1, "application/json"

    .line 46
    invoke-static {v1}, Lcom/taptap/sdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/taptap/sdk/okhttp3/Request$Builder;-><init>()V

    .line 48
    invoke-virtual {v2, v8}, Lcom/taptap/sdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v2

    .line 50
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/taptap/sdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v1, v9}, Lcom/taptap/sdk/okhttp3/RequestBody;->create(Lcom/taptap/sdk/okhttp3/MediaType;[B)Lcom/taptap/sdk/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->post(Lcom/taptap/sdk/okhttp3/RequestBody;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->build()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v0

    const-string v1, "Builder()\n            .u\u2026nt))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentByteArray$tap_kit_release()[B
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->body:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTechnicalLogParam$tap_kit_release()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
