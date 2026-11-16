.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;
.super Lcom/taptap/sdk/kit/internal/exception/TapTapException;
.source "TapHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/TapHttpException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseDataError"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpException.kt\ncom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,34:1\n43#2,2:35\n45#2,4:40\n113#3:37\n32#4:38\n80#5:39\n*S KotlinDebug\n*F\n+ 1 TapHttpException.kt\ncom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError\n*L\n29#1:35,2\n29#1:40,4\n29#1:37\n29#1:38\n29#1:39\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0015\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "httpCode",
        "",
        "response",
        "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;",
        "(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)V",
        "getHttpCode",
        "()I",
        "getResponse",
        "()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;",
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
.field private final httpCode:I

.field private final response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseDataError("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v2, 0x0

    .line 36
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 37
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 38
    const-class v4, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    sget-object v5, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v5}, Lkotlin/reflect/KTypeProjection$Companion;->getSTAR()Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 39
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 37
    invoke-interface {v1, v3, p2}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 41
    check-cast v1, Ljava/lang/Throwable;

    const/4 v3, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v2, v1, v3, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 29
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    .line 28
    iput p1, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;->httpCode:I

    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;->response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    return-void
.end method


# virtual methods
.method public final getHttpCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;->httpCode:I

    return v0
.end method

.method public final getResponse()Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse<",
            "*>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;->response:Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    return-object v0
.end method
