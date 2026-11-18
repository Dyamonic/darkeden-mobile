.class public final Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq;
.super Lcom/tencent/turingfd/sdk/ams/ad/Blueberry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->a(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->b(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)Z

    move-result v1

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->c(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)I

    move-result v2

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->d(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Blueberry;-><init>(Ljava/util/Map;ZII)V

    return-void
.end method
