.class public Lrich/b1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/t1;


# instance fields
.field public final synthetic a:Lrich/t1;


# direct methods
.method public constructor <init>(Lrich/a1;Lrich/t1;)V
    .locals 0

    iput-object p2, p0, Lrich/b1;->a:Lrich/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/r1;)V
    .locals 1

    iget-object v0, p0, Lrich/b1;->a:Lrich/t1;

    invoke-interface {v0, p1}, Lrich/t1;->a(Lrich/r1;)V

    return-void
.end method

.method public a(Lrich/s1;)V
    .locals 1

    iget-object v0, p0, Lrich/b1;->a:Lrich/t1;

    invoke-interface {v0, p1}, Lrich/t1;->a(Lrich/s1;)V

    return-void
.end method
