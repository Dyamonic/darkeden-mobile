.class public interface abstract Lcom/juhe/juhesdk/interfaces/ISDKApi;
.super Ljava/lang/Object;
.source "ISDKApi.java"


# virtual methods
.method public abstract clearWebCache()V
.end method

.method public abstract eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V
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
.end method

.method public abstract exitGame()V
.end method

.method public abstract finish()V
.end method

.method public abstract getOaid()Ljava/lang/String;
.end method

.method public abstract getServerState(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "cb"
        }
    .end annotation
.end method

.method public abstract init(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "var1",
            "cb",
            "savedInstanceState"
        }
    .end annotation
.end method

.method public abstract initSplashChannel(Lcom/juhe/juhesdk/sdk/IFlashCallback;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cb",
            "activity"
        }
    .end annotation
.end method

.method public abstract login(Landroid/app/Activity;Lcom/juhe/juhesdk/sdk/OnLoginCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "var3"
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onBackPressed(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation
.end method

.method public abstract onDestroy(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation
.end method

.method public abstract onPause(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation
.end method

.method public abstract onRestart(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onRestoreInstanceState(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation
.end method

.method public abstract onResume(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation
.end method

.method public abstract onStart(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onStop(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract onWindowFocusChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation
.end method

.method public abstract pay(Landroid/content/Context;Lcom/juhe/juhesdk/middle/data/PayInfo;Lcom/juhe/juhesdk/sdk/IFlashCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "var1",
            "var2",
            "var3"
        }
    .end annotation
.end method

.method public abstract showContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "roleId",
            "roleName",
            "serverId",
            "serverName"
        }
    .end annotation
.end method

.method public abstract showUserCenter()V
.end method

.method public abstract submitGameData(Lcom/juhe/juhesdk/middle/data/GameData;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation
.end method

.method public abstract switchAccount(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract tapTapOpenReview()V
.end method
