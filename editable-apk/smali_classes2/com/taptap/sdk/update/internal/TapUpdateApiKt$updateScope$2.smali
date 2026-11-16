.class final Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapUpdateApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/update/internal/TapUpdateApiKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke"
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;->INSTANCE:Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .line 26
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "tap_update"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic lambda$neJjMhYLrRrwikzgvXz5lv0lyB8(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;->invoke$lambda$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/TapUpdateApiKt$updateScope$2;->invoke()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    sget-object v0, Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;->INSTANCE:Lcom/taptap/sdk/update/internal/-$$Lambda$TapUpdateApiKt$updateScope$2$neJjMhYLrRrwikzgvXz5lv0lyB8;

    .line 26
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor { Thread(\"tap_update\") }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 25
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
