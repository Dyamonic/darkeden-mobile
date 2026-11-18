.class public interface abstract Lcom/juhe/juhesdk/sdk/OnLoginCallback;
.super Ljava/lang/Object;
.source "OnLoginCallback.java"


# virtual methods
.method public abstract onHaveNewMessages()V
.end method

.method public abstract onLoginFailed(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation
.end method

.method public abstract onLoginSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation
.end method

.method public abstract onLogoutSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation
.end method
