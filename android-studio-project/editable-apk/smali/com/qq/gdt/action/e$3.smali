.class Lcom/qq/gdt/action/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/e;->G()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/e;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/e;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initedPersistent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/e;->D()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/qq/gdt/action/e;->D()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->d(Lcom/qq/gdt/action/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/e;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->d(Lcom/qq/gdt/action/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/h;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->e(Lcom/qq/gdt/action/e;)V

    iget-object v0, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->d(Lcom/qq/gdt/action/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/d;->b(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/qq/gdt/action/e$3;->a:Lcom/qq/gdt/action/e;

    invoke-static {v0}, Lcom/qq/gdt/action/e;->d(Lcom/qq/gdt/action/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/a;->b()V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/qq/gdt/action/e;->b(Z)Z

    return-void
.end method
