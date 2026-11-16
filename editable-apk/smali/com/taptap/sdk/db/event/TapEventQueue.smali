.class public final Lcom/taptap/sdk/db/event/TapEventQueue;
.super Ljava/lang/Object;
.source "TapEventQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapEventQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapEventQueue.kt\ncom/taptap/sdk/db/event/TapEventQueue\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,167:1\n1851#2,2:168\n*S KotlinDebug\n*F\n+ 1 TapEventQueue.kt\ncom/taptap/sdk/db/event/TapEventQueue\n*L\n108#1:168,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001dH\u0007J\r\u0010$\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008%J\u0008\u0010&\u001a\u00020\"H\u0007J\u0008\u0010\'\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0015\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0002\u001a\u0004\u0008\u0019\u0010\u001aR!\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0012\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006("
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/TapEventQueue;",
        "",
        "()V",
        "FLUSH_PERIOD_IN_SECONDS",
        "",
        "HOST_CN",
        "",
        "HOST_IO",
        "NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER",
        "TAG",
        "URL_PATH",
        "flushRunnable",
        "Ljava/lang/Runnable;",
        "http",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getHttp",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "http$delegate",
        "Lkotlin/Lazy;",
        "scheduledFuture",
        "Ljava/util/concurrent/ScheduledFuture;",
        "singleThreadExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "getSingleThreadExecutor$tap_db_release$annotations",
        "getSingleThreadExecutor$tap_db_release",
        "()Ljava/util/concurrent/ScheduledExecutorService;",
        "store",
        "Lcom/taptap/sdk/kit/internal/store/TapDataStore;",
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
        "getStore",
        "()Lcom/taptap/sdk/kit/internal/store/TapDataStore;",
        "store$delegate",
        "add",
        "",
        "event",
        "flush",
        "flush$tap_db_release",
        "flushAndWait",
        "getHost",
        "tap-db_release"
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
.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0xf

.field private static final HOST_CN:Ljava/lang/String; = "e.tapdb.net"

.field private static final HOST_IO:Ljava/lang/String; = "e.tapdb.ap-sg.tapapis.com"

.field public static final INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TapEventQueue"

.field private static final URL_PATH:Ljava/lang/String; = "v2/batch"

.field private static final flushRunnable:Ljava/lang/Runnable;

.field private static final http$delegate:Lkotlin/Lazy;

.field private static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final store$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    .line 49
    sget-object v0, Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$V580eL2lCKW5fcwLMUg6nKdF5bA;->INSTANCE:Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$V580eL2lCKW5fcwLMUg6nKdF5bA;

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->flushRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/taptap/sdk/db/event/TapEventQueue$singleThreadExecutor$1;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue$singleThreadExecutor$1;-><init>()V

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue$store$2;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue$store$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->store$delegate:Lkotlin/Lazy;

    .line 71
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue$http$2;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue$http$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->http$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getFlushRunnable$p()Ljava/lang/Runnable;
    .locals 1

    .line 32
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->flushRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getHost(Lcom/taptap/sdk/db/event/TapEventQueue;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScheduledFuture$p()Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 32
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public static final synthetic access$getStore(Lcom/taptap/sdk/db/event/TapEventQueue;)Lcom/taptap/sdk/kit/internal/store/TapDataStore;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setScheduledFuture$p(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/taptap/sdk/db/event/TapEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static final add(Lcom/taptap/sdk/db/event/model/TapEventBean;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object v1

    check-cast p0, Lcom/taptap/sdk/kit/internal/store/ITapData;

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->addData(Lcom/taptap/sdk/kit/internal/store/ITapData;)Lcom/taptap/sdk/kit/internal/store/ITapData;

    .line 84
    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->getAccumulatedDataCount()I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    .line 85
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->flushAndWait()V

    goto :goto_0

    .line 86
    :cond_0
    sget-object p0, Lcom/taptap/sdk/db/event/TapEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez p0, :cond_1

    .line 87
    sget-object p0, Lcom/taptap/sdk/db/event/TapEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 88
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->flushRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    invoke-interface {p0, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/db/event/TapEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method private static final flush$lambda$3()V
    .locals 0

    .line 152
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->flushAndWait()V

    return-void
.end method

.method public static final flushAndWait()V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "TapEventQueue"

    const-string v1, "flushAndWait start"

    .line 96
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-direct {v1}, Lcom/taptap/sdk/db/event/TapEventQueue;->getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->obtainData$default(Lcom/taptap/sdk/kit/internal/store/TapDataStore;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "reportedEvents.isEmpty() , flushAndWait end"

    .line 99
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "TapTapSdk"

    const-string v3, "TapEvent flush events start"

    .line 102
    invoke-static {v0, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "randomUUID().toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {v1}, Lcom/taptap/sdk/db/event/TapEventQueue;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "https"

    invoke-virtual {v3, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "v2/batch"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Builder().scheme(\"https\"\u2026path(URL_PATH).toString()"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 107
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 108
    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    .line 168
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/taptap/sdk/db/event/model/TapEventBean;

    .line 109
    invoke-virtual {v9}, Lcom/taptap/sdk/db/event/model/TapEventBean;->getProperties()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v8, "data"

    .line 111
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    sget-object v7, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;

    new-instance v8, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$2;

    invoke-direct {v8, v1, v0}, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const-string v0, "core__http_execute"

    invoke-virtual {v7, v0, v8}, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->reportTechnicalLog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 121
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/taptap/sdk/kit/internal/http/TapHttp;->postJson(Ljava/lang/String;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v6}, Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;->addBody(Lorg/json/JSONObject;)Lcom/taptap/sdk/kit/internal/http/param/TapHttpJsonParam;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;

    .line 123
    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt;->toEventCall(Lcom/taptap/sdk/kit/internal/http/param/AbsTapHttpParam;)Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;

    move-result-object v1

    .line 124
    new-instance v3, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;

    invoke-direct {v3, v2}, Lcom/taptap/sdk/db/event/TapEventQueue$flushAndWait$3;-><init>(Ljava/util/List;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lcom/taptap/sdk/kit/internal/http/TapHttpExtKt;->executeResult(Lcom/taptap/sdk/kit/internal/http/call/TapHttpCall;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;->getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/taptap/sdk/kit/internal/store/TapDataStore;->clearInFlightAndStats(Z)V

    const/4 v0, 0x5

    const-string v1, "TapTapSdk report failure, Wait for the next event and try again."

    .line 147
    invoke-static {v5, v1, v5, v0, v5}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static final flushRunnable$lambda$0()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    sput-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 51
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->flushAndWait()V

    return-void
.end method

.method private final getHost()Ljava/lang/String;
    .locals 3

    .line 156
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v0

    const-string v1, "e.tapdb.net"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "e.tapdb.ap-sg.tapapis.com"

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final getHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 71
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->http$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method public static final getSingleThreadExecutor$tap_db_release()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 55
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static synthetic getSingleThreadExecutor$tap_db_release$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getStore()Lcom/taptap/sdk/kit/internal/store/TapDataStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taptap/sdk/kit/internal/store/TapDataStore<",
            "Lcom/taptap/sdk/db/event/model/TapEventBean;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->store$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/store/TapDataStore;

    return-object v0
.end method

.method public static synthetic lambda$V580eL2lCKW5fcwLMUg6nKdF5bA()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->flushRunnable$lambda$0()V

    return-void
.end method

.method public static synthetic lambda$uK3WFZ1zmOXgpt0d2R1Csv3EYcA()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->flush$lambda$3()V

    return-void
.end method


# virtual methods
.method public final flush$tap_db_release()V
    .locals 2

    .line 152
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;->INSTANCE:Lcom/taptap/sdk/db/event/-$$Lambda$TapEventQueue$uK3WFZ1zmOXgpt0d2R1Csv3EYcA;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
