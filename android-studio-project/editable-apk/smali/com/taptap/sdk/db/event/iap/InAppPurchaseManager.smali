.class public final Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;
.super Ljava/lang/Object;
.source "InAppPurchaseManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0011\u001a\u00020\u000eH\u0007J\u0008\u0010\u0012\u001a\u00020\u000eH\u0007J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;",
        "",
        "()V",
        "GOOGLE_BILLINGCLIENT_VERSION",
        "",
        "TAG",
        "enabled",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "lifecycleCallbacks",
        "com/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1",
        "Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;",
        "tracker",
        "Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;",
        "setEnableAutoLogging",
        "",
        "enable",
        "",
        "startTracking",
        "stopTracking",
        "usingBillingLib2Plus",
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
.field private static final GOOGLE_BILLINGCLIENT_VERSION:Ljava/lang/String; = "com.google.android.play.billingclient.version"

.field public static final INSTANCE:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;

.field private static final TAG:Ljava/lang/String; = "InAppPurchaseManager"

.field private static final enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final lifecycleCallbacks:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;

.field private static tracker:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->INSTANCE:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->lifecycleCallbacks:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setEnableAutoLogging(Z)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 28
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppPurchaseManager setEnableAutoLogging enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppPurchaseManager"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 32
    sget-object p0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->lifecycleCallbacks:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;

    check-cast v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->registerActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 33
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->startTracking()V

    goto :goto_0

    .line 35
    :cond_0
    sget-object p0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->lifecycleCallbacks:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$lifecycleCallbacks$1;

    check-cast v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->unregisterActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 36
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->stopTracking()V

    :goto_0
    return-void
.end method

.method public static final startTracking()V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->enabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->tracker:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    const/4 v1, 0x0

    const-string v2, "tracker"

    if-nez v0, :cond_2

    .line 44
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->INSTANCE:Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->usingBillingLib2Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;->INSTANCE:Lcom/taptap/sdk/core/internal/event/iap/lib2plus/BillingLib2PlusTracker;

    check-cast v0, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    check-cast v0, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    .line 44
    :goto_0
    sput-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->tracker:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    if-nez v0, :cond_1

    .line 49
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v3, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$startTracking$2;

    invoke-direct {v3}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager$startTracking$2;-><init>()V

    check-cast v3, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;

    invoke-interface {v0, v3}, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;->setOnLogPurchaseListener(Lcom/taptap/sdk/db/event/iap/common/IIAPTracker$ILogPurchaseListener;)V

    .line 60
    :cond_2
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->tracker:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;->startTracker(Landroid/content/Context;)V

    :cond_4
    return-void
.end method

.method public static final stopTracking()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 66
    sget-object v0, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->tracker:Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    const-string v0, "tracker"

    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/taptap/sdk/db/event/iap/common/IIAPTracker;->stopTracker()V

    :cond_1
    return-void
.end method

.method private final usingBillingLib2Plus()Z
    .locals 8

    const/4 v0, 0x0

    .line 73
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 75
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "context.packageManager.g\u2026TA_DATA\n                )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.google.android.play.billingclient.version"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 81
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method
