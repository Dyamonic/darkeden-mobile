.class public interface abstract Lcom/yofi/sdk/interfaces/ISDKApi;
.super Ljava/lang/Object;
.source "ISDKApi.java"


# virtual methods
.method public abstract bindPhone(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
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

.method public abstract destory(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation
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

.method public abstract execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V
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

.method public abstract gameStage(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stage"
        }
    .end annotation
.end method

.method public abstract getAge()I
.end method

.method public abstract getAppChannel()I
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getAppPrivateKey()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getModel()Ljava/lang/String;
.end method

.method public abstract getOS()Ljava/lang/String;
.end method

.method public abstract getOaid()Ljava/lang/String;
.end method

.method public abstract getPhoneNum()Ljava/lang/String;
.end method

.method public abstract getSDKName()Ljava/lang/String;
.end method

.method public abstract getServerState(Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
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

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract getWechatAppId()Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/app/Activity;ZLcom/yofi/sdk/IFlashCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "var1",
            "isLandScape",
            "cb"
        }
    .end annotation
.end method

.method public abstract isTourist()Ljava/lang/Boolean;
.end method

.method public abstract login(Landroid/app/Activity;Lcom/yofi/sdk/OnLoginCallback;)V
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

.method public abstract onApplicationCreate(Landroid/app/Application;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
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

.method public abstract pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V
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

.method public abstract setScreenIsLandScape(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLandScape"
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

.method public abstract submitGameData(Lcom/yofi/sdk/imp/middle/data/GameData;I)V
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
