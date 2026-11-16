.class public Lcom/qq/gdt/action/f/b/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/f/b/a/c$a;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/f/b/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private final d:Lcom/qq/gdt/action/f/b/g;

.field private final e:Lcom/qq/gdt/action/f/b/e;

.field private final f:Lcom/qq/gdt/action/f/b/a;


# direct methods
.method public constructor <init>(Lcom/qq/gdt/action/f/b/e;Ljava/util/List;ILcom/qq/gdt/action/f/b/g;Lcom/qq/gdt/action/f/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qq/gdt/action/f/b/e;",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/f/b/a/c;",
            ">;I",
            "Lcom/qq/gdt/action/f/b/g;",
            "Lcom/qq/gdt/action/f/b/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/a/d;->e:Lcom/qq/gdt/action/f/b/e;

    iput-object p2, p0, Lcom/qq/gdt/action/f/b/a/d;->a:Ljava/util/List;

    iput p3, p0, Lcom/qq/gdt/action/f/b/a/d;->b:I

    iput-object p4, p0, Lcom/qq/gdt/action/f/b/a/d;->d:Lcom/qq/gdt/action/f/b/g;

    iput-object p5, p0, Lcom/qq/gdt/action/f/b/a/d;->f:Lcom/qq/gdt/action/f/b/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/f/b/g;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a/d;->d:Lcom/qq/gdt/action/f/b/g;

    return-object v0
.end method

.method public a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/qq/gdt/action/f/b/a/d;->b:I

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/a/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/qq/gdt/action/f/b/a/d;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/gdt/action/f/b/a/d;->c:I

    new-instance v0, Lcom/qq/gdt/action/f/b/a/d;

    iget-object v2, p0, Lcom/qq/gdt/action/f/b/a/d;->e:Lcom/qq/gdt/action/f/b/e;

    iget-object v3, p0, Lcom/qq/gdt/action/f/b/a/d;->a:Ljava/util/List;

    iget v1, p0, Lcom/qq/gdt/action/f/b/a/d;->b:I

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/qq/gdt/action/f/b/a/d;->f:Lcom/qq/gdt/action/f/b/a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/qq/gdt/action/f/b/a/d;-><init>(Lcom/qq/gdt/action/f/b/e;Ljava/util/List;ILcom/qq/gdt/action/f/b/g;Lcom/qq/gdt/action/f/b/a;)V

    iget-object p1, p0, Lcom/qq/gdt/action/f/b/a/d;->a:Ljava/util/List;

    iget v1, p0, Lcom/qq/gdt/action/f/b/a/d;->b:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/gdt/action/f/b/a/c;

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/a/c;->a(Lcom/qq/gdt/action/f/b/a/c$a;)Lcom/qq/gdt/action/f/b/i;

    move-result-object v0

    const-string v1, "interceptor "

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a response with no body"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public b()Lcom/qq/gdt/action/f/b/e;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/a/d;->e:Lcom/qq/gdt/action/f/b/e;

    return-object v0
.end method
