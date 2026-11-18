.class public final Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;
.super Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;
.source "TapHttpFormParam.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam<",
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpFormParam.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpFormParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpFormParam\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 5 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 6 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 7 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,51:1\n125#2:52\n152#2,3:53\n32#3,2:56\n43#4,2:58\n45#4,4:63\n113#5:60\n32#6:61\n80#7:62\n*S KotlinDebug\n*F\n+ 1 TapHttpFormParam.kt\ncom/taptap/sdk/kit/internal/http/param/TapHttpFormParam\n*L\n18#1:52\n18#1:53,3\n40#1:56,2\n49#1:58,2\n49#1:63,4\n49#1:60\n49#1:61\n49#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007\u00a2\u0006\u0002\u0010\u0008J\r\u0010\t\u001a\u00020\nH\u0010\u00a2\u0006\u0002\u0008\u000bJ\r\u0010\u000c\u001a\u00020\rH\u0010\u00a2\u0006\u0002\u0008\u000eJ\r\u0010\u000f\u001a\u00020\u0005H\u0010\u00a2\u0006\u0002\u0008\u0010R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;",
        "Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;",
        "http",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "url",
        "",
        "form",
        "",
        "(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/util/Map;)V",
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
.field private final form:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "http"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "form"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;-><init>(Lcom/taptap/sdk/kit/internal/http/TapHttp;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p3, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->form:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public buildRequest$tap_kit_release()Lcom/taptap/sdk/okhttp3/Request;
    .locals 12

    .line 22
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getHeaderParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleName$tap_kit_release()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getModuleVersion$tap_kit_release()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->getHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->buildUrlString()Ljava/lang/String;

    move-result-object v8

    .line 26
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getContentByteArray$tap_kit_release()[B

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getCompressHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpCompress;->handle([B)[B

    move-result-object v9

    .line 28
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getSignHandler$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;

    move-result-object v10

    new-instance v11, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;

    .line 30
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->getTapHttp$tap_kit_release()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->getEnableAuthorization$tap_kit_release()Z

    move-result v4

    move-object v1, v11

    move-object v2, v8

    move-object v6, v9

    move-object v7, v0

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;-><init>(Ljava/lang/String;Ljava/lang/String;Z[B[BLjava/util/Map;)V

    invoke-interface {v10, v11}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign;->handle(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpSign$HandleData;)V

    const-string v1, "application/x-www-form-urlencoded"

    .line 36
    invoke-static {v1}, Lcom/taptap/sdk/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/MediaType;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/taptap/sdk/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/taptap/sdk/okhttp3/Request$Builder;-><init>()V

    .line 38
    invoke-virtual {v2, v8}, Lcom/taptap/sdk/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v2

    .line 40
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/taptap/sdk/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {v1, v9}, Lcom/taptap/sdk/okhttp3/RequestBody;->create(Lcom/taptap/sdk/okhttp3/MediaType;[B)Lcom/taptap/sdk/okhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->post(Lcom/taptap/sdk/okhttp3/RequestBody;)Lcom/taptap/sdk/okhttp3/Request$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/taptap/sdk/okhttp3/Request$Builder;->build()Lcom/taptap/sdk/okhttp3/Request;

    move-result-object v0

    const-string v1, "Builder()\n            .u\u2026nt))\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentByteArray$tap_kit_release()[B
    .locals 11

    .line 18
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->form:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 52
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const-string v0, "&"

    .line 18
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTechnicalLogParam$tap_kit_release()Ljava/lang/String;
    .locals 9

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/http/param/TapHttpFormParam;->form:Ljava/util/Map;

    const/4 v3, 0x0

    .line 59
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 60
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 61
    const-class v5, Ljava/util/Map;

    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 62
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    .line 60
    invoke-interface {v1, v4, v2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v3, v1, v2, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 49
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
