.class final Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapOAIDUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->queryOAID(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapOAIDUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapOAIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1851#2,2:52\n*S KotlinDebug\n*F\n+ 1 TapOAIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2\n*L\n34#1:52,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;->this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->access$setOaid$p(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->access$getWaitingList$p()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 35
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->access$getWaitingList$p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 38
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;->access$isQuerying$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$F31HUaMiKVNsL0E2X91iBMBOQ3Q(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;->invoke$lambda$2(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 30
    sget-object v0, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/identifier/content/OaidHelper;->getOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil$queryOAID$2;->this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;

    new-instance v3, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapOAIDUtil$queryOAID$2$F31HUaMiKVNsL0E2X91iBMBOQ3Q;

    invoke-direct {v3, v2, v0}, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapOAIDUtil$queryOAID$2$F31HUaMiKVNsL0E2X91iBMBOQ3Q;-><init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapOAIDUtil;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
