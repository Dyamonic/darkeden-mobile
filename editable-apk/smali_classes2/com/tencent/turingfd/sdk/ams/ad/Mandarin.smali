.class public Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[B


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->c:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->a:I

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->b:[B

    return-void
.end method

.method public static a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;->c:[B

    invoke-direct {v0, p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Mandarin;-><init>(I[B)V

    return-object v0
.end method
