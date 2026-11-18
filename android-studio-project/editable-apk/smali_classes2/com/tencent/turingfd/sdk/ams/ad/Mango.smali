.class public Lcom/tencent/turingfd/sdk/ams/ad/Mango;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->e:[B

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a:I

    .line 3
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->d:[B

    .line 4
    iput p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->b:I

    .line 5
    iput p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->c:I

    return-void
.end method

.method public static a(I)Lcom/tencent/turingfd/sdk/ams/ad/Mango;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->e:[B

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;-><init>(I[BII)V

    return-object v0
.end method

.method public static a([B)Lcom/tencent/turingfd/sdk/ams/ad/Mango;
    .locals 2

    .line 2
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Mango;-><init>(I[BII)V

    return-object v0
.end method
