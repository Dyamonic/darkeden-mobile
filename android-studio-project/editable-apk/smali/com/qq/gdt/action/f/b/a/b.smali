.class public Lcom/qq/gdt/action/f/b/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/f/b/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/f/b/a/c$a;)Lcom/qq/gdt/action/f/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/qq/gdt/action/f/b/a/d;

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/a/d;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/a/d;->b()Lcom/qq/gdt/action/f/b/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/e;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object p1

    return-object p1
.end method
