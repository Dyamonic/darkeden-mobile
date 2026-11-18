.class public final Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2;
.super Ljava/lang/Object;
.source "BillingLib2MinusTracker.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->initializeIfNotInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2",
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "onActivityCreated",
        "",
        "activity",
        "Landroid/app/Activity;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onActivityDestroyed",
        "onActivityPaused",
        "onActivityResumed",
        "onActivitySaveInstanceState",
        "outState",
        "onActivityStarted",
        "onActivityStopped",
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
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$9VlITwKy_MruzDE6C9NyEXPpKc8()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2;->onActivityStopped$lambda$1()V

    return-void
.end method

.method public static synthetic lambda$GDxwvDI2aMqwB9qyQWJ6wkczBgs()V
    .locals 0

    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker$initializeIfNotInitialized$2;->onActivityResumed$lambda$0()V

    return-void
.end method

.method private static final onActivityResumed$lambda$0()V
    .locals 4

    .line 96
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$getInAppBillingObj$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/iap/common/IAPEventUtils;->getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$logPurchase(Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private static final onActivityStopped$lambda$1()V
    .locals 4

    .line 118
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$getInAppBillingObj$p()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/iap/common/IAPEventUtils;->getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$getInAppBillingObj$p()Ljava/lang/Object;

    move-result-object v1

    .line 123
    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/iap/common/IAPEventUtils;->getPurchaseHistoryInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 128
    :cond_0
    sget-object v2, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$logPurchase(Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$GDxwvDI2aMqwB9qyQWJ6wkczBgs;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$GDxwvDI2aMqwB9qyQWJ6wkczBgs;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :try_start_0
    invoke-static {}, Lcom/taptap/sdk/db/event/iap/lib2minus/BillingLib2MinusTracker;->access$getHasBillingActivity$p()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Lcom/taptap/sdk/kit/internal/executor/TapNetExecutor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    sget-object v0, Lcom/taptap/sdk/db/event/iap/lib2minus/-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$9VlITwKy_MruzDE6C9NyEXPpKc8;->INSTANCE:Lcom/taptap/sdk/db/event/iap/lib2minus/-$$Lambda$BillingLib2MinusTracker$initializeIfNotInitialized$2$9VlITwKy_MruzDE6C9NyEXPpKc8;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onBackground(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onBackground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    return-void
.end method

.method public onForeground(Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onForeground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    return-void
.end method
