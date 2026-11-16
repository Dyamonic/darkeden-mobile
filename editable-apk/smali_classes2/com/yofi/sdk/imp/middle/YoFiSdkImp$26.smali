.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getOrderSatusToUpdataToutiao(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$orderAmount:Ljava/lang/String;

.field final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;Ljava/lang/String;)V
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

    .line 1917
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->val$orderAmount:Ljava/lang/String;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->val$orderId:Ljava/lang/String;

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

    const-string p2, "\u8c03\u7528getOrderSatusToUpdataToutiao onFailure: "

    .line 1938
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "YoFiSdkImp"

    .line 1921
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c03\u7528getOrderSatusToUpdataToutiao onSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "data"

    .line 1922
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 1925
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->val$orderAmount:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    const-string v1, "\u8c03\u7528getOrderSatusToUpdataToutiao onSuccess \u5f00\u59cb\u8c03\u7528clientReportOrderToAd"

    .line 1928
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$26;->val$orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->clientReportOrderToAd(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1932
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
