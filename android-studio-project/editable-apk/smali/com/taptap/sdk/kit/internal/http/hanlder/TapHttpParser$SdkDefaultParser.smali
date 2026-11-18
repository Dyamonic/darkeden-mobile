.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;
.super Ljava/lang/Object;
.source "TapHttpParser.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkDefaultParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataBean:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser<",
        "TDataBean;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapHttpParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapHttpParser.kt\ncom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 6 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n1#1,102:1\n31#2,5:103\n36#2,4:111\n52#2,3:115\n55#2,4:121\n31#2,5:125\n36#2,4:133\n52#2,3:137\n55#2,4:143\n123#3:108\n123#3:130\n32#4:109\n32#4:119\n32#4:131\n32#4:141\n80#5:110\n80#5:120\n80#5:132\n80#5:142\n210#6:118\n210#6:140\n*S KotlinDebug\n*F\n+ 1 TapHttpParser.kt\ncom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser\n*L\n25#1:103,5\n25#1:111,4\n48#1:115,3\n48#1:121,4\n62#1:125,5\n62#1:133,4\n65#1:137,3\n65#1:143,4\n25#1:108\n62#1:130\n25#1:109\n48#1:119\n62#1:131\n65#1:141\n25#1:110\n48#1:120\n62#1:132\n65#1:142\n48#1:118\n65#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B/\u0012\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004\u0012\u0016\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R!\u0010\u0005\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;",
        "DataBean",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpParser;",
        "responseHandler",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;",
        "parserResponse",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonObject;",
        "(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;)V",
        "getParserResponse",
        "()Lkotlin/jvm/functions/Function1;",
        "parse",
        "Lkotlin/Result;",
        "response",
        "Lcom/taptap/sdk/okhttp3/Response;",
        "parse-IoAF18A",
        "(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;",
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
.field private final parserResponse:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonObject;",
            "TDataBean;>;"
        }
    .end annotation
.end field

.field private final responseHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler<",
            "TDataBean;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler<",
            "TDataBean;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonObject;",
            "+TDataBean;>;)V"
        }
    .end annotation

    const-string v0, "parserResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;->responseHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;

    .line 19
    iput-object p2, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;->parserResponse:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;-><init>(Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final getParserResponse()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonObject;",
            "TDataBean;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;->parserResponse:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public parse-IoAF18A(Lcom/taptap/sdk/okhttp3/Response;)Ljava/lang/Object;
    .locals 12

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Response;->code()I

    move-result v0

    .line 23
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Response;->isSuccessful()Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    const/4 v3, 0x2

    const-string v4, "TapJson"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Response;->body()Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v7

    .line 25
    :goto_0
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 103
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v6

    :goto_2
    if-eqz v8, :cond_3

    :goto_3
    move-object v1, v7

    goto :goto_4

    .line 107
    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 108
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v8

    .line 109
    const-class v9, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    sget-object v10, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v11, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    .line 110
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    .line 108
    invoke-interface {v1, v8, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 112
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v4, v7, v1, v3, v7}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3

    .line 25
    :goto_4
    check-cast v1, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    .line 27
    iget-object v8, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;->responseHandler:Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;

    if-eqz v8, :cond_4

    invoke-interface {v8, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpResponseHandler;->handleResponse-CmtIpJM(Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)Lkotlin/Result;

    move-result-object v8

    goto :goto_5

    :cond_4
    move-object v8, v7

    :goto_5
    if-eqz v8, :cond_5

    .line 29
    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getSuccess()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_6

    :cond_6
    move-object v8, v7

    .line 35
    :goto_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 36
    sget-object p1, Lcom/taptap/sdk/kit/internal/http/TapTime;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getNow()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/taptap/sdk/kit/internal/http/TapTime;->calibrateServerTime(Ljava/lang/Integer;)V

    .line 37
    iget-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpParser$SdkDefaultParser;->parserResponse:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 40
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_8

    .line 43
    :cond_7
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;

    invoke-direct {p1, v0, v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;-><init>(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 47
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 48
    sget-object v5, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/json/JsonElement;

    if-nez v6, :cond_9

    goto :goto_7

    .line 117
    :cond_9
    :try_start_1
    invoke-virtual {v5}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v5

    .line 118
    invoke-virtual {v5}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v8

    .line 119
    const-class v9, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    .line 120
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    .line 118
    invoke-virtual {v5, v8, v6}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v2

    .line 122
    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v4, v7, v2, v3, v7}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 124
    :goto_7
    check-cast v7, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    if-eqz v7, :cond_a

    .line 50
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-direct {p1, v0, v1, v7}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;-><init>(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 52
    :cond_a
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-direct {v1, v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_8

    .line 57
    :cond_b
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-direct {v1, v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    return-object p1

    .line 61
    :cond_c
    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/Response;->body()Lcom/taptap/sdk/okhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/taptap/sdk/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_d
    move-object p1, v7

    .line 62
    :goto_9
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 125
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_e

    goto :goto_a

    :cond_e
    move v8, v5

    goto :goto_b

    :cond_f
    :goto_a
    move v8, v6

    :goto_b
    if-eqz v8, :cond_10

    :goto_c
    move-object v1, v7

    goto :goto_d

    .line 129
    :cond_10
    :try_start_2
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 130
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v8

    .line 131
    const-class v9, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    sget-object v10, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v11, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    .line 132
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    check-cast v8, Lkotlinx/serialization/DeserializationStrategy;

    .line 130
    invoke-interface {v1, v8, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v1

    .line 134
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v4, v7, v1, v3, v7}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_c

    .line 62
    :goto_d
    check-cast v1, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;

    if-eqz v1, :cond_15

    .line 64
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getSuccess()Z

    move-result v8

    if-nez v8, :cond_15

    .line 65
    sget-object v8, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponse;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/json/JsonElement;

    if-nez v9, :cond_11

    goto :goto_e

    .line 139
    :cond_11
    :try_start_3
    invoke-virtual {v8}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v10

    .line 141
    const-class v11, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    .line 142
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    .line 140
    invoke-virtual {v8, v10, v9}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :catch_3
    move-exception v2

    .line 144
    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v4, v7, v2, v3, v7}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 65
    :goto_e
    check-cast v7, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;

    if-eqz v7, :cond_14

    .line 66
    invoke-virtual {v7}, Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;->getError()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    move v5, v6

    :cond_13
    if-nez v5, :cond_14

    .line 67
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;

    invoke-direct {p1, v0, v1, v7}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;-><init>(ILcom/taptap/sdk/kit/internal/bean/TapHttpResponse;Lcom/taptap/sdk/kit/internal/bean/TapHttpResponseError;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 69
    :cond_14
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-direct {v1, v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_f

    .line 74
    :cond_15
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;

    invoke-direct {v1, v0, p1}, Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;-><init>(ILjava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_f
    return-object p1
.end method
