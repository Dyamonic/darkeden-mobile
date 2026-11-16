.class final Lcom/yofi/sdk/imp/middle/common/WebAPI$4;
.super Ljava/lang/Object;
.source "WebAPI.java"

# interfaces
.implements Lcom/yofi/sdk/imp/middle/common/MyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/common/WebAPI;->getCDNConfigParams(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V
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

    .line 733
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

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

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62c9\u53d6\u7684cdn\u5730\u5740\u5931\u8d25 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebAPI"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, ""

    .line 780
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

    .line 769
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u62c9\u53d6\u7684cdn\u5730\u5740\u5931\u8d25 ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WebAPI"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u6b63\u5e38"

    .line 771
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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "WebAPI"

    const/4 v2, 0x1

    .line 744
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62c9\u53d6\u7684cdn\u5730\u5740\u6210\u529fresponse="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {p1}, Lcom/yofi/sdk/utils/RSAUtils;->decryptByPublicKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 747
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62c9\u53d6\u7684cdn\u5730\u5740\u89e3\u7801\u6210\u529foutStr ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 753
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62c9\u53d6\u7684cdn\u5730\u5740\u6210\u529f\u6570\u636e = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {p1, v3}, Lcom/yofi/sdk/web/WebAPICallback;->onSuccess(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string p1, "\u62c9\u53d6\u7684cdn\u5730\u5740\u5931\u8d25 = json\u89e3\u6790\u5931\u8d25 "

    .line 757
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {p1, v2, v0}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 761
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u62c9\u53d6\u7684cdn\u5730\u5740\u5931\u8d25 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/common/WebAPI$4;->val$cb:Lcom/yofi/sdk/web/WebAPICallback;

    invoke-interface {p1, v2, v0}, Lcom/yofi/sdk/web/WebAPICallback;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
