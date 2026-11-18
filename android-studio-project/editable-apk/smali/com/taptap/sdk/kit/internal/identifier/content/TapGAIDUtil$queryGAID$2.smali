.class final Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TapGAIDUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->queryGAID(Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nTapGAIDUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapGAIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1851#2,2:217\n*S KotlinDebug\n*F\n+ 1 TapGAIDUtil.kt\ncom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2\n*L\n59#1:217,2\n*E\n"
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
.field final synthetic this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;->this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$advertisingId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->access$setGaid$p(Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V

    .line 59
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->access$getWaitingList$p()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 60
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->access$getWaitingList$p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 63
    invoke-static {}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->access$isQuerying$p()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$iG5F6WsOhiTakvieSDPY634VSCI(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;->invoke$lambda$2(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 55
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    sget-object v1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;->access$getAndroidId(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Landroid/content/Context;)Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil$queryGAID$2;->this$0:Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;

    new-instance v3, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;

    invoke-direct {v3, v2, v0}, Lcom/taptap/sdk/kit/internal/identifier/content/-$$Lambda$TapGAIDUtil$queryGAID$2$iG5F6WsOhiTakvieSDPY634VSCI;-><init>(Lcom/taptap/sdk/kit/internal/identifier/content/TapGAIDUtil;Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
