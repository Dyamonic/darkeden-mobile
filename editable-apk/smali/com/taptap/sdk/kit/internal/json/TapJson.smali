.class public final Lcom/taptap/sdk/kit/internal/json/TapJson;
.super Ljava/lang/Object;
.source "TapJson.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 2 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 3 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 4 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 5 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,78:1\n123#2:79\n113#2:82\n113#2:88\n32#3:80\n32#3:83\n32#3:86\n32#3:89\n32#3:92\n80#4:81\n80#4:84\n80#4:87\n80#4:90\n80#4:93\n210#5:85\n199#5:91\n*S KotlinDebug\n*F\n+ 1 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n*L\n35#1:79\n44#1:82\n63#1:88\n35#1:80\n44#1:83\n54#1:86\n63#1:89\n72#1:92\n35#1:81\n44#1:84\n54#1:87\n63#1:90\n72#1:93\n54#1:85\n72#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\n\u001a\u0004\u0018\u0001H\u000b\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0086\u0008\u00a2\u0006\u0002\u0010\u000eJ\"\u0010\u000f\u001a\u0004\u0018\u0001H\u000b\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0086\u0008\u00a2\u0006\u0002\u0010\u0011J \u0010\u0012\u001a\u0004\u0018\u00010\u0013\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0006\u0010\u0014\u001a\u0002H\u000bH\u0086\u0008\u00a2\u0006\u0002\u0010\u0015J \u0010\u0016\u001a\u0004\u0018\u00010\r\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0006\u0010\u0014\u001a\u0002H\u000bH\u0086\u0008\u00a2\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\u0004\u0018\u00010\u0004\"\u0006\u0008\u0000\u0010\u000b\u0018\u00012\u0006\u0010\u0014\u001a\u0002H\u000bH\u0086\u0008\u00a2\u0006\u0002\u0010\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/json/TapJson;",
        "",
        "()V",
        "TAG",
        "",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "getJson$annotations",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "decodeFromJsonElement",
        "T",
        "data",
        "Lkotlinx/serialization/json/JsonElement;",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;",
        "decodeFromString",
        "jsonString",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "encodeToJSONObject",
        "Lorg/json/JSONObject;",
        "obj",
        "(Ljava/lang/Object;)Lorg/json/JSONObject;",
        "encodeToJsonElement",
        "(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;",
        "encodeToString",
        "(Ljava/lang/Object;)Ljava/lang/String;",
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


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

.field public static final TAG:Ljava/lang/String; = "TapJson"

.field private static final json:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/taptap/sdk/kit/internal/json/TapJson;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 25
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson$json$1;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson$json$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getJson$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Do not use directly"
    .end annotation

    return-void
.end method


# virtual methods
.method public final synthetic decodeFromJsonElement(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 54
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, "T"

    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v2, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 86
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 85
    invoke-virtual {v1, v2, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 56
    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v0, p1, v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic decodeFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 35
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 79
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, "T"

    .line 80
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v2, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 81
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 80
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 79
    invoke-interface {v0, v2, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 37
    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v1, p1, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method public final synthetic encodeToJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/StringFormat;

    .line 88
    invoke-interface {v2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    const/4 v4, 0x6

    const-string v5, "T"

    .line 89
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v3, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 90
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 89
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 88
    invoke-interface {v2, v3, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 65
    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v0, p1, v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic encodeToJsonElement(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, "T"

    .line 92
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v2, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 93
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 92
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 91
    invoke-virtual {v1, v2, p1}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 74
    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v0, p1, v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic encodeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 82
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    const/4 v3, 0x6

    const-string v4, "T"

    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    invoke-static {v2, v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 84
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlinx/serialization/KSerializer;

    .line 83
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 82
    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 46
    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v0, p1, v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method
