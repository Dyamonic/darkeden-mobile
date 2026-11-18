.class final Lcom/hjq/xtoast/ToastLifecycle;
.super Ljava/lang/Object;
.source "ToastLifecycle.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mToast:Lcom/hjq/xtoast/XToast;


# direct methods
.method constructor <init>(Lcom/hjq/xtoast/XToast;Landroid/app/Activity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    .line 21
    iput-object p1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mToast:Lcom/hjq/xtoast/XToast;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    .line 77
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mToast:Lcom/hjq/xtoast/XToast;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/hjq/xtoast/XToast;->recycle()V

    .line 79
    iput-object p1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mToast:Lcom/hjq/xtoast/XToast;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mToast:Lcom/hjq/xtoast/XToast;

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/hjq/xtoast/ToastLifecycle;->mToast:Lcom/hjq/xtoast/XToast;

    invoke-virtual {p1}, Lcom/hjq/xtoast/XToast;->cancel()Lcom/hjq/xtoast/XToast;

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method

.method unregister()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/ToastLifecycle;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    :goto_0
    return-void
.end method
