.class public Lcom/qq/gdt/action/g/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/g/b;


# instance fields
.field private final b:Lcom/qq/gdt/action/g/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "recorder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/qq/gdt/action/g/a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/qq/gdt/action/g/a;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qq/gdt/action/g/b;->b:Lcom/qq/gdt/action/g/a;

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/g/b;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/g/b;->a:Lcom/qq/gdt/action/g/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/g/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/g/b;->a:Lcom/qq/gdt/action/g/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/g/b;

    invoke-direct {v1}, Lcom/qq/gdt/action/g/b;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/g/b;->a:Lcom/qq/gdt/action/g/b;

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
    sget-object v0, Lcom/qq/gdt/action/g/b;->a:Lcom/qq/gdt/action/g/b;

    return-object v0
.end method


# virtual methods
.method public varargs a([Lcom/qq/gdt/action/g/a/a;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/qq/gdt/action/g/b;->b:Lcom/qq/gdt/action/g/a;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/qq/gdt/action/g/a;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/qq/gdt/action/g/b;->b:Lcom/qq/gdt/action/g/a;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/g/a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/g/b;->b:Lcom/qq/gdt/action/g/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/g/a;->sendEmptyMessage(I)Z

    return-void
.end method
