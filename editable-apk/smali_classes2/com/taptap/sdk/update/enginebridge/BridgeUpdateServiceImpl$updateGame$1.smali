.class public final Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1;
.super Ljava/lang/Object;
.source "BridgeUpdateServiceImpl.kt"

# interfaces
.implements Lcom/taptap/sdk/update/TapTapUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl;->updateGame(Landroid/app/Activity;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBridgeUpdateServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BridgeUpdateServiceImpl.kt\ncom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1\n+ 2 JsonExt.kt\ncom/taptap/sdk/kit/internal/extensions/JsonExtKt\n+ 3 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 6 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,23:1\n6#2:24\n43#3,2:25\n45#3,4:30\n113#4:27\n32#5:28\n80#6:29\n*S KotlinDebug\n*F\n+ 1 BridgeUpdateServiceImpl.kt\ncom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1\n*L\n17#1:24\n17#1:25,2\n17#1:30,4\n17#1:27\n17#1:28\n17#1:29\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1",
        "Lcom/taptap/sdk/update/TapTapUpdateCallback;",
        "onCancel",
        "",
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


# instance fields
.field final synthetic $callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1;->$callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/update/enginebridge/BridgeUpdateServiceImpl$updateGame$1;->$callback:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    .line 17
    new-instance v7, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;

    const/4 v2, 0x1

    const-string v3, "cancel"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;-><init>(ILjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 27
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 28
    const-class v4, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;

    sget-object v5, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 29
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 27
    invoke-interface {v1, v3, v7}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 31
    check-cast v1, Ljava/lang/Throwable;

    const/4 v3, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v2, v1, v3, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v2, :cond_0

    const-string v2, "json convert error"

    .line 16
    :cond_0
    invoke-interface {v0, v2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
