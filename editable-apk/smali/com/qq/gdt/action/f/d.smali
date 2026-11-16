.class public abstract Lcom/qq/gdt/action/f/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qq/gdt/action/f/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lcom/qq/gdt/action/f/b/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/f/b/g$a;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/g$a;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/f/d;->c:Lcom/qq/gdt/action/f/b/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/qq/gdt/action/f/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/qq/gdt/action/f/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected a()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GDTActionSDK-["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/gdt/action/f/d;->c:Lcom/qq/gdt/action/f/b/g$a;

    const-string v2, "User-Agent"

    invoke-virtual {v1, v2, v0}, Lcom/qq/gdt/action/f/b/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/gdt/action/f/b/g$a;

    iget-object v0, p0, Lcom/qq/gdt/action/f/d;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/f/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/qq/gdt/action/f/d;->c:Lcom/qq/gdt/action/f/b/g$a;

    iget-object v3, p0, Lcom/qq/gdt/action/f/d;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/qq/gdt/action/f/b/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/gdt/action/f/b/g$a;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
