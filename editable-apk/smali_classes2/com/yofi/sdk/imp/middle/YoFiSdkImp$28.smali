.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->onApplicationCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2068
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 2074
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1808(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    .line 2075
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2077
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$2000(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 2091
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1902(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    .line 2092
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1810(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    .line 2093
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    move-result p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2095
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$28;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$2100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V

    :cond_0
    return-void
.end method
