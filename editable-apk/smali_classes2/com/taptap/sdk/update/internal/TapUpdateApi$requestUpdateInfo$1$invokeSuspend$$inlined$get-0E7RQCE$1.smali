.class public final Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TapHttpExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/json/JsonObject;",
        "Lcom/taptap/sdk/update/bean/UpdateResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt$toCall$1\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,39:1\n52#2,3:40\n55#2,4:46\n210#3:43\n32#4:44\n80#5:45\n*S KotlinDebug\n*F\n+ 1 TapHttpExt.kt\ncom/taptap/sdk/kit/internal/http/TapHttpExtKt$toCall$1\n*L\n16#1:40,3\n16#1:46,4\n16#1:43\n16#1:44\n16#1:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "DataBean",
        "it",
        "Lkotlinx/serialization/json/JsonObject;",
        "invoke",
        "(Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;",
        "com/taptap/sdk/kit/internal/http/TapHttpExtKt$toCall$1",
        "com/taptap/sdk/update/internal/TapUpdateApi$get-0E7RQCE$$inlined$toCall$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/update/internal/TapUpdateApi$requestUpdateInfo$1$invokeSuspend$$inlined$get-0E7RQCE$1;->invoke(Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonObject;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/JsonObject;",
            ")",
            "Lcom/taptap/sdk/update/bean/UpdateResult;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v1, 0x0

    .line 41
    :try_start_0
    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-nez v2, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 44
    const-class v3, Lcom/taptap/sdk/update/bean/UpdateResult;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->nullableTypeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 43
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, v2, p1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v1, p1, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-object v1
.end method
