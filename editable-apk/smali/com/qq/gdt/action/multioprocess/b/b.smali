.class public abstract Lcom/qq/gdt/action/multioprocess/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/multioprocess/b/b$j;,
        Lcom/qq/gdt/action/multioprocess/b/b$b;,
        Lcom/qq/gdt/action/multioprocess/b/b$c;,
        Lcom/qq/gdt/action/multioprocess/b/b$l;,
        Lcom/qq/gdt/action/multioprocess/b/b$k;,
        Lcom/qq/gdt/action/multioprocess/b/b$m;,
        Lcom/qq/gdt/action/multioprocess/b/b$e;,
        Lcom/qq/gdt/action/multioprocess/b/b$d;,
        Lcom/qq/gdt/action/multioprocess/b/b$f;,
        Lcom/qq/gdt/action/multioprocess/b/b$h;,
        Lcom/qq/gdt/action/multioprocess/b/b$g;,
        Lcom/qq/gdt/action/multioprocess/b/b$i;,
        Lcom/qq/gdt/action/multioprocess/b/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->d:I

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/b;->p()I

    move-result v1

    iput v1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfoItem fetchLimit e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->d:I

    return v0
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/gdt/action/multioprocess/b/b;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",\"deviceValue\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qq/gdt/action/multioprocess/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",\"fetchTimes\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"limitTimes\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qq/gdt/action/multioprocess/b/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
