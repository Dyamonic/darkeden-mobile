.class public Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;->b:I

    return-void
.end method

.method public static a(I)Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;

    const-string v1, ""

    invoke-direct {v0, v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Phoenix;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
