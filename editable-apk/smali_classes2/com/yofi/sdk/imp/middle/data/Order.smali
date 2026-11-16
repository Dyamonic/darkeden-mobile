.class public Lcom/yofi/sdk/imp/middle/data/Order;
.super Ljava/lang/Object;
.source "Order.java"


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private googleOrderId:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payType:Ljava/lang/String;

.field private sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderId",
            "sku",
            "payType",
            "cpOrderId"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->orderId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/data/Order;->sku:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/data/Order;->payType:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/data/Order;->cpOrderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Order;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleOrderId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Order;->googleOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Order;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Order;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Order;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public setGoogleOrderId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleOrderId"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->googleOrderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderId"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payType"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->payType:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setSku(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sku"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Order;->sku:Ljava/lang/String;

    return-void
.end method
