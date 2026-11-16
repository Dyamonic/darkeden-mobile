.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService;->reqRiskDetectV2(Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Bryony;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getStagePackTimeMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getStageReqTimeMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isDowngrade()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method
