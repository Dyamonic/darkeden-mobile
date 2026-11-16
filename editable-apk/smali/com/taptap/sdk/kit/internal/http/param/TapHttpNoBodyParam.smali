.class public final Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;
.super Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
.source "TapHttpNoBodyParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpNoBodyParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpNoBodyParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,44:1\n32#2,2:45\n*S KotlinDebug\n*F\n+ 1 TapHttpNoBodyParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam\n*L\n33#1:45,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010\r\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u000fJ\r\u0010\u0010\u001a\u00020\u0011H\u0010\u00a2\u0006\u0002\u0008\u0012J\r\u0010\u0013\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "http",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "url",
        "",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V",
        "backoffHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "getBackoffHandler",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "setBackoffHandler",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V",
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
.field private backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GET"

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-void
.end method


# virtual methods
.method public buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;
    .locals 11

    .line 17
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getHeaderParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleName$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->getHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->buildUrlString()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v9

    .line 22
    new-instance v10, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;

    .line 24
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getEnableAuthorization$tap_kit_release()Z

    move-result v4

    const/4 v1, 0x0

    new-array v5, v1, [B

    new-array v6, v1, [B

    move-object v1, v10

    move-object v2, v8

    move-object v7, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;-><init>(Ljava/lang/String;Ljava/lang/String;Z[B[BLjava/util/Map;)V

    .line 21
    invoke-interface {v9, v10}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->handle(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;)V

    .line 30
    new-instance v1, Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-direct {v1}, Lcom/taptap/sdk/okhttp3/Request$Builder;-><init>()V

    .line 31
    invoke-virtual {v1, v8}, Lcom/taptap/sdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v1

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/taptap/sdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/taptap/sdk/okhttp3/Request$Builder;->get()Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->build()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v0

    const-string v1, "Builder()\n            .u\u2026et()\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-object v0
.end method

.method public getContentByteArray$tap_kit_release()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getTechnicalLogParam$tap_kit_release()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBackoffHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpNoBodyParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-void
.end method
