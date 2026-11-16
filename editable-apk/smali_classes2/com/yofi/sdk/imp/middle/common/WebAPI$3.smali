.class final Lcom/yofi/sdk/imp/middle/common/WebAPI$3;
.super Ljava/lang/Object;
.source "WebAPI.java"

# interfaces
.implements Lcom/yofi/sdk/imp/middle/common/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/WebAPI;->getWithFormData(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/yofi/sdk/web/WebAPICallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/web/WebAPICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$cb"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

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

    .line 133
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, ""

    .line 134
    invoke-interface {p1, v0, v1}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

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

    .line 125
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38"

    .line 126
    invoke-interface {p1, p2, v0}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_1

    const-string p1, "code"

    .line 109
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {p1, v0}, Lcom/yofi/sdk/web/WebAPICallback;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$3;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-string v1, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38"

    .line 119
    invoke-interface {p1, v0, v1}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
