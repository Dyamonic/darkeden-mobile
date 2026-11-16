.class public Lrich/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/y0;


# instance fields
.field public a:Lrich/y0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/o1;Lrich/t1;Lrich/l0;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lrich/o1;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lrich/a1;->a:Lrich/y0;

    if-eqz v0, :cond_0

    new-instance v1, Lrich/b1;

    invoke-direct {v1, p0, p2}, Lrich/b1;-><init>(Lrich/a1;Lrich/t1;)V

    invoke-interface {v0, p1, v1, p3}, Lrich/y0;->a(Lrich/o1;Lrich/t1;Lrich/l0;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lrich/m2;->a(Landroid/content/Context;)Lrich/m2;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    new-instance v7, Lrich/a1$a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lrich/a1$a;-><init>(Lrich/a1;Lrich/l0;Lrich/o1;Lrich/t1;Lrich/m2;)V

    invoke-virtual {v0, v7}, Lrich/m2;->a(Lrich/m2$b;)V

    goto :goto_0

    :cond_2
    const-string p1, "WifiChangeInterceptor"

    const-string p3, "\u4f4e\u7248\u672c\u4e0d\u5728\u652f\u6301wifi\u5207\u6362"

    invoke-static {p1, p3}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x1906c

    invoke-static {p1}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object p1

    invoke-interface {p2, p1}, Lrich/t1;->a(Lrich/r1;)V

    :goto_0
    return-void
.end method
