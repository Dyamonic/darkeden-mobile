.class public Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tencent/turingfd/sdk/ams/ad/Caelum;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Caelum;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;->a:Lcom/tencent/turingfd/sdk/ams/ad/Caelum;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;->a:Lcom/tencent/turingfd/sdk/ams/ad/Caelum;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    .line 3
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mangosteen;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v1

    .line 5
    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;

    .line 6
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/TuringIDService$do;->a:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;

    .line 7
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;

    invoke-direct {v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lichee;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Canesatici;)V

    .line 8
    invoke-interface {v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDIDCallback;->onResult(Lcom/tencent/turingfd/sdk/ams/ad/ITuringDID;)V

    :cond_0
    return-void
.end method
