.class public final Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;
.super Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->b:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    .line 8
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->d:I

    .line 10
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V
    .locals 4

    .line 8
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    .line 9
    invoke-virtual {p1, v2, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->b:Ljava/lang/String;

    .line 10
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    .line 11
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->d:I

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->d:I

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->e:Ljava/lang/String;

    .line 13
    iget-wide v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->f:J

    const/4 v0, 0x6

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->f:J

    return-void
.end method

.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Draco;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->d:I

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    :cond_1
    return-void
.end method
