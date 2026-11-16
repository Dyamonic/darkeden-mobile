.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapper.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProductDetailsResponseListenerWrapper"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J0\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000fH\u0096\u0002\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0014H\u0002R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;",
        "Ljava/lang/reflect/InvocationHandler;",
        "runnable",
        "Ljava/lang/Runnable;",
        "(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V",
        "getRunnable",
        "()Ljava/lang/Runnable;",
        "setRunnable",
        "(Ljava/lang/Runnable;)V",
        "invoke",
        "",
        "proxy",
        "m",
        "Ljava/lang/reflect/Method;",
        "args",
        "",
        "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;",
        "parseProductDetails",
        "",
        "productDetailsObjectList",
        "",
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
.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;


# direct methods
.method public constructor <init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final parseProductDetails(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v1

    .line 378
    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetProductIdMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 376
    invoke-static {v1, v2, v0, v5}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 382
    :goto_2
    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v2

    .line 383
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v5}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetProductNameMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v3

    :goto_3
    new-array v6, v4, [Ljava/lang/Object;

    .line 381
    invoke-static {v2, v5, v0, v6}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_4

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v2, v3

    .line 387
    :goto_4
    iget-object v5, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v5}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v5

    .line 388
    iget-object v6, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v6}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetProductTitleMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object v6, v3

    :goto_5
    new-array v7, v4, [Ljava/lang/Object;

    .line 386
    invoke-static {v5, v6, v0, v7}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v5, v3

    .line 392
    :goto_6
    iget-object v6, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v6}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v6

    .line 393
    iget-object v7, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetProductDescriptionMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    goto :goto_7

    :cond_7
    move-object v7, v3

    :goto_7
    new-array v8, v4, [Ljava/lang/Object;

    .line 391
    invoke-static {v6, v7, v0, v8}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_8

    check-cast v6, Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v6, v3

    .line 398
    :goto_8
    iget-object v7, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v7

    .line 399
    iget-object v8, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetOneTimePurchaseOfferDetailsMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_9

    :cond_9
    move-object v8, v3

    :goto_9
    new-array v9, v4, [Ljava/lang/Object;

    .line 397
    invoke-static {v7, v8, v0, v9}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    iget-object v7, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v7}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsOneTimePurchaseOfferDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v7

    .line 405
    iget-object v8, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetPriceAmountMicrosMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    goto :goto_a

    :cond_a
    move-object v8, v3

    :goto_a
    new-array v9, v4, [Ljava/lang/Object;

    .line 403
    invoke-static {v7, v8, v0, v9}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_b

    check-cast v7, Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object v7, v3

    .line 410
    :goto_b
    iget-object v8, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v8}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailsOneTimePurchaseOfferDetailsClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v8

    .line 411
    iget-object v9, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v9}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getProductDetailMethodsWrapper$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;->getGetPriceCurrencyCodeMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object v9, v3

    :goto_c
    new-array v10, v4, [Ljava/lang/Object;

    .line 409
    invoke-static {v8, v9, v0, v10}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v8, v0, Ljava/lang/String;

    if-eqz v8, :cond_d

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 415
    :cond_d
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const/4 v4, 0x1

    :cond_f
    if-nez v4, :cond_0

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "productId"

    .line 417
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "title"

    .line 418
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "name"

    .line 419
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "description"

    .line 420
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "price_amount_micros"

    .line 421
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "price_currency_code"

    .line 422
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    sget-object v2, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getSkuDetailsMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 429
    :cond_10
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->runnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "m"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ProductDetailsResponseListenerWrapper, method.name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppPurchaseBillingClientWrapper"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onProductDetailsResponse"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 365
    aget-object p1, p3, p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 366
    instance-of p3, p1, Ljava/util/List;

    if-eqz p3, :cond_1

    .line 367
    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->parseProductDetails(Ljava/util/List;)V

    :cond_1
    return-object p2
.end method

.method public final setRunnable(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$ProductDetailsResponseListenerWrapper;->runnable:Ljava/lang/Runnable;

    return-void
.end method
