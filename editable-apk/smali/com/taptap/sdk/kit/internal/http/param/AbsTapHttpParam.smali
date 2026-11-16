.class public abstract Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
.super Ljava/lang/Object;
.source "AbsTapHttpParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
        "TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbsTapHttpParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbsTapHttpParam.kt\ncom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,103:1\n211#2,2:104\n*S KotlinDebug\n*F\n+ 1 AbsTapHttpParam.kt\ncom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam\n*L\n98#1:104,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J%\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJ%\u0010\u001f\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0002\u0010\u001eJ\r\u0010 \u001a\u00020!H \u00a2\u0006\u0002\u0008\"J\u0008\u0010#\u001a\u00020\u0006H\u0004J\r\u0010$\u001a\u00020\u001dH\u0000\u00a2\u0006\u0002\u0008%J\r\u0010&\u001a\u00020\'H \u00a2\u0006\u0002\u0008(J\r\u0010)\u001a\u00020\u0006H \u00a2\u0006\u0002\u0008*J\r\u0010+\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008,J\r\u0010-\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008.J\r\u0010/\u001a\u000200H\u0000\u00a2\u0006\u0002\u00081J\u0014\u00102\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u00103\u001a\u00020\nJ\r\u00104\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u00105R\u001a\u0010\t\u001a\u00020\nX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0010X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0005\u001a\u00020\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u00066"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "R",
        "",
        "tapHttp",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "url",
        "",
        "method",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V",
        "backoffHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "getBackoffHandler",
        "()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "setBackoffHandler",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V",
        "headerParams",
        "",
        "getHeaderParams",
        "()Ljava/util/Map;",
        "getMethod",
        "()Ljava/lang/String;",
        "queryParams",
        "getTapHttp$tap_kit_release",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getUrl",
        "addHeader",
        "key",
        "value",
        "add",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "addQuery",
        "buildRequest",
        "Lcom/taptap/sdk/okhttp3/Request;",
        "buildRequest$tap_kit_release",
        "buildUrlString",
        "enableTechnicalLog",
        "enableTechnicalLog$tap_kit_release",
        "getContentByteArray",
        "",
        "getContentByteArray$tap_kit_release",
        "getTechnicalLogParam",
        "getTechnicalLogParam$tap_kit_release",
        "moduleName",
        "moduleName$tap_kit_release",
        "moduleVersion",
        "moduleVersion$tap_kit_release",
        "newCall",
        "Lcom/taptap/sdk/okhttp3/Call;",
        "newCall$tap_kit_release",
        "retryBackoff",
        "backoff",
        "self",
        "()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
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

.field private final headerParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tapHttp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    .line 12
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->method:Ljava/lang/String;

    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->headerParams:Ljava/util/Map;

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->queryParams:Ljava/util/Map;

    .line 21
    new-instance p1, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;

    invoke-direct {p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;-><init>()V

    check-cast p1, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-void
.end method

.method public static synthetic addHeader$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addHeader(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addHeader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic addQuery$default(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->addQuery(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addQuery"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final self()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type R of com.taptap.sdk.kit.internal.http.param.AbsTapHttpParam"

    .line 87
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    return-object v0
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 34
    iget-object p3, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->headerParams:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->self()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    return-object p1
.end method

.method public final addQuery(Ljava/lang/String;Ljava/lang/String;Z)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 46
    iget-object p3, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->queryParams:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->self()Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    move-result-object p1

    return-object p1
.end method

.method public abstract buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;
.end method

.method protected final buildUrlString()Ljava/lang/String;
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->getFixQueryParams()Ljava/util/Map;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->url:Ljava/lang/String;

    const-string v2, "http"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "{\n            Uri.parse(url).buildUpon()\n        }"

    .line 91
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getDomain$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "{\n            Uri.Builde\u2026in()).path(url)\n        }"

    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->queryParams:Ljava/util/Map;

    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 97
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 104
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder.build().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final enableTechnicalLog$tap_kit_release()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getEnableTechnicalLog$tap_kit_release()Z

    move-result v0

    return v0
.end method

.method public getBackoffHandler()Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-object v0
.end method

.method public abstract getContentByteArray$tap_kit_release()[B
.end method

.method protected final getHeaderParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->headerParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method public abstract getTechnicalLogParam$tap_kit_release()Ljava/lang/String;
.end method

.method protected final getUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final moduleName$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleName$tap_kit_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final moduleVersion$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newCall$tap_kit_release()Lcom/taptap/sdk/okhttp3/Call;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->tapHttp:Lcom/taptap/sdk/kit/internal/http/TapHttp;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->newCall(Lcom/taptap/sdk/okhttp3/Request;)Lcom/taptap/sdk/okhttp3/Call;

    move-result-object v0

    return-object v0
.end method

.method public final retryBackoff(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
            ")",
            "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "backoff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 67
    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->setBackoffHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V

    return-object v0
.end method

.method public setBackoffHandler(Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;->backoffHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;

    return-void
.end method
