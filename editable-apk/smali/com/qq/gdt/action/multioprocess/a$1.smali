.class Lcom/qq/gdt/action/multioprocess/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/multioprocess/c;

.field final synthetic b:Lcom/qq/gdt/action/multioprocess/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/multioprocess/a;Lcom/qq/gdt/action/multioprocess/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/a$1;->b:Lcom/qq/gdt/action/multioprocess/a;

    iput-object p2, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/a$1;->b:Lcom/qq/gdt/action/multioprocess/a;

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-interface {v2, v1}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/j/g;->a()Lcom/qq/gdt/action/j/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/j/g;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v2

    iget-object v2, v2, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-static {v2}, Lcom/qq/gdt/action/j/s;->a(Lcom/qq/gdt/action/multioprocess/c;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    :goto_0
    invoke-interface {v3, v2}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/e;->A()Z

    move-result v3

    if-nez v3, :cond_3

    const v2, 0x9c65

    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-interface {v2, v1}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    return-void

    :cond_3
    const-string v3, "client process time allow , try get info"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/qq/gdt/action/e;->a:J

    iget-object v3, p0, Lcom/qq/gdt/action/multioprocess/a$1;->b:Lcom/qq/gdt/action/multioprocess/a;

    const-string v4, "get_user_info"

    invoke-static {v3, v2, v4}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/a;Landroid/content/Context;Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v2

    iget-object v3, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageAsync Throwable t = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/a$1;->a:Lcom/qq/gdt/action/multioprocess/c;

    invoke-interface {v0, v1}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    :goto_1
    return-void
.end method
