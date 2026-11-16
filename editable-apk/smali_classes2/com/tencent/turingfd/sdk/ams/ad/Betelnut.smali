.class public Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->b:I

    .line 3
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->d:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->e:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->f:J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->a:J

    return-void
.end method
