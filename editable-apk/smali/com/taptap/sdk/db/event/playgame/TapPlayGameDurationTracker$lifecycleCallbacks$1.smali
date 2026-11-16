.class public final Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "TapPlayGameDurationTracker.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1",
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "onBackground",
        "",
        "context",
        "Landroid/content/Context;",
        "onForeground",
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

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 221
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityCreated(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityDestroyed(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityPaused(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityResumed(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 221
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivitySaveInstanceState(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityStarted(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 221
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityStopped(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onBackground(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onBackground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    .line 231
    sget-object p1, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;

    const-string v0, "event__background"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->reportTechnicalLog$default(Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 232
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$handleAppOnBackground(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    return-void
.end method

.method public onForeground(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onForeground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    .line 225
    sget-object p1, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;

    const-string v0, "event__foreground"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;->reportTechnicalLog$default(Lcom/taptap/sdk/db/event/utils/TapOpenlogHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 226
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-static {p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->access$handleAppOnForeground(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V

    return-void
.end method
