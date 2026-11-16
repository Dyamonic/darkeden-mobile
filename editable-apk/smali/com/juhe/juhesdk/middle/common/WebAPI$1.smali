.class final Lcom/juhe/juhesdk/middle/common/WebAPI$1;
.super Ljava/lang/Object;
.source "WebAPI.java"

# interfaces
.implements Lcom/juhe/juhesdk/middle/common/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/middle/common/WebAPI;->postWithFormData(Ljava/lang/String;Ljava/util/Map;Lcom/juhe/juhesdk/web/WebAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$cb"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/juhe/juhesdk/middle/common/WebAPI$1;->val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lokhttp3/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 59
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/common/WebAPI$1;->val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, ""

    .line 60
    invoke-interface {p1, v0, v1}, Lcom/juhe/juhesdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1
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

    .line 51
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/common/WebAPI$1;->val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/juhe/juhesdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoadingBefore(Lokhttp3/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/juhe/juhesdk/middle/common/WebAPI$1;->val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1, v0}, Lcom/juhe/juhesdk/web/WebAPICallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    iget-object v0, p0, Lcom/juhe/juhesdk/middle/common/WebAPI$1;->val$cb:Lcom/juhe/juhesdk/web/WebAPICallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/juhe/juhesdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
