.class public Lcom/qq/gdt/action/f/b/a/a;
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/qq/gdt/action/f/b/a/c$a;->a()Lcom/qq/gdt/action/f/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/g;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "abs"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1, v0}, Lcom/qq/gdt/action/f/b/a/c$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "at"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/qq/gdt/action/j/t;->a(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "fail to parse SERVER_ACTIVATE_TIME !"

    invoke-static {v3, v1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const-string v1, "ai"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v3, v1}, Lcom/qq/gdt/action/j/t;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "fail to parse ACTIVATE_WITH_IMEI !"

    invoke-static {v3, v1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const-string v1, "ao"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/t;->b(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "fail to parse ACTIVATE_WITH_OAID !"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object p1
.end method
