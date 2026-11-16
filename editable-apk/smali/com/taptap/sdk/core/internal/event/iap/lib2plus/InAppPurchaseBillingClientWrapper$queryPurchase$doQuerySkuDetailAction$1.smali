.class final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppPurchaseBillingClientWrapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "purchaseList",
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
.field final synthetic $querySkuRunnable:Ljava/lang/Runnable;

.field final synthetic $skuType:Ljava/lang/String;

.field final synthetic this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    iput-object p2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->$skuType:Ljava/lang/String;

    iput-object p3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->$querySkuRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "productId"

    if-eqz p1, :cond_4

    .line 100
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 102
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v3}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getPurchaseClazz$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/Class;

    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    invoke-static {v4}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$getGetOriginalJsonMethod$p(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 105
    invoke-static {v3, v4, v2, v5}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->invokeMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v4, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v4}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getPurchaseDetailsMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "skuID"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_3
    iget-object p1, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->this$0:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    iget-object v0, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->$skuType:Ljava/lang/String;

    iget-object v2, p0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$queryPurchase$doQuerySkuDetailAction$1;->$querySkuRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v0, v1, v2}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->access$queryDetailsAsync(Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
