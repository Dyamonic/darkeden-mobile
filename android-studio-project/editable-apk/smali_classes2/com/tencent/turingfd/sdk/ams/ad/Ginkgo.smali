.class public Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;
    }
.end annotation


# static fields
.field public static final j:[B


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->j:[B

    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->h:I

    .line 3
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->i:I

    const-string p2, ""

    .line 20
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->b:J

    .line 22
    iput p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    .line 24
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->d:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->e:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->f:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->g:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->h:I

    .line 29
    iput p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->h:I

    .line 32
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->i:I

    .line 62
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->b(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->b:J

    .line 64
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->c(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    .line 66
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->d(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->d:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->e(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->e:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->f(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->f:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;->g(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo$do;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;
    .locals 3

    .line 1
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->j:[B

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;-><init>(I[BII)V

    return-object v0
.end method
