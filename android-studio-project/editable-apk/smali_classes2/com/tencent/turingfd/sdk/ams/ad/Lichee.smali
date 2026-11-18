.class public Lcom/tencent/turingfd/sdk/ams/ad/Lichee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAIDCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getAIDTicket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    return v0
.end method

.method public getExpiredTimestamp()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget-wide v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->b:J

    return-wide v0
.end method

.method public getOpenIdTicket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTAIDTicket()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;->a:Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    .line 2
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->e:Ljava/lang/String;

    return-object v0
.end method
