.class public Lcom/qq/gdt/action/multioprocess/a/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/multioprocess/a/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/multioprocess/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/multioprocess/a/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/multioprocess/a/a;
    .locals 3

    sget-object v0, Lcom/qq/gdt/action/multioprocess/a/a;->a:Lcom/qq/gdt/action/multioprocess/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/multioprocess/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/multioprocess/a/a;->a:Lcom/qq/gdt/action/multioprocess/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/a/a;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/a/a;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/multioprocess/a/a;->a:Lcom/qq/gdt/action/multioprocess/a/a;

    sget-object v1, Lcom/qq/gdt/action/multioprocess/a/a;->a:Lcom/qq/gdt/action/multioprocess/a/a;

    new-instance v2, Lcom/qq/gdt/action/multioprocess/a/c;

    invoke-direct {v2}, Lcom/qq/gdt/action/multioprocess/a/c;-><init>()V

    invoke-direct {v1, v2}, Lcom/qq/gdt/action/multioprocess/a/a;->a(Lcom/qq/gdt/action/multioprocess/a/b;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/qq/gdt/action/multioprocess/a/a;->a:Lcom/qq/gdt/action/multioprocess/a/a;

    return-object v0
.end method

.method private a(Lcom/qq/gdt/action/multioprocess/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/qq/gdt/action/multioprocess/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/multioprocess/a/b;

    invoke-interface {v1}, Lcom/qq/gdt/action/multioprocess/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
