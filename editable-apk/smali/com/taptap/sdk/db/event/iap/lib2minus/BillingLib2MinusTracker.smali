.class public final Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;
.super Ljava/lang/Object;
.source "BillingLib2MinusTracker.kt"

# interfaces
.implements Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0002J0\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u001ej\u0008\u0012\u0004\u0012\u00020\u0004`\u001f2\u0006\u0010 \u001a\u00020\u000bH\u0002J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u0015H\u0016J\u0010\u0010#\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0002J\u0008\u0010%\u001a\u00020\u0019H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0007*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;",
        "Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;",
        "()V",
        "BILLING_ACTIVITY_NAME",
        "",
        "SERVICE_INTERFACE_NAME",
        "TAG",
        "kotlin.jvm.PlatformType",
        "callbacks",
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "hasBillingActivity",
        "",
        "Ljava/lang/Boolean;",
        "hasBillingService",
        "inAppBillingObj",
        "",
        "intent",
        "Landroid/content/Intent;",
        "isTracking",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "listener",
        "Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;",
        "serviceConnection",
        "Landroid/content/ServiceConnection;",
        "initializeIfNotInitialized",
        "",
        "logPurchase",
        "context",
        "Landroid/content/Context;",
        "purchases",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "isSubscription",
        "setOnLogPurchaseListener",
        "l",
        "startTracker",
        "startTracking",
        "stopTracker",
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
.field private static final BILLING_ACTIVITY_NAME:Ljava/lang/String; = "com.android.billingclient.api.ProxyBillingActivity"

.field public static final INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

.field private static final SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final TAG:Ljava/lang/String;

.field private static callbacks:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

.field private static hasBillingActivity:Ljava/lang/Boolean;

.field private static hasBillingService:Ljava/lang/Boolean;

.field private static inAppBillingObj:Ljava/lang/Object;

.field private static intent:Landroid/content/Intent;

.field private static final isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    .line 24
    const-class v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHasBillingActivity$p()Ljava/lang/Boolean;
    .locals 1

    .line 23
    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->hasBillingActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$getInAppBillingObj$p()Ljava/lang/Object;
    .locals 1

    .line 23
    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$logPurchase(Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static final synthetic access$setInAppBillingObj$p(Ljava/lang/Object;)V
    .locals 0

    .line 23
    sput-object p0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->inAppBillingObj:Ljava/lang/Object;

    return-void
.end method

.method private final initializeIfNotInitialized()V
    .locals 4

    .line 66
    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->hasBillingService:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 70
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->hasBillingService:Ljava/lang/Boolean;

    .line 71
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "com.android.billingclient.api.ProxyBillingActivity"

    .line 75
    invoke-static {v0}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->hasBillingActivity:Ljava/lang/Boolean;

    .line 77
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/common/IAPEventUtils;->clearSkuDetailsCache()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(\"com.android.vend\u2026ge(\"com.android.vending\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->intent:Landroid/content/Intent;

    .line 83
    new-instance v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$1;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$1;-><init>()V

    check-cast v0, Landroid/content/ServiceConnection;

    .line 82
    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->serviceConnection:Landroid/content/ServiceConnection;

    .line 92
    new-instance v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2;-><init>()V

    check-cast v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    .line 91
    sput-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->callbacks:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    return-void
.end method

.method private final logPurchase(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "productId"

    .line 168
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "sku"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "purchase"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 172
    sget-object v3, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->TAG:Ljava/lang/String;

    check-cast v2, Ljava/lang/Throwable;

    const-string v4, "Error parsing in-app purchase data."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 176
    :cond_1
    sget-object p2, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->inAppBillingObj:Ljava/lang/Object;

    invoke-static {p1, v1, p2, p3}, Lcom/taptap/sdk/db/event/iap/common/IAPEventUtils;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 179
    sget-object v2, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1, p2, p3}, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;->onLogPurchase(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private final startTracking()V
    .locals 5

    .line 144
    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    sget-object v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->callbacks:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const-string v1, "callbacks"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->registerActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 149
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    .line 150
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_4

    .line 151
    sget-object v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    const-string v1, "intent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    sget-object v4, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v4, :cond_3

    const-string v4, "serviceConnection"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public setOnLogPurchaseListener(Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sput-object p1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

    return-void
.end method

.method public startTracker(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->initializeIfNotInitialized()V

    .line 41
    sget-object p1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->hasBillingService:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->startTracking()V

    return-void
.end method

.method public stopTracker()V
    .locals 3

    .line 49
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    sget-object v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->callbacks:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "callbacks"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->unregisterActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 51
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    .line 52
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 53
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    .line 54
    sget-object v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->inAppBillingObj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    if-nez v1, :cond_1

    const-string v1, "serviceConnection"

    .line 55
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 53
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
