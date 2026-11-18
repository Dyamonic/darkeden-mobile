.class public final Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;
.super Ljava/lang/Object;
.source "EngineBridge.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineBridge.kt\ncom/taptap/sdk/kit/internal/enginebridge/EngineBridge\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,193:1\n31#2,5:194\n36#2,4:202\n31#2,5:206\n36#2,4:214\n31#2,5:218\n36#2,4:226\n31#2,5:230\n36#2,4:238\n43#2,2:242\n45#2,4:247\n123#3:199\n123#3:211\n123#3:223\n123#3:235\n113#3:244\n32#4:200\n32#4:212\n32#4:224\n32#4:236\n32#4:245\n80#5:201\n80#5:213\n80#5:225\n80#5:237\n80#5:246\n*S KotlinDebug\n*F\n+ 1 EngineBridge.kt\ncom/taptap/sdk/kit/internal/enginebridge/EngineBridge\n*L\n54#1:194,5\n54#1:202,4\n69#1:206,5\n69#1:214,4\n88#1:218,5\n88#1:226,4\n102#1:230,5\n102#1:238,4\n161#1:242,2\n161#1:247,4\n54#1:199\n69#1:211\n88#1:223\n102#1:235\n161#1:244\n54#1:200\n69#1:212\n88#1:224\n102#1:236\n161#1:245\n54#1:201\n69#1:213\n88#1:225\n102#1:237\n161#1:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u000eH\u0002J\u001a\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u000e2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0008\u0011J \u0010\u0012\u001a\u00020\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00142\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0011\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0086 J\u001a\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0002J \u0010\u001d\u001a\u00020\u00072\u000e\u0010\u001e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020 0\u001f2\u0006\u0010!\u001a\u00020 H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridge;",
        "()V",
        "activityRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "execCommand",
        "",
        "command",
        "",
        "callback",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
        "execCommandAsync",
        "execCommandAsyncInternal",
        "Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;",
        "execCommandInternal",
        "getCurrentActivity",
        "getCurrentActivity$tap_kit_release",
        "handleResult",
        "result",
        "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;",
        "init",
        "activity",
        "nativeOnResult",
        "processUnityEngineCommand",
        "cmdStr",
        "processUnityEngineCommandAsync",
        "processUnrealEngineCommand",
        "processUnrealEngineCommandAsync",
        "registerService",
        "serviceClz",
        "Ljava/lang/Class;",
        "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
        "service",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

.field private static activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$execCommandInternal(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->execCommandInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    return-void
.end method

.method public static final synthetic access$handleResult(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->handleResult(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    return-void
.end method

.method private final execCommandAsyncInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execCommandAsyncInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAP_ENGINE_BRIDGE"

    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 158
    new-instance v1, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;

    invoke-direct {v1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;-><init>()V

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;->executeAsync(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 160
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 161
    :cond_2
    sget-object v3, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 243
    :try_start_1
    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/StringFormat;

    .line 244
    invoke-interface {v3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 245
    const-class v6, Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->nullableTypeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 246
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    .line 244
    invoke-interface {v3, v5, v1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "TapJson"

    .line 248
    check-cast v1, Ljava/lang/Throwable;

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v5, v4}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 157
    :goto_1
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 163
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execCommandAsyncInternal failed: cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {v2, p1, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method private final execCommandInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execCommandInternal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP_ENGINE_BRIDGE"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 124
    new-instance v2, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;

    invoke-direct {v2}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;-><init>()V

    new-instance v3, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;

    invoke-direct {v3, p1, v0, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$execCommandInternal$1$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    check-cast v3, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;

    invoke-virtual {v2, p1, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/command/CommandExecutor;->execute(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    .line 140
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 123
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execCommandInternal failed: cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {v1, p1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    sget-object p1, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 147
    new-instance v6, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "Failed"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;-><init>(ILjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    invoke-direct {p1, v6, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->handleResult(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    :cond_0
    return-void
.end method

.method private final handleResult(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$handleResult$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$handleResult$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeResult;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final processUnityEngineCommand(Ljava/lang/String;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 10

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processUnityEngineCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP_ENGINE_BRIDGE"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 54
    sget-object v3, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 194
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 198
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/StringFormat;

    .line 199
    invoke-interface {v3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 200
    const-class v5, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 201
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    .line 199
    invoke-interface {v3, v4, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "TapJson"

    .line 203
    check-cast v3, Ljava/lang/Throwable;

    const/4 v5, 0x2

    invoke-static {v4, v0, v3, v5, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 54
    :goto_3
    check-cast v3, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    if-nez v3, :cond_3

    return-void

    .line 55
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    const/4 v6, 0x0

    new-instance v7, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnityEngineCommand$1$1;

    invoke-direct {v7, v2, v3, p2, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnityEngineCommand$1$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p2

    .line 53
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p2

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 58
    :goto_4
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execUnityCommand failed: cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 59
    invoke-static {v1, p1, v0, p2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final processUnityEngineCommandAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUnityEngineCommandAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAP_ENGINE_BRIDGE"

    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 69
    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 206
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    :goto_2
    move-object v4, v1

    goto :goto_3

    .line 210
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 211
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 212
    const-class v6, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 213
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 211
    invoke-interface {v4, v5, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "TapJson"

    .line 215
    check-cast v4, Ljava/lang/Throwable;

    const/4 v6, 0x2

    invoke-static {v5, v1, v4, v6, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 69
    :goto_3
    check-cast v4, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    if-nez v4, :cond_3

    return-object v0

    .line 70
    :cond_3
    invoke-direct {v3, v4}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->execCommandAsyncInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execUnityCommand failed: cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    .line 72
    invoke-static {v2, p1, v1, v3, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4
    return-object v0
.end method

.method private final processUnrealEngineCommand(Ljava/lang/String;)V
    .locals 11

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processUnrealEngineCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP_ENGINE_BRIDGE"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 83
    new-instance v3, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;

    invoke-direct {v3, v2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;)V

    .line 88
    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 218
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 222
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 223
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 224
    const-class v6, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 225
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 223
    invoke-interface {v4, v5, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "TapJson"

    .line 227
    check-cast v4, Ljava/lang/Throwable;

    const/4 v6, 0x2

    invoke-static {v5, v0, v4, v6, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 88
    :goto_3
    check-cast v4, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    if-nez v4, :cond_3

    return-void

    .line 89
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$1;

    invoke-direct {v8, v2, v4, v3, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$1;-><init>(Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge$processUnrealEngineCommand$1$callback$1;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 82
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 92
    :goto_4
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execUnrealCommand failed: cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    .line 93
    invoke-static {v1, p1, v0, v2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final processUnrealEngineCommandAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUnrealEngineCommandAsync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAP_ENGINE_BRIDGE"

    invoke-static {v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 101
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;

    .line 102
    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 230
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_2

    :goto_2
    move-object v4, v1

    goto :goto_3

    .line 234
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 235
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 236
    const-class v6, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 237
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 235
    invoke-interface {v4, v5, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "TapJson"

    .line 239
    check-cast v4, Ljava/lang/Throwable;

    const/4 v6, 0x2

    invoke-static {v5, v1, v4, v6, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_2

    .line 102
    :goto_3
    check-cast v4, Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;

    if-nez v4, :cond_3

    return-object v0

    .line 103
    :cond_3
    invoke-direct {v3, v4}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->execCommandAsyncInternal(Lcom/taptap/sdk/kit/internal/enginebridge/command/Command;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 104
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execUnrealCommand failed: cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cause="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    .line 105
    invoke-static {v2, p1, v1, v3, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public execCommand(Ljava/lang/String;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/GameEngineExtKt;->isUnrealEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->processUnrealEngineCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/GameEngineExtKt;->isUnityEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->processUnityEngineCommand(Ljava/lang/String;Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridgeCallback;)V

    :goto_0
    return-void

    .line 39
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    const-string p2, "unknown engine"

    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execCommandAsync(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/GameEngineExtKt;->isUnrealEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->processUnrealEngineCommandAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/GameEngineExtKt;->isUnityEngine()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->processUnityEngineCommandAsync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    .line 47
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    const-string v0, "unknown engine"

    invoke-direct {p1, v0}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getCurrentActivity$tap_kit_release()Landroid/app/Activity;
    .locals 1

    .line 28
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->activityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/EngineBridge;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final synchronized native nativeOnResult(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;
        }
    .end annotation
.end method

.method public registerService(Ljava/lang/Class;Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ">;",
            "Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;",
            ")V"
        }
    .end annotation

    const-string v0, "serviceClz"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "service"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->checkServiceValid(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->registerService(Ljava/lang/Class;Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;)V

    goto :goto_0

    .line 182
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/EngineBridgeReflector;->getValidService(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->INSTANCE:Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/internal/BridgeHolder;->registerService(Ljava/lang/Class;Lcom/taptap/sdk/kit/internal/enginebridge/IEngineBridgeService;)V

    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance p1, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;

    const-string p2, "\u6ce8\u518cIBridgeService\u51fa\u73b0\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/taptap/sdk/kit/internal/enginebridge/exception/EngineBridgeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
