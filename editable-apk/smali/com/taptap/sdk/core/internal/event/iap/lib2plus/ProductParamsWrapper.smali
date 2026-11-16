.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;
.super Ljava/lang/Object;
.source "ProductParamsWrapper.kt"

# interfaces
.implements Lcom/taptap/sdk/core/internal/event/iap/lib2plus/IParamsWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\n\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/IParamsWrapper;",
        "()V",
        "reflectParams",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;",
        "ensureReflectParams",
        "",
        "getProductItem",
        "",
        "productId",
        "",
        "productType",
        "getReflectParams",
        "ReflectParams",
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


# instance fields
.field private reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ensureReflectParams()V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    if-nez v0, :cond_0

    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product"

    .line 19
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product$Builder"

    .line 21
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v4, "newBuilder"

    .line 24
    invoke-static {v2, v4, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    .line 29
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const-string v6, "setProductId"

    .line 26
    invoke-static {v3, v6, v5}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Class;

    .line 35
    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v0

    const-string v6, "setProductType"

    .line 32
    invoke-static {v3, v6, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "build"

    .line 37
    invoke-static {v3, v1, v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 43
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getProductItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 59
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-nez v0, :cond_8

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    .line 63
    :cond_4
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->ensureReflectParams()V

    .line 64
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    if-eqz v0, :cond_8

    .line 67
    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getProductItemClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getNewBuilderMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v3, v6}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    return-object v3

    .line 70
    :cond_5
    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getBuilderClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getSetTypeMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p2, v7, v2

    invoke-static {v5, v6, v4, v7}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    return-object v3

    .line 77
    :cond_6
    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getBuilderClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getSetProductIdMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v4, v5, p2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    .line 81
    :cond_7
    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getBuilderClazz$tap_db_release()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;->getBuildMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, p1, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_8
    :goto_4
    return-object v3
.end method

.method public getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->ensureReflectParams()V

    .line 89
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    return-object v0
.end method

.method public bridge synthetic getReflectParams()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    move-result-object v0

    return-object v0
.end method
