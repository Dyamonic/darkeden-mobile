.class public final Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;
.super Ljava/lang/Object;
.source "BillingLib2PlusTracker.kt"

# interfaces
.implements Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;",
        "Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;",
        "()V",
        "BILLING_CLIENT_PURCHASE_NAME",
        "",
        "TAG",
        "listener",
        "Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;",
        "logPurchase",
        "",
        "setOnLogPurchaseListener",
        "l",
        "startTracker",
        "context",
        "Landroid/content/Context;",
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
.field private static final BILLING_CLIENT_PURCHASE_NAME:Ljava/lang/String;

.field public static final INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

.field private static final TAG:Ljava/lang/String; = "BillingLib2PlusTracker"

.field private static listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

    const-string v0, "com.android.billingclient.api.Purchase"

    .line 12
    sput-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->BILLING_CLIENT_PURCHASE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$6bJuk3SusT98uh6SpeB_7TtGL4M()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->startTracker$lambda$1()V

    return-void
.end method

.method public static synthetic lambda$UGqxfwg9GxUP3QJTScKDiUPyVZc()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->startTracker$lambda$0()V

    return-void
.end method

.method private final logPurchase()V
    .locals 5

    .line 47
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getPurchaseDetailsMap()Ljava/util/Map;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getSkuDetailsMap()Ljava/util/Map;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/iap/lib2plus/InAppPurchaseLoggerManager;->filterPurchaseLogging(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 53
    sget-object v3, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v2, v1, v4}, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;->onLogPurchase(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getPurchaseDetailsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private static final startTracker$lambda$0()V
    .locals 1

    .line 30
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->logPurchase()V

    return-void
.end method

.method private static final startTracker$lambda$1()V
    .locals 1

    .line 32
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->logPurchase()V

    return-void
.end method


# virtual methods
.method public setOnLogPurchaseListener(Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sput-object p1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->listener:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

    return-void
.end method

.method public startTracker(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BillingLib2PlusTracker"

    const-string v1, "BillingLib2PlusTracker startTracker"

    .line 17
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->BILLING_CLIENT_PURCHASE_NAME:Ljava/lang/String;

    invoke-static {v1}, Lcom/taptap/sdk/core/internal/event/iap/common/InAppPurchaseUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "BillingLib2PlusTracker purchase class enabled"

    .line 23
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->getOrCreateInstance(Landroid/content/Context;)Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v1, "BillingLib2PlusTracker billingClientWrapper enabled"

    .line 26
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->Companion:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper$Companion;->isServiceConnected()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2plus/InAppPurchaseLoggerManager;->eligibleQueryPurchaseHistory()Z

    move-result v0

    const-string v1, "inapp"

    if-eqz v0, :cond_2

    .line 30
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$BillingLib2PlusTracker$UGqxfwg9GxUP3QJTScKDiUPyVZc;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$BillingLib2PlusTracker$UGqxfwg9GxUP3QJTScKDiUPyVZc;

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchaseHistory(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 32
    :cond_2
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$BillingLib2PlusTracker$6bJuk3SusT98uh6SpeB_7TtGL4M;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/-$$Lambda$BillingLib2PlusTracker$6bJuk3SusT98uh6SpeB_7TtGL4M;

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/InAppPurchaseBillingClientWrapper;->queryPurchase(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopTracker()V
    .locals 0

    return-void
.end method
