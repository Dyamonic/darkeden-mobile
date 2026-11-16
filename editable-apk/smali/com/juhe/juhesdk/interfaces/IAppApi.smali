.class public interface abstract Lcom/juhe/juhesdk/interfaces/IAppApi;
.super Ljava/lang/Object;
.source "IAppApi.java"


# virtual methods
.method public abstract attachBaseContext(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract checkedPermission(Landroid/app/Activity;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract initApp()V
.end method

.method public abstract loadLib()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract onTerminate()V
.end method
