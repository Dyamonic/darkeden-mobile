.class public Lrich/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/y0;


# instance fields
.field public a:Lrich/y0;

.field public b:Lrich/t1;

.field public final c:Lrich/l1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrich/l1;

    invoke-direct {v0}, Lrich/l1;-><init>()V

    iput-object v0, p0, Lrich/z0;->c:Lrich/l1;

    return-void
.end method


# virtual methods
.method public a(Lrich/o1;Lrich/t1;Lrich/l0;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lrich/z0;->b(Lrich/o1;Lrich/t1;Lrich/l0;)V

    return-void
.end method

.method public b(Lrich/o1;Lrich/t1;Lrich/l0;)V
    .locals 1

    iget-object v0, p0, Lrich/z0;->a:Lrich/y0;

    if-eqz v0, :cond_1

    new-instance v0, Lrich/z0$a;

    invoke-direct {v0, p0, p1, p3, p2}, Lrich/z0$a;-><init>(Lrich/z0;Lrich/o1;Lrich/l0;Lrich/t1;)V

    iput-object v0, p0, Lrich/z0;->b:Lrich/t1;

    invoke-virtual {p1}, Lrich/o1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lrich/z0;->a:Lrich/y0;

    iget-object v0, p0, Lrich/z0;->b:Lrich/t1;

    invoke-interface {p2, p1, v0, p3}, Lrich/y0;->a(Lrich/o1;Lrich/t1;Lrich/l0;)V

    goto :goto_0

    :cond_0
    const p1, 0x30d59

    invoke-static {p1}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object p1

    invoke-interface {p2, p1}, Lrich/t1;->a(Lrich/r1;)V

    :cond_1
    :goto_0
    return-void
.end method
