.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTuringDID(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p0, v1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    .line 7
    :goto_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V

    return-object v0
.end method

.method public static getTuringDIDAsync(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;

    invoke-direct {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;)V

    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 p0, -0x2720

    .line 5
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    .line 6
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V

    .line 7
    invoke-interface {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;->onResult(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;

    invoke-direct {v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V

    .line 13
    invoke-interface {p1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;->onResult(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;)V

    .line 14
    :cond_2
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;

    invoke-direct {p1, v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Caelum;Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public static getTuringDIDCached(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    .line 6
    invoke-virtual {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    .line 7
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    if-nez v1, :cond_1

    const/16 p0, -0x2712

    .line 8
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 18
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a()V

    const/16 p0, -0x2719

    .line 19
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a(I)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 22
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a()V

    .line 23
    :cond_4
    :goto_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V

    return-object v0
.end method
