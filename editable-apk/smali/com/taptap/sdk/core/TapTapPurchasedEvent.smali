.class public final Lcom/taptap/sdk/core/TapTapPurchasedEvent;
.super Ljava/lang/Object;
.source "TapTapPurchasedEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nH\u00c6\u0003JO\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lcom/taptap/sdk/core/TapTapPurchasedEvent;",
        "",
        "orderId",
        "",
        "productName",
        "amount",
        "",
        "currencyType",
        "paymentMethod",
        "properties",
        "Lorg/json/JSONObject;",
        "(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V",
        "getAmount",
        "()D",
        "getCurrencyType",
        "()Ljava/lang/String;",
        "getOrderId",
        "getPaymentMethod",
        "getProductName",
        "getProperties",
        "()Lorg/json/JSONObject;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "tap-db-api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final amount:D

.field private final currencyType:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final paymentMethod:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final properties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    .line 11
    iput-object p5, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    .line 13
    iput-object p7, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    return-void
.end method

.method public static synthetic copy$default(Lcom/taptap/sdk/core/TapTapPurchasedEvent;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/taptap/sdk/core/TapTapPurchasedEvent;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-wide p5, v0

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taptap/sdk/core/TapTapPurchasedEvent;
    .locals 9

    new-instance v8, Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    iget-wide v5, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAmount()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    return-wide v0
.end method

.method public final getCurrencyType()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethod()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Lorg/json/JSONObject;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    invoke-static {v2, v3}, Lcom/taptap/sdk/core/TapTapPurchasedEvent-$$ExternalSynthetic0;->m0(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapTapPurchasedEvent(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currencyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->currencyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->paymentMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->properties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
