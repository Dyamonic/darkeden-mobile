.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->clientReportOrderToAd(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$orderAmount:I

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$orderId",
            "val$orderAmount"
        }
    .end annotation

    .line 1947
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
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

    const-string p1, "YoFiSdkImp"

    const-string p2, "\u8c03\u7528clientReportOrderToAd onFailure: "

    .line 1998
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "YoFiSdkImp"

    .line 1951
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528clientReportOrderToAd onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "code"

    .line 1952
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    .line 1953
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "msg"

    .line 1954
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-nez v1, :cond_2

    const-string p1, "isReportToutiao"

    .line 1956
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "isReportTencent"

    .line 1957
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v3, "Purchase"

    const-string v4, "reportType"

    const-string v5, "amount"

    const/4 v6, 0x1

    const-string v7, " |amount: "

    if-ne p1, v6, :cond_0

    .line 1961
    :try_start_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1962
    iget v9, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v8, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1963
    invoke-virtual {v8, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1964
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1966
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u652f\u4ed8\u6210\u529f \u4e0a\u62a5\u5934\u6761  |orderId\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->clientLog(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    .line 1967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u8c03\u7528clientReportOrderToAd onSuccess \u4e0a\u62a5\u5934\u6761 |orderId\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v1, v6, :cond_1

    .line 1972
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1973
    iget v8, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v6, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v5, 0x2

    .line 1974
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1975
    invoke-static {}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->getInstance()Lcom/yofi/sdk/imp/middle/eventreword/EventReword;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lcom/yofi/sdk/imp/middle/eventreword/EventReword;->eventRecord(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1977
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u652f\u4ed8\u6210\u529f \u4e0a\u62a5\u817e\u8baf\u5e7f\u70b9\u901a  |orderId\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/yofi/sdk/imp/middle/manager/LittleApiImp;->clientLog(Ljava/lang/String;Lcom/yofi/sdk/web/WebAPICallback;)V

    .line 1978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8c03\u7528clientReportOrderToAd onSuccess \u4e0a\u62a5\u817e\u8baf\u5e7f\u70b9\u901a |orderId\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->val$orderAmount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    if-nez v1, :cond_2

    const-string p1, "\u8c03\u7528clientReportOrderToAd onSuccess \u901a\u77e5H5\u4e0a\u62a5"

    .line 1984
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$27;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->noticeHideWebViewPaySuccess()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1990
    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientReportOrderToAd"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
