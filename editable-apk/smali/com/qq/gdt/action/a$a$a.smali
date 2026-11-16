.class Lcom/qq/gdt/action/a$a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/gdt/action/a$a;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qq/gdt/action/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/qq/gdt/action/c/b;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a$a;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    iget-object p1, p1, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {p1}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/c/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/c/b;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "======>Action reporter running now."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->b()V

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    return-void
.end method

.method private a(I)V
    .locals 11

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v0, v0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/p;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Network not available while flush actions(status=%d), schedule later."

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    const-wide/16 v7, 0x32

    move v6, p1

    move-wide v9, v3

    invoke-virtual/range {v5 .. v10}, Lcom/qq/gdt/action/c/b;->a(IJJ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "No more actions in status(%d), bravo!"

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qq/gdt/action/c/a;

    invoke-virtual {v6}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v7, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "START_APP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v1, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qq/gdt/action/c/a;

    iget-object v7, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Flushing %d actions(status=%d)"

    invoke-static {v6, v5}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/a$a$a;->b(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/c/b;->a(I)I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_2

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Lcom/qq/gdt/action/c/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/c/a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/a$a$a;->b(Ljava/util/List;I)V

    return-void
.end method

.method private a(Lcom/qq/gdt/action/c/a;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->h()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gtz p2, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/j/w;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/j/w;->b()J

    move-result-wide v2

    :cond_1
    invoke-virtual {p1}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "START_APP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    iget-object p1, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object p1, p1, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {p1}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/qq/gdt/action/j/t;->a(Landroid/content/Context;JJ)V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/qq/gdt/action/a$a$a$1;

    invoke-direct {v0, p0, p2}, Lcom/qq/gdt/action/a$a$a$1;-><init>(Lcom/qq/gdt/action/a$a$a;I)V

    invoke-static {p1, v0}, Lcom/qq/gdt/action/i/c;->a(Ljava/util/List;Lcom/qq/gdt/action/i/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a$a$a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/c/a;

    iget-object v2, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v2, v2, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v2}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    return-object p0
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cleaning old actions."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/b;->b()V

    return-void
.end method

.method private b(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "dbStatus"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/c/a;

    const/16 v3, 0x2711

    invoke-static {v2, p2}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->f:Lcom/qq/gdt/action/c/b;

    invoke-virtual {v0, p1, p2}, Lcom/qq/gdt/action/c/b;->a(Ljava/util/List;I)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/c/a;

    if-gez v0, :cond_2

    const/16 v3, 0x2713

    goto :goto_2

    :cond_2
    const/16 v3, 0x2712

    :goto_2
    invoke-static {v2, p2}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    if-gez v0, :cond_4

    const-string p1, "Update action status error"

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/a;

    iget-object v1, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v1, v1, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v1}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/a$a$a;->b:Ljava/util/Set;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/qq/gdt/action/a$a$a;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Flush all actions."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->e()V

    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->d()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qq/gdt/action/c/a;

    const v4, 0xc351

    invoke-static {v4, v3}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;)V

    iget-object v4, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "START_APP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qq/gdt/action/a$a$a;->c:Z

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/qq/gdt/action/a$a$a;->e:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/qq/gdt/action/a$a$a;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/gdt/action/c/a;

    const v3, 0xc352

    invoke-static {v3, v2}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x32

    if-le v1, v3, :cond_7

    invoke-static {v0, v3}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V

    :cond_8
    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Flush all pending actions."

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a$a$a;->a(I)V

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Flush all failed actions."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/a$a$a;->a(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v0, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message received by reporter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/qq/gdt/action/a$a$a;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->a()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/qq/gdt/action/a$a$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Worker handle message threw an unhandled exception"

    invoke-static {v1, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/a$a$a;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v0, v0, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v0}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/b;->b()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/qq/gdt/action/a$a$a;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string v0, "Send Delay \'FLUSH_ACTION\' message failed"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
