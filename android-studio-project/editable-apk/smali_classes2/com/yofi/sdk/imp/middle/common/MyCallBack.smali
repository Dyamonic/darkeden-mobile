.class public interface abstract Lcom/yofi/sdk/imp/middle/common/MyCallBack;
.super Ljava/lang/Object;
.source "MyCallBack.java"


# virtual methods
.method public abstract onError(Lokhttp3/Response;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method

.method public abstract onFailure(Lokhttp3/Request;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "e"
        }
    .end annotation
.end method

.method public abstract onLoadingBefore(Lokhttp3/Request;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation
.end method
