.class public final synthetic Lcom/juhe/juhesdk/interfaces/ISDKApi$-CC;
.super Ljava/lang/Object;
.source "ISDKApi.java"


# direct methods
.method public static $default$clearWebCache(Lcom/juhe/juhesdk/interfaces/ISDKApi;)V
    .locals 0

    return-void
.end method

.method public static $default$eventRecord(Lcom/juhe/juhesdk/interfaces/ISDKApi;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "bundle"
        }
    .end annotation

    return-void
.end method

.method public static $default$finish(Lcom/juhe/juhesdk/interfaces/ISDKApi;)V
    .locals 0

    return-void
.end method

.method public static $default$getOaid(Lcom/juhe/juhesdk/interfaces/ISDKApi;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static $default$onAttachedToWindow(Lcom/juhe/juhesdk/interfaces/ISDKApi;)V
    .locals 0

    return-void
.end method

.method public static $default$onConfigurationChanged(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    return-void
.end method

.method public static $default$onRestoreInstanceState(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    return-void
.end method

.method public static $default$onSaveInstanceState(Lcom/juhe/juhesdk/interfaces/ISDKApi;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    return-void
.end method

.method public static $default$onWindowFocusChanged(Lcom/juhe/juhesdk/interfaces/ISDKApi;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    return-void
.end method

.method public static $default$tapTapOpenReview(Lcom/juhe/juhesdk/interfaces/ISDKApi;)V
    .locals 0

    return-void
.end method
