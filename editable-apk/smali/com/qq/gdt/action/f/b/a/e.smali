.class public Lcom/qq/gdt/action/f/b/a/e;
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/qq/gdt/action/f/b/a/c$a;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/g;->e()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/g;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "Sending request %s %s"

    invoke-static {v5, v4}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/a/c$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qq/gdt/action/f/b/g;->a()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v6

    sub-long/2addr v4, v1

    long-to-double v1, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->e()Lcom/qq/gdt/action/f/b/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f/b/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Received response for %s in %.1fms (http status code %d)%n%s"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
