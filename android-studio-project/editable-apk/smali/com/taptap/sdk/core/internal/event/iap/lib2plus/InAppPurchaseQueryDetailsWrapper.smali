.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseQueryDetailsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rJ \u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u000e2\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;",
        "",
        "skuDetailParamsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;",
        "productDetailParamsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;",
        "(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;)V",
        "getProductDetailParamsWrapper",
        "()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;",
        "getSkuDetailParamsWrapper",
        "()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;",
        "getProductDetailsParams",
        "productMap",
        "",
        "",
        "getSkuDetailsParams",
        "skuType",
        "skuIDs",
        "",
        "Companion",
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
.field public static final Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;


# instance fields
.field private final productDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

.field private final skuDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->skuDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    .line 7
    iput-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->productDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    return-void
.end method

.method public static final synthetic access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 5
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;
    .locals 1

    .line 5
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->instance:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    return-void
.end method

.method public static final getOrCreateInstance()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;->getOrCreateInstance()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getProductDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->productDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    return-object v0
.end method

.method public final getProductDetailsParams(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->productDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->getProductDetailsParams(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getSkuDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->skuDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    return-object v0
.end method

.method public final getSkuDetailsParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "skuType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuIDs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->skuDetailParamsWrapper:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;->getSkuDetailsParams(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
