.class public Lcom/qq/gdt/action/f/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/f/b/a/c;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/gdt/action/f/b/a/f;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/f/b/a/c$a;)Lcom/qq/gdt/action/f/b/i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/qq/gdt/action/f/b/a/c$a;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/a/c$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lcom/qq/gdt/action/f/b/i;->b()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/qq/gdt/action/f/b/a/f;->a:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f/b/j;->close()V

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/g;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "Retry for %s, retry number = %d"

    invoke-static {v4, v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/a/c$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method
