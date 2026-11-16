.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;
.super Ljava/lang/Object;
.source "InAppPurchaseQueryDetailsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppPurchaseQueryDetailsWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppPurchaseQueryDetailsWrapper.kt\ncom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,49:1\n1#2:50\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;",
        "",
        "()V",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "instance",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;",
        "createInstance",
        "",
        "getOrCreateInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;-><init>()V

    return-void
.end method

.method private final createInstance()V
    .locals 6

    .line 24
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    invoke-direct {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;-><init>()V

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper$ReflectParams;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 25
    :goto_1
    new-instance v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    invoke-direct {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;-><init>()V

    invoke-virtual {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    move-object v4, v1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    .line 29
    :cond_4
    new-instance v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    invoke-direct {v1, v0, v4}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;-><init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;)V

    .line 28
    invoke-static {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->access$setInstance$cp(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getOrCreateInstance()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 15
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;->createInstance()V

    .line 19
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    move-result-object v0

    return-object v0
.end method
