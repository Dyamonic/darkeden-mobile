.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0012\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "initialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "instance",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;",
        "isServiceConnected",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "purchaseDetailsMap",
        "",
        "Lorg/json/JSONObject;",
        "getPurchaseDetailsMap",
        "()Ljava/util/Map;",
        "skuDetailsMap",
        "getSkuDetailsMap",
        "createBillingClient",
        "context",
        "Landroid/content/Context;",
        "billingClientClazz",
        "Ljava/lang/Class;",
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

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;-><init>()V

    return-void
.end method

.method private final createBillingClient(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "com.android.billingclient.api.BillingClient$Builder"

    .line 605
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.android.billingclient.api.PurchasesUpdatedListener"

    .line 606
    invoke-static {v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 611
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "newBuilder"

    invoke-static {p2, v5, v4}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Class;

    const-string v7, "enablePendingPurchases"

    .line 613
    invoke-static {v0, v7, v5}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v1, v7, v6

    const-string v8, "setListener"

    .line 614
    invoke-static {v0, v8, v7}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Class;

    const-string v9, "build"

    .line 615
    invoke-static {v0, v9, v8}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    new-array v9, v3, [Ljava/lang/Object;

    aput-object p1, v9, v6

    .line 626
    invoke-static {p2, v4, v2, v9}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 631
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v1, v4, v6

    .line 633
    new-instance v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;

    invoke-direct {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;-><init>()V

    check-cast v1, Ljava/lang/reflect/InvocationHandler;

    .line 630
    invoke-static {p2, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v6

    .line 635
    invoke-static {v0, v7, p1, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    :cond_3
    new-array p2, v6, [Ljava/lang/Object;

    .line 641
    invoke-static {v0, v5, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    new-array p2, v6, [Ljava/lang/Object;

    .line 644
    invoke-static {v0, v8, p1, p2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_5
    :goto_0
    return-object v2
.end method

.method private final createInstance(Landroid/content/Context;)V
    .locals 34

    .line 458
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper$Companion;->getOrCreateInstance()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;

    move-result-object v27

    if-nez v27, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.billingclient.api.BillingClient"

    .line 459
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v0, "com.android.billingclient.api.Purchase"

    .line 460
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v0, "com.android.billingclient.api.Purchase$PurchasesResult"

    .line 461
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v0, "com.android.billingclient.api.SkuDetails"

    .line 462
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v0, "com.android.billingclient.api.ProductDetails"

    .line 463
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v0, "com.android.billingclient.api.ProductDetails$OneTimePurchaseOfferDetails"

    .line 465
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v0, "com.android.billingclient.api.PurchaseHistoryRecord"

    .line 466
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v0, "com.android.billingclient.api.SkuDetailsResponseListener"

    .line 467
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v0, "com.android.billingclient.api.ProductDetailsResponseListener"

    .line 469
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v0, "com.android.billingclient.api.PurchaseHistoryResponseListener"

    .line 471
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v0, "com.android.billingclient.api.QueryPurchaseHistoryParams"

    .line 473
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.android.billingclient.api.QueryPurchasesParams"

    .line 475
    invoke-static {v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.android.billingclient.api.PurchasesResponseListener"

    .line 477
    invoke-static {v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-eqz v4, :cond_d

    if-eqz v6, :cond_d

    if-nez v8, :cond_1

    if-eqz v9, :cond_d

    :cond_1
    if-nez v12, :cond_2

    if-eqz v13, :cond_d

    :cond_2
    if-eqz v11, :cond_d

    if-nez v14, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 489
    const-class v15, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v15, v3, v2

    const-string v15, "queryPurchases"

    invoke-static {v4, v15, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v2, [Ljava/lang/Class;

    move-object/from16 v17, v15

    const-string v15, "getPurchasesList"

    .line 490
    invoke-static {v5, v15, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    new-array v3, v2, [Ljava/lang/Class;

    const-string v15, "getOriginalJson"

    .line 491
    invoke-static {v6, v15, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    new-array v3, v2, [Ljava/lang/Class;

    .line 492
    invoke-static {v8, v15, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 494
    sget-object v3, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper$Companion;

    invoke-virtual {v3, v9, v10}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper$Companion;->getProductDetailMethodsWrapper(Ljava/lang/Class;Ljava/lang/Class;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v21

    new-array v3, v2, [Ljava/lang/Class;

    .line 500
    invoke-static {v11, v15, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v22

    .line 502
    invoke-virtual/range {v27 .. v27}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getSkuDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    move-result-object v3

    const/4 v15, 0x2

    if-eqz v3, :cond_5

    new-array v3, v15, [Ljava/lang/Class;

    .line 506
    invoke-virtual/range {v27 .. v27}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getSkuDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper$ReflectParams;

    move-result-object v24

    if-eqz v24, :cond_4

    invoke-virtual/range {v24 .. v24}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/SkuDetailsParamsWrapper$ReflectParams;->getSkuDetailsParamsClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v24

    goto :goto_0

    :cond_4
    const/16 v24, 0x0

    :goto_0
    aput-object v24, v3, v2

    const/16 v16, 0x1

    aput-object v12, v3, v16

    const-string v2, "querySkuDetailsAsync"

    .line 503
    invoke-static {v4, v2, v3}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_1

    :cond_5
    const/16 v25, 0x0

    .line 514
    :goto_1
    invoke-virtual/range {v27 .. v27}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getProductDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    move-result-object v2

    if-eqz v2, :cond_7

    new-array v2, v15, [Ljava/lang/Class;

    .line 518
    invoke-virtual/range {v27 .. v27}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;->getProductDetailParamsWrapper()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper;->getReflectParams()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailsParamsWrapper$ReflectParams;->getProductDetailsParamsClazz$tap_db_release()Ljava/lang/Class;

    move-result-object v3

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    const/16 v24, 0x0

    aput-object v3, v2, v24

    const/4 v3, 0x1

    aput-object v13, v2, v3

    const-string v3, "queryProductDetailsAsync"

    .line 515
    invoke-static {v4, v3, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_3

    :cond_7
    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_3
    new-array v2, v15, [Ljava/lang/Class;

    .line 529
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v24

    const/4 v3, 0x1

    aput-object v14, v2, v3

    const-string v3, "queryPurchaseHistoryAsync"

    .line 526
    invoke-static {v4, v3, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v31

    new-array v2, v15, [Ljava/lang/Class;

    aput-object v0, v2, v24

    const/4 v0, 0x1

    aput-object v14, v2, v0

    .line 534
    invoke-static {v4, v3, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v32

    new-array v2, v15, [Ljava/lang/Class;

    .line 545
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v24

    aput-object v7, v2, v0

    const-string v3, "queryPurchasesAsync"

    .line 542
    invoke-static {v4, v3, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    new-array v2, v15, [Ljava/lang/Class;

    aput-object v1, v2, v24

    aput-object v7, v2, v0

    .line 550
    invoke-static {v4, v3, v2}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v17, :cond_8

    if-nez v16, :cond_8

    if-eqz v0, :cond_d

    :cond_8
    if-eqz v19, :cond_d

    if-nez v20, :cond_9

    if-eqz v21, :cond_d

    :cond_9
    if-eqz v22, :cond_d

    if-nez v25, :cond_a

    if-eqz v26, :cond_d

    :cond_a
    if-nez v31, :cond_b

    if-nez v32, :cond_b

    goto :goto_4

    :cond_b
    move-object/from16 v15, p0

    move-object/from16 v2, p1

    .line 568
    invoke-direct {v15, v2, v4}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->createBillingClient(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_c

    return-void

    .line 570
    :cond_c
    new-instance v33, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-object/from16 v1, v33

    .line 597
    new-instance v23, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;

    move-object/from16 v28, v23

    invoke-direct/range {v23 .. v23}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;-><init>()V

    .line 598
    new-instance v23, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;

    move-object/from16 v29, v23

    invoke-direct/range {v23 .. v23}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;-><init>()V

    const/16 v30, 0x0

    move-object/from16 v2, p1

    move-object/from16 v15, v17

    move-object/from16 v17, v0

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v31

    move-object/from16 v26, v32

    .line 570
    invoke-direct/range {v1 .. v30}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseQueryDetailsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchasesParamsWrapper;Lcom/taptap/sdk/core/internal/event/iap/lib2plus/QueryPurchaseHistoryParamsWrapper;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 569
    invoke-static/range {v33 .. v33}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$setInstance$cp(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)V

    .line 600
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.taptap.sdk.core.internal.event.iap.lib2plus.InAppPurchaseBillingClientWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$startConnection(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)V

    :cond_d
    :goto_4
    return-void
.end method


# virtual methods
.method public final declared-synchronized getOrCreateInstance(Landroid/content/Context;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 451
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->createInstance(Landroid/content/Context;)V

    .line 452
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getInitialized$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 453
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getInstance$cp()Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getPurchaseDetailsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getPurchaseDetailsMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSkuDetailsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 443
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getSkuDetailsMap$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final isServiceConnected()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 439
    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$isServiceConnected$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method
