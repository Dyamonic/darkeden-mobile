.class public Lcom/tencent/turingfd/sdk/ams/ad/Berry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/Gemini<",
            "Lcom/tencent/turingfd/sdk/ams/ad/final;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/turingfd/sdk/ams/ad/Gemini<",
            "Lcom/tencent/turingfd/sdk/ams/ad/final;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Lcom/tencent/turingfd/sdk/ams/ad/final;

.field public static d:J

.field public static final e:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;-><init>(I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    .line 2
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;-><init>(I)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->b:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/turingfd/sdk/ams/ad/final;

    .line 3
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->c:[Lcom/tencent/turingfd/sdk/ams/ad/final;

    const-wide/16 v0, 0x0

    .line 5
    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->d:J

    .line 8
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Berry$do;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->e:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    return-void
.end method
