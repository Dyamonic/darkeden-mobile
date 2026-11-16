.class Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/Intent;

.field final synthetic c:Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->c:Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->b:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserMessageChangeReceiver intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/UserMessageChangeReceiver$a;->b:Landroid/content/Intent;

    const-string v2, "user_message"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/multioprocess/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserMessageChangeReceiver userMessage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v2

    iput-object v1, v2, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "onReceive e"

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
