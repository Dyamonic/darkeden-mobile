.class public final Lcom/taptap/sdk/openlog/TapTapOpenlogSdk$activityLifecycleCallbacks$1;
.super Ljava/lang/Object;
.source "TapTapOpenlogSdk.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;
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
        "com/taptap/sdk/openlog/TapTapOpenlogSdk$activityLifecycleCallbacks$1",
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "onBackground",
        "",
        "context",
        "Landroid/content/Context;",
        "onForeground",
        "tap-openlog_release"
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityCreated(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityDestroyed(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityPaused(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityResumed(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivitySaveInstanceState(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityStarted(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onActivityStopped(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/app/Activity;)V

    return-void
.end method

.method public onBackground(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onBackground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    .line 74
    sget-object p1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->isHeartbeatEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    sget-object p1, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    invoke-virtual {p1}, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->onBackground()V

    :cond_0
    return-void
.end method

.method public onForeground(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks$DefaultImpls;->onForeground(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;Landroid/content/Context;)V

    .line 67
    sget-object p1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {p1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->isHeartbeatEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 68
    sget-object p1, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->INSTANCE:Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;

    invoke-virtual {p1}, Lcom/taptap/sdk/openlog/internal/TapOpenLogRemote;->onForeground()V

    :cond_0
    return-void
.end method
