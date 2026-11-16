.class public Lcom/tencent/turingfd/sdk/ams/ad/Haw;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/HashMap;Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;JLjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->b:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    iput-object p7, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 3
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->b:Ljava/util/HashMap;

    const-string v1, "274"

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    invoke-interface {v2}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getImei()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    .line 11
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->b:Ljava/util/HashMap;

    const-string v1, "276"

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    invoke-interface {v2}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getImsi()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    .line 14
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->b:Ljava/util/HashMap;

    const-string v1, "275"

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    invoke-interface {v2}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    .line 17
    :cond_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, "Turing"

    const-string v1, "invoke info impl exception"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_1
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Haw;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 25
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
