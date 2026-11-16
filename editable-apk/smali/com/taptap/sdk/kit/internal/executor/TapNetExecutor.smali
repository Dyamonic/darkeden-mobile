.class public final Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;
.super Ljava/lang/Object;
.source "TapNetExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$UIThreadExecutor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0008\u0010\u001c\u001a\u00020\nH\u0007J\u0008\u0010\u001d\u001a\u00020\u0012H\u0007J\u0008\u0010\u001e\u001a\u00020\nH\u0003J\u0008\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;",
        "",
        "()V",
        "CORE_POOL_SIZE",
        "",
        "CPU_COUNT",
        "KEEP_ALIVE_TIME",
        "",
        "MAX_POOL_SIZE",
        "executorService",
        "Ljava/util/concurrent/ExecutorService;",
        "getExecutorService",
        "()Ljava/util/concurrent/ExecutorService;",
        "executorService$delegate",
        "Lkotlin/Lazy;",
        "sThreadFactory",
        "Ljava/util/concurrent/ThreadFactory;",
        "scheduledExecutorService",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "getScheduledExecutorService",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "scheduledExecutorService$delegate",
        "uiThread",
        "Ljava/util/concurrent/Executor;",
        "executeUIThread",
        "",
        "command",
        "Ljava/lang/Runnable;",
        "getExecutor",
        "getScheduledExecutor",
        "newThreadPoolExecutor",
        "UIThreadExecutor",
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
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final executorService$delegate:Lkotlin/Lazy;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final scheduledExecutorService$delegate:Lkotlin/Lazy;

.field private static final uiThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;

    .line 22
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$executorService$2;->INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$executorService$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->executorService$delegate:Lkotlin/Lazy;

    .line 23
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$scheduledExecutorService$2;->INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$scheduledExecutorService$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->scheduledExecutorService$delegate:Lkotlin/Lazy;

    .line 28
    new-instance v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$UIThreadExecutor;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$UIThreadExecutor;-><init>()V

    check-cast v0, Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->uiThread:Ljava/util/concurrent/Executor;

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    .line 32
    sput v1, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 34
    sput v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->MAX_POOL_SIZE:I

    .line 72
    new-instance v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$sThreadFactory$1;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor$sThreadFactory$1;-><init>()V

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    sput-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$newThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 20
    invoke-static {}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->newThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static final executeUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "command"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->uiThread:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 40
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 22
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->executorService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final getScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 45
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->INSTANCE:Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private final getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 23
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->scheduledExecutorService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-scheduledExecutorService>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private static final newThreadPoolExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 60
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 61
    sget v1, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->CORE_POOL_SIZE:I

    .line 62
    sget v2, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->MAX_POOL_SIZE:I

    .line 64
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/BlockingQueue;

    .line 66
    sget-object v7, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const-wide/16 v3, 0x1

    move-object v0, v8

    .line 60
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    .line 68
    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 69
    check-cast v8, Ljava/util/concurrent/ExecutorService;

    return-object v8
.end method

.method public static final uiThread()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 50
    sget-object v0, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->uiThread:Ljava/util/concurrent/Executor;

    return-object v0
.end method
