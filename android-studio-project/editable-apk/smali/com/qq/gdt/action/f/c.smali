.class public Lcom/qq/gdt/action/f/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/g;


# direct methods
.method public constructor <init>(Lcom/qq/gdt/action/f/b/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/c;->a:Lcom/qq/gdt/action/f/b/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/f/b/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/qq/gdt/action/f/b;->a()Lcom/qq/gdt/action/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b;->b()Lcom/qq/gdt/action/f/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/c;->a:Lcom/qq/gdt/action/f/b/g;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b/c;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/a;->a()Lcom/qq/gdt/action/f/b/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/f/b/b;)V
    .locals 2

    invoke-static {}, Lcom/qq/gdt/action/f/b;->a()Lcom/qq/gdt/action/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b;->b()Lcom/qq/gdt/action/f/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/c;->a:Lcom/qq/gdt/action/f/b/g;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b/c;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/f/b/a;->a(Lcom/qq/gdt/action/f/b/b;)V

    return-void
.end method

.method public b(Lcom/qq/gdt/action/f/b/b;)V
    .locals 2

    invoke-static {}, Lcom/qq/gdt/action/f/b;->a()Lcom/qq/gdt/action/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b;->c()Lcom/qq/gdt/action/f/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/c;->a:Lcom/qq/gdt/action/f/b/g;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b/c;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/f/b/a;->a(Lcom/qq/gdt/action/f/b/b;)V

    return-void
.end method
