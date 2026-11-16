.class public Lcom/qq/gdt/action/f/e;
.super Lcom/qq/gdt/action/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/f/d<",
        "Lcom/qq/gdt/action/f/e;",
        ">;"
    }
.end annotation


# instance fields
.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/qq/gdt/action/f/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/qq/gdt/action/f/e;
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/f/e;->d:[B

    return-object p0
.end method

.method public b()Lcom/qq/gdt/action/f/c;
    .locals 3

    invoke-virtual {p0}, Lcom/qq/gdt/action/f/e;->a()V

    iget-object v0, p0, Lcom/qq/gdt/action/f/e;->c:Lcom/qq/gdt/action/f/b/g$a;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lcom/qq/gdt/action/f/b/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/qq/gdt/action/f/e;->d:[B

    invoke-static {v1, v2}, Lcom/qq/gdt/action/f/b/h;->a(Lcom/qq/gdt/action/f/b/f;[B)Lcom/qq/gdt/action/f/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b/g$a;->a(Lcom/qq/gdt/action/f/b/h;)Lcom/qq/gdt/action/f/b/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/f/b/g$a;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/b/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/g$a;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/f/c;

    invoke-direct {v1, v0}, Lcom/qq/gdt/action/f/c;-><init>(Lcom/qq/gdt/action/f/b/g;)V

    return-object v1
.end method
