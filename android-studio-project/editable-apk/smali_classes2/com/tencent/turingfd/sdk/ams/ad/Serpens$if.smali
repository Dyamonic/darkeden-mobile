.class public Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Serpens;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/tencent/turingfd/sdk/ams/ad/Serpens;


# direct methods
.method public constructor <init>(Lcom/tencent/turingfd/sdk/ams/ad/Serpens;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->g:Lcom/tencent/turingfd/sdk/ams/ad/Serpens;

    iput-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, ""

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->g:Lcom/tencent/turingfd/sdk/ams/ad/Serpens;

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Serpens;->a(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :catchall_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 15
    :catchall_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/16 v1, -0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 18
    :goto_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_2
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Serpens$if;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 23
    :catchall_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1
.end method
