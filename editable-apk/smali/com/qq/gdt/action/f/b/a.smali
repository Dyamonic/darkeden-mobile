.class public Lcom/qq/gdt/action/f/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/g;

.field private final b:Lcom/qq/gdt/action/f/b/e;

.field private c:Lcom/qq/gdt/action/f/b/c;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/e;Lcom/qq/gdt/action/f/b/g;Lcom/qq/gdt/action/f/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/a;->b:Lcom/qq/gdt/action/f/b/e;

    iput-object p2, p0, Lcom/qq/gdt/action/f/b/a;->a:Lcom/qq/gdt/action/f/b/g;

    iput-object p3, p0, Lcom/qq/gdt/action/f/b/a;->c:Lcom/qq/gdt/action/f/b/c;

    return-void
.end method

.method private b()Lcom/qq/gdt/action/f/b/i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a;->c:Lcom/qq/gdt/action/f/b/c;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/qq/gdt/action/f/b/a/b;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/a/b;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/qq/gdt/action/f/b/a/d;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/a;->b:Lcom/qq/gdt/action/f/b/e;

    iget-object v4, p0, Lcom/qq/gdt/action/f/b/a;->a:Lcom/qq/gdt/action/f/b/g;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/qq/gdt/action/f/b/a/d;-><init>(Lcom/qq/gdt/action/f/b/e;Ljava/util/List;ILcom/qq/gdt/action/f/b/g;Lcom/qq/gdt/action/f/b/a;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a;->a:Lcom/qq/gdt/action/f/b/g;

    invoke-interface {v6, v0}, Lcom/qq/gdt/action/f/b/a/c$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/f/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/f/b/a;->b()Lcom/qq/gdt/action/f/b/i;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/qq/gdt/action/f/b/b;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a;->b:Lcom/qq/gdt/action/f/b/e;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/f/b/a$1;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/f/b/a$1;-><init>(Lcom/qq/gdt/action/f/b/a;Lcom/qq/gdt/action/f/b/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
