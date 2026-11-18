.class public Lcom/qq/gdt/action/f/b/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/f/b/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/j;

.field private final b:Lcom/qq/gdt/action/f/b/g;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/i$a;->a(Lcom/qq/gdt/action/f/b/i$a;)Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/i;->b:Lcom/qq/gdt/action/f/b/g;

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/i$a;->b(Lcom/qq/gdt/action/f/b/i$a;)I

    move-result v0

    iput v0, p0, Lcom/qq/gdt/action/f/b/i;->c:I

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/i$a;->c(Lcom/qq/gdt/action/f/b/i$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/i;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/i$a;->d(Lcom/qq/gdt/action/f/b/i$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/i;->e:Ljava/util/Map;

    invoke-static {p1}, Lcom/qq/gdt/action/f/b/i$a;->e(Lcom/qq/gdt/action/f/b/i$a;)Lcom/qq/gdt/action/f/b/j;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/i;->a:Lcom/qq/gdt/action/f/b/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/qq/gdt/action/f/b/g;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/i;->b:Lcom/qq/gdt/action/f/b/g;

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/qq/gdt/action/f/b/i;->c:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/f/b/i;->c:I

    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/i;->e:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/qq/gdt/action/f/b/j;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/i;->a:Lcom/qq/gdt/action/f/b/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\"body\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/i;->a:Lcom/qq/gdt/action/f/b/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\"request\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/i;->b:Lcom/qq/gdt/action/f/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\"code\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/gdt/action/f/b/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"message\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",\"headers\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/i;->e:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
