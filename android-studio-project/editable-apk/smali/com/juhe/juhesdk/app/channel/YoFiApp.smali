.class public Lcom/juhe/juhesdk/app/channel/YoFiApp;
.super Ljava/lang/Object;
.source "YoFiApp.java"

# interfaces
.implements Lcom/juhe/juhesdk/interfaces/IAppApi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string p1, "YoFiApp"

    const-string v0, "attachBaseContext"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkedPermission(Landroid/app/Activity;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public initApp()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/juhe/juhesdk/app/JuHeApplication;->getContextObject()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/yofi/sdk/YoFiSDK;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method

.method public loadLib()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method

.method public onTerminate()V
    .locals 0

    return-void
.end method
