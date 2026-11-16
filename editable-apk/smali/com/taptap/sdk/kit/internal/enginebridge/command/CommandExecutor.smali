.class public final Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;
.super Ljava/lang/Object;
.source "CommandExecutor.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/enginebridge/command/ICommandExecutor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandExecutor.kt\ncom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,77:1\n43#2,2:78\n45#2,4:83\n113#3:80\n32#4:81\n80#5:82\n*S KotlinDebug\n*F\n+ 1 CommandExecutor.kt\ncom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor\n*L\n18#1:78,2\n18#1:83,4\n18#1:80\n18#1:81\n18#1:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/ICommandExecutor;",
        "()V",
        "execute",
        "",
        "command",
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "executeAsync",
        "",
        "invokeCommand",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invokeCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)Ljava/lang/Object;
    .locals 12

    const-string v0, ""

    .line 32
    sget-object v1, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->getBridgeService(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;

    const/4 v2, 0x0

    .line 36
    :try_start_0
    sget-object v3, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-virtual {v3, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->getRegisteredService(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/Class;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "methods"

    .line 38
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    array-length v5, v3

    move-object v6, v2

    move-object v7, v6

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v8, v3, v4

    .line 39
    const-class v9, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeMethod;

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeMethod;

    if-eqz v9, :cond_0

    .line 40
    invoke-interface {v9}, Lcom/taptap/sdk/kit/internal/enginebridge/annotation/EngineBridgeMethod;->value()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    move-object v9, v2

    :goto_1
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 42
    sget-object v9, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    const-string v10, "method"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v8, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->constructorCommandArgs(Ljava/lang/reflect/Method;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)[Ljava/lang/Object;

    move-result-object v9

    .line 43
    array-length v10, v9

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    if-eq v10, v11, :cond_1

    goto :goto_2

    :cond_1
    move-object v7, v8

    move-object v6, v9

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_5

    if-eqz v7, :cond_4

    .line 56
    array-length p1, v6

    invoke-static {v6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v7, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_4
    return-object v2

    .line 52
    :cond_5
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 53
    sget-object p2, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    .line 72
    :cond_7
    :goto_3
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 73
    sget-object p2, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 65
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_8
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 67
    sget-object p2, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 59
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_9
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    .line 61
    sget-object p2, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->COMMAND_ARGS_ERROR:Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/BridgeExceptionMessage;->getExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic invokeCommand$default(Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;->invokeCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 4

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->checkCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;->invokeCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    sget-object v0, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/StringFormat;

    .line 80
    invoke-interface {v0}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v2

    .line 81
    const-class v3, Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 82
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    .line 80
    invoke-interface {v0, v2, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    check-cast p1, Ljava/lang/Throwable;

    const/4 v0, 0x2

    const-string v2, "TapJson"

    invoke-static {v2, v1, p1, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v1, :cond_0

    const-string v1, ""

    .line 18
    :cond_0
    invoke-interface {p2, v1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;->onResult(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public executeAsync(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/Object;
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->checkCommand(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 24
    invoke-static {p0, p1, v0, v1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;->invokeCommand$default(Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
