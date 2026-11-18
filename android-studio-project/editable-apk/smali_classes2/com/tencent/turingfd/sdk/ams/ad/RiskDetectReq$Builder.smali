.class public final Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->a:Ljava/util/Map;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->c:I

    .line 5
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->d:I

    return-void
.end method

.method public static synthetic a(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->a:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic b(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->b:Z

    return p0
.end method

.method public static synthetic c(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->c:I

    return p0
.end method

.method public static synthetic d(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->d:I

    return p0
.end method


# virtual methods
.method public build()Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq;
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq;

    .line 2
    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;)V

    return-object v0
.end method

.method public cache(Z)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->b:Z

    return-object p0
.end method

.method public inputParam(Ljava/util/Map;)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->a:Ljava/util/Map;

    return-object p0
.end method

.method public packTimeoutMillis(I)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->d:I

    return-object p0
.end method

.method public reqTimeoutMillis(I)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectReq$Builder;->c:I

    return-object p0
.end method
