.class public interface abstract Lcom/yofi/sdk/web/WebAPICallback;
.super Ljava/lang/Object;
.source "WebAPICallback.java"


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "var1"
        }
    .end annotation
.end method

.method public abstract onSuccess(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation
.end method
