.class public Lcom/qq/gdt/action/j/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/j/j;


# instance fields
.field private b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/j/j;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/j/j;->a:Lcom/qq/gdt/action/j/j;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/j/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/j/j;->a:Lcom/qq/gdt/action/j/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/j/j;

    invoke-direct {v1}, Lcom/qq/gdt/action/j/j;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/j/j;->a:Lcom/qq/gdt/action/j/j;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/qq/gdt/action/j/j;->a:Lcom/qq/gdt/action/j/j;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Ljava/util/concurrent/Executor;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/j/j;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/j/j;->b:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/j/j;->b:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
