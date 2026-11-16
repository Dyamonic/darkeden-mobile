.class public interface abstract Lcom/juhe/juhesdk/notchlib/INotchScreen;
.super Ljava/lang/Object;
.source "INotchScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchScreenInfo;,
        Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchScreenCallback;,
        Lcom/juhe/juhesdk/notchlib/INotchScreen$HasNotchCallback;,
        Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;
    }
.end annotation


# virtual methods
.method public abstract getNotchRect(Landroid/app/Activity;Lcom/juhe/juhesdk/notchlib/INotchScreen$NotchSizeCallback;)V
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
