.class Lcom/qq/gdt/action/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/a;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a;)V
    .locals 2

    iput-object p1, p0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/a$a;->b:Ljava/lang/Object;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "com.qq.gdt.action.ActionReporter.Worker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/qq/gdt/action/a$a$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/qq/gdt/action/a$a$a;-><init>(Lcom/qq/gdt/action/a$a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qq/gdt/action/a$a;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/qq/gdt/action/a$a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/qq/gdt/action/a$a;->c:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping a message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
