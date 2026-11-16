.class public Lcom/bytedance/ad/common/uaid/identity/UAIDResult;
.super Ljava/lang/Object;


# instance fields
.field private carrier:Ljava/lang/String;

.field private errCode:Ljava/lang/String;

.field private slot:I

.field private timestamp:J

.field private token:Ljava/lang/String;

.field private vendor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->token:Ljava/lang/String;

    const-string v1, "-11128"

    iput-object v1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->carrier:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->vendor:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->slot:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->timestamp:J

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCarrier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSlot()I
    .locals 1

    iget v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->slot:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->timestamp:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->token:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->vendor:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->carrier:Ljava/lang/String;

    iput p5, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->slot:I

    iput-wide p6, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->timestamp:J

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setSlot(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->slot:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->timestamp:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->token:Ljava/lang/String;

    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->vendor:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "tk"

    iget-object v2, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "vd"

    iget-object v3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->vendor:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cr"

    iget-object v3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "err"

    iget-object v3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->errCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sl"

    iget v3, p0, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->slot:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/ad/common/uaid/identity/UAIDResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
