.class Lcom/qq/gdt/action/f/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/f/b/a;->a(Lcom/qq/gdt/action/f/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/f/b/b;

.field final synthetic b:Lcom/qq/gdt/action/f/b/a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/a;Lcom/qq/gdt/action/f/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/a$1;->b:Lcom/qq/gdt/action/f/b/a;

    iput-object p2, p0, Lcom/qq/gdt/action/f/b/a$1;->a:Lcom/qq/gdt/action/f/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a$1;->b:Lcom/qq/gdt/action/f/b/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/a;->a()Lcom/qq/gdt/action/f/b/i;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/a$1;->a:Lcom/qq/gdt/action/f/b/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/qq/gdt/action/f/b/b;->a(Lcom/qq/gdt/action/f/b/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/a$1;->a:Lcom/qq/gdt/action/f/b/b;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/qq/gdt/action/f/b/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
