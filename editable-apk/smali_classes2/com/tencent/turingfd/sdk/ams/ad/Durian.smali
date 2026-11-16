.class public final Lcom/tencent/turingfd/sdk/ams/ad/Durian;
.super Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;
.source "SourceFile"


# static fields
.field public static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Fig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Fig;",
            ">;"
        }
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->c:Ljava/util/ArrayList;

    .line 5
    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V
    .locals 4

    .line 4
    iget-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    .line 5
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->b:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->b:I

    .line 6
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->e:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Fig;

    invoke-direct {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Fig;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->e:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Lcom/tencent/turingfd/sdk/ams/ad/Draco;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(JI)V

    .line 2
    iget v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(II)V

    .line 3
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Durian;->c:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a(Ljava/util/Collection;I)V

    return-void
.end method
