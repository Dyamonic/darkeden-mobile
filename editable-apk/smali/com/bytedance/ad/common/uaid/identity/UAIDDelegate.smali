.class public final Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001a\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;",
        "",
        "()V",
        "uaidConfig",
        "Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;",
        "uaidFetcherMap",
        "",
        "",
        "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;",
        "addListener",
        "",
        "listener",
        "Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;",
        "checkNetWorkPermission",
        "context",
        "Landroid/content/Context;",
        "getUAIDInfoAsync",
        "callback",
        "Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;",
        "getUAIDInfoIfExits",
        "Lcom/bytedance/ad/common/uaid/identity/UAIDResult;",
        "getUAIDInfoSync",
        "timeout",
        "",
        "removeListener",
        "setConfig",
        "config",
        "uaid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

.field private static final uaidConfig:Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;

.field private static final uaidFetcherMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

    invoke-direct {v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;-><init>()V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->INSTANCE:Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;Lcom/bytedance/ad/common/uaid/identity/Config;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidConfig:Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/ChinaMobileUAIDFetcher;

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->getChinaMobileConfig()Lcom/bytedance/ad/common/uaid/identity/Config;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/ad/common/uaid/identity/ChinaMobileUAIDFetcher;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V

    const-string v3, "1"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->getChinaTelecomConfig()Lcom/bytedance/ad/common/uaid/identity/Config;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bytedance/ad/common/uaid/identity/ChinaTelecomUAIDFetcher;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V

    const-string v3, "2"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->getChinaUnicomConfig()Lcom/bytedance/ad/common/uaid/identity/Config;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bytedance/ad/common/uaid/identity/ChinaUnicomUAIDFetcher;-><init>(Lcom/bytedance/ad/common/uaid/identity/Config;)V

    const-string v0, "3"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkNetWorkPermission(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->checkNetWorkPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUaidFetcherMap$p(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;)Ljava/util/Map;
    .locals 0

    sget-object p0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    return-object p0
.end method

.method private final checkNetWorkPermission(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "31128"

    const/4 v2, -0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    move-result-object v0

    const-string v4, "netWorkUtils"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getNetworkType()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_1

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_1
    if-eq v0, v4, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "21128"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "41128"

    return-object p1
.end method

.method public static synthetic getUAIDInfoAsync$default(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    check-cast p2, Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;

    move-object p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->getUAIDInfoAsync(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V

    return-void
.end method

.method public static synthetic getUAIDInfoSync$default(Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;Landroid/content/Context;JILjava/lang/Object;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x1388

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->getUAIDInfoSync(Landroid/content/Context;J)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    invoke-virtual {v1, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->addListener(Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getUAIDInfoAsync(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoAsync$1;-><init>(Landroid/content/Context;Lcom/bytedance/ad/common/uaid/identity/callback/AsyncUAIDFetchCallback;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getUAIDInfoIfExits(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    const-string v1, "-11128"

    invoke-direct {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->checkNetWorkPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->setErrCode(Ljava/lang/String;)V

    const-string v2, "41128"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/SIMUtils;->getSimOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    const-string v0, "11128"

    invoke-direct {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public final getUAIDInfoSync(Landroid/content/Context;J)Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->checkNetWorkPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "41128"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/SIMUtils;->getSimOperatorCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->getErrCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-11128"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->getInstance(Landroid/content/Context;)Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;

    move-result-object v2

    new-instance v3, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;

    invoke-direct {v3, v0, p1, v1}, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate$getUAIDInfoSync$1;-><init>(Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v3, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;

    invoke-virtual {v2, v3}, Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils;->requestCellular(Lcom/bytedance/ad/common/uaid/identity/utils/NetworkUtils$NetworkCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->getUaidResult()Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    const-string p2, "11128"

    invoke-direct {p1, p2}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    invoke-direct {p1, v0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "unknow"

    :goto_2
    new-instance p2, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;

    invoke-direct {p2, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final removeListener(Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidFetcherMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;

    invoke-virtual {v1, p1}, Lcom/bytedance/ad/common/uaid/identity/AbsUAIDFetcher;->removeListener(Lcom/bytedance/ad/common/uaid/identity/callback/IUAIDFetchListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setConfig(Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/ad/common/uaid/identity/UAIDDelegate;->uaidConfig:Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;

    invoke-virtual {v0, p1}, Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;->setNewConfig(Lcom/bytedance/ad/common/uaid/identity/UAIDConfig;)V

    return-void
.end method
