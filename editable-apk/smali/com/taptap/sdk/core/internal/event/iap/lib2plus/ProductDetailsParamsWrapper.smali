.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;
.super Ljava/lang/Object;
.source "ProductDetailsParamsWrapper.kt"

# interfaces
.implements Lcom/taptap/sdk/core/internal/event/iap/lib2plus/IParamsWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductDetailsParamsWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductDetailsParamsWrapper.kt\ncom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1851#2,2:103\n*S KotlinDebug\n*F\n+ 1 ProductDetailsParamsWrapper.kt\ncom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper\n*L\n60#1:103,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\n\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/IParamsWrapper;",
        "()V",
        "reflectParams",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;",
        "ensureReflectParams",
        "",
        "getProductDetailsParams",
        "",
        "productMap",
        "",
        "",
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
.field private reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ensureReflectParams()V
    .locals 8

    .line 16
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    if-nez v0, :cond_0

    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams"

    .line 18
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Builder"

    .line 20
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

    new-array v1, v1, [Ljava/lang/Class;

    .line 29
    const-class v5, Ljava/util/List;

    aput-object v5, v1, v0

    const-string v5, "setProductList"

    .line 26
    invoke-static {v3, v5, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "build"

    .line 31
    invoke-static {v3, v1, v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 32
    new-instance v6, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;

    invoke-direct {v6}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;-><init>()V

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v7, :cond_0

    .line 37
    invoke-virtual {v6}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper$ReflectParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;Ljava/lang/reflect/Method;)V

    iput-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getProductDetailsParams(Ljava/util/Map;)Ljava/lang/Object;
    .locals 9
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->ensureReflectParams()V

    .line 58
    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    if-eqz v2, :cond_8

    .line 59
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 60
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 103
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 61
    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getProductItemWrapper$tap_db_release()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;

    move-result-object v7

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v6, v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductParamsWrapper;->getProductItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 62
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 71
    :cond_5
    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getProductDetailsParamsClazz$tap_db_release()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getNewBuilderMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {p1, v5, v3, v6}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v3

    .line 76
    :cond_6
    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getBuilderClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v5

    .line 77
    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getSetProductListMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 75
    invoke-static {v5, v6, p1, v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    .line 84
    :cond_7
    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getBuilderClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getBuildMethod$tap_db_release()Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p1, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_8
    :goto_3
    return-object v3
.end method

.method public getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->ensureReflectParams()V

    .line 100
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->reflectParams:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    return-object v0
.end method

.method public bridge synthetic getReflectParams()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    move-result-object v0

    return-object v0
.end method
