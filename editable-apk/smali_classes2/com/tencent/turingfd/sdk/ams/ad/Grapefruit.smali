.class public Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;Landroid/content/Context;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->d:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->b:Z

    iput p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->d:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->b:Z

    iget v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Grapefruit;->c:I

    .line 2
    iget-object v4, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "403"

    .line 3
    invoke-static {v1, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 5
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :goto_0
    move v4, v5

    :goto_1
    const/4 v6, 0x0

    move v7, v6

    .line 9
    :goto_2
    iget-object v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 10
    iget v8, v8, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->y:I

    if-ge v7, v8, :cond_3

    .line 11
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;ZZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v8

    .line 12
    invoke-virtual {v0, v8, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;Z)V

    .line 13
    iget v8, v8, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    const/16 v9, -0x753e

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 14
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "403"

    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    :cond_4
    iget-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 17
    :try_start_1
    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    iget-object v0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
