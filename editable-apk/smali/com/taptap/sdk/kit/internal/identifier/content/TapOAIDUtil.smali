.class public final Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;
.super Ljava/lang/Object;
.source "TapOAIDUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\u0004J\u001c\u0010\r\u001a\u00020\u000b2\u0014\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b0\nJ\u0010\u0010\u000f\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;",
        "",
        "()V",
        "TAG",
        "",
        "isQuerying",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "oaid",
        "waitingList",
        "",
        "Lkotlin/Function1;",
        "",
        "getOAID",
        "queryOAID",
        "callback",
        "setOAIDCertString",
        "oaidCert",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

.field private static final TAG:Ljava/lang/String; = "TapOAIDUtil"

.field private static isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static oaid:Ljava/lang/String;

.field private static waitingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->waitingList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getWaitingList$p()Ljava/util/List;
    .locals 1

    .line 9
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->waitingList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$isQuerying$p()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 9
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$setOaid$p(Ljava/lang/String;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->oaid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getOAID()Ljava/lang/String;
    .locals 2

    .line 45
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOAID(TapTapKit.context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final queryOAID(Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    monitor-enter p0

    .line 19
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->oaid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->waitingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 25
    monitor-exit p0

    return-void

    .line 27
    :cond_1
    :try_start_2
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->isQuerying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 29
    new-instance p1, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;-><init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1
.end method

.method public final setOAIDCertString(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->setCertString(Ljava/lang/String;)V

    return-void
.end method
