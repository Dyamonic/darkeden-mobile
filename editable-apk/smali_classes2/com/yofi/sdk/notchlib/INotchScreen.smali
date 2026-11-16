.class public interface abstract Lcom/yofi/sdk/notchlib/INotchScreen;
.super Ljava/lang/Object;
.source "INotchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;,
        Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;,
        Lcom/yofi/sdk/notchlib/INotchScreen$HasNotchCallback;,
        Lcom/yofi/sdk/notchlib/INotchScreen$NotchSizeCallback;
    }
.end annotation


# virtual methods
.method public abstract getNotchRect(Landroid/app/Activity;Lcom/yofi/sdk/notchlib/INotchScreen$NotchSizeCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation
.end method

.method public abstract hasNotch(Landroid/app/Activity;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method

.method public abstract setDisplayInNotch(Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation
.end method
