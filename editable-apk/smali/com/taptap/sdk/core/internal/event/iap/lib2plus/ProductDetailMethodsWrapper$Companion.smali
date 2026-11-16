.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper$Companion;
.super Ljava/lang/Object;
.source "ProductDetailMethodsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper$Companion;",
        "",
        "()V",
        "getProductDetailMethodsWrapper",
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;",
        "productDetailsClazz",
        "Ljava/lang/Class;",
        "productDetailsOneTimePurchaseOfferDetailsClazz",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProductDetailMethodsWrapper(Ljava/lang/Class;Ljava/lang/Class;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getOneTimePurchaseOfferDetails"

    .line 29
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getProductId"

    .line 33
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getName"

    .line 37
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getTitle"

    .line 41
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getDescription"

    .line 45
    invoke-static {p1, v2, v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array p1, v0, [Ljava/lang/Class;

    const-string v1, "getPriceAmountMicros"

    .line 50
    invoke-static {p2, v1, p1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array p1, v0, [Ljava/lang/Class;

    const-string v0, "getPriceCurrencyCode"

    .line 55
    invoke-static {p2, v0, p1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    if-eqz v4, :cond_0

    .line 62
    new-instance p1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/ProductDetailMethodsWrapper;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
