.class public final Lcom/taptap/sdk/kit/internal/TapTapKit;
.super Ljava/lang/Object;
.source "TapTapKit.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0016J\u001e\u0010$\u001a\u00020%2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u001bJ\u0015\u0010&\u001a\u00020%2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u0006("
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/TapTapKit;",
        "",
        "()V",
        "TAG",
        "",
        "clientId",
        "getClientId$tap_kit_release",
        "()Ljava/lang/String;",
        "setClientId$tap_kit_release",
        "(Ljava/lang/String;)V",
        "clientToken",
        "getClientToken$tap_kit_release",
        "setClientToken$tap_kit_release",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "hasInitialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isRND",
        "",
        "()Z",
        "setRND",
        "(Z)V",
        "regionType",
        "",
        "getRegionType$tap_kit_release",
        "()I",
        "setRegionType$tap_kit_release",
        "(I)V",
        "tapApplicationScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getTapApplicationScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "initializeClient",
        "",
        "startInitialize",
        "startInitialize$tap_kit_release",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

.field private static final TAG:Ljava/lang/String; = "TapTapKit"

.field private static clientId:Ljava/lang/String;

.field private static clientToken:Ljava/lang/String;

.field public static context:Landroid/content/Context;

.field private static final hasInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isRND:Z

.field private static regionType:I

.field private static final tapApplicationScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->hasInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    .line 25
    sput-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientId:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientToken:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->tapApplicationScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClientId$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientToken$tap_kit_release()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 29
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRegionType$tap_kit_release()I
    .locals 1

    .line 27
    sget v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->regionType:I

    return v0
.end method

.method public final getTapApplicationScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 31
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->tapApplicationScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final hasInitialized()Z
    .locals 1

    .line 46
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->hasInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final initializeClient(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "clientId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TapTapKit"

    const-string v1, "initializeClient"

    .line 54
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sput-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientId:Ljava/lang/String;

    .line 56
    sput-object p2, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientToken:Ljava/lang/String;

    .line 57
    sput p3, Lcom/taptap/sdk/kit/internal/TapTapKit;->regionType:I

    return-void
.end method

.method public final isRND()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND:Z

    return v0
.end method

.method public final setClientId$tap_kit_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sput-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientId:Ljava/lang/String;

    return-void
.end method

.method public final setClientToken$tap_kit_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sput-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->clientToken:Ljava/lang/String;

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sput-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->context:Landroid/content/Context;

    return-void
.end method

.method public final setRND(Z)V
    .locals 0

    .line 33
    sput-boolean p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND:Z

    return-void
.end method

.method public final setRegionType$tap_kit_release(I)V
    .locals 0

    .line 27
    sput p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->regionType:I

    return-void
.end method

.method public final declared-synchronized startInitialize$tap_kit_release(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->hasInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 38
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "TapTapKit"

    const-string v1, "startInitialize"

    .line 40
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->setContext(Landroid/content/Context;)V

    .line 42
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->init(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
