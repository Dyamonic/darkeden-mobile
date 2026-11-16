.class public Lcom/yofi/sdk/activity/ContainerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ContainerActivity.java"


# instance fields
.field private functionCode:I

.field private view:Lcom/yofi/sdk/interfaces/IContainerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private createView(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    const-string v0, "FUNCTION_CODE"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->functionCode:I

    .line 64
    invoke-static {}, Lcom/yofi/sdk/SDKLoader;->instance()Lcom/yofi/sdk/SDKLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader;->getViewBuilder()Lcom/yofi/sdk/interfaces/IViewBuilder;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yofi/sdk/interfaces/IViewBuilder;->create(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)Lcom/yofi/sdk/interfaces/IContainerView;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    return-void
.end method


# virtual methods
.method public getFunctionCode()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->functionCode:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 84
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    invoke-interface {v0, p1, p2, p3}, Lcom/yofi/sdk/interfaces/IContainerView;->onResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/IContainerView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/ContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/yofi/sdk/activity/ContainerActivity;->createView(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->addActivity(Landroid/app/Activity;)V

    .line 29
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/IContainerView;->onDestory()V

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 91
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->removeActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    invoke-interface {v0, p1, p2}, Lcom/yofi/sdk/interfaces/IContainerView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yofi/sdk/activity/ContainerActivity;->view:Lcom/yofi/sdk/interfaces/IContainerView;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/yofi/sdk/interfaces/IContainerView;->onResume()V

    .line 57
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 58
    invoke-static {}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->setDisplayInNotch(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 35
    invoke-virtual {p0}, Lcom/yofi/sdk/activity/ContainerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public setFunctionCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionCode"
        }
    .end annotation

    .line 50
    iput p1, p0, Lcom/yofi/sdk/activity/ContainerActivity;->functionCode:I

    return-void
.end method
