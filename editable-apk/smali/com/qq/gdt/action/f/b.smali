.class public Lcom/qq/gdt/action/f/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/f/b;


# instance fields
.field private b:Lcom/qq/gdt/action/f/b/c;

.field private c:Lcom/qq/gdt/action/f/b/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/b;->a(Lcom/qq/gdt/action/f/b/c;)V

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/f/b;->b(Lcom/qq/gdt/action/f/b/c;)V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/f/b;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/f/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/f/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/f/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/f/b;

    invoke-direct {v1}, Lcom/qq/gdt/action/f/b;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/f/b;

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
    sget-object v0, Lcom/qq/gdt/action/f/b;->a:Lcom/qq/gdt/action/f/b;

    return-object v0
.end method

.method private a(Lcom/qq/gdt/action/f/b/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/qq/gdt/action/f/b/c$a;

    invoke-direct {p1}, Lcom/qq/gdt/action/f/b/c$a;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/f/b/a/e;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/a/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    new-instance v0, Lcom/qq/gdt/action/f/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/qq/gdt/action/f/b/a/f;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    new-instance v0, Lcom/qq/gdt/action/f/b/a/g;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    new-instance v0, Lcom/qq/gdt/action/f/b/a/a;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/a/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/c$a;->a()Lcom/qq/gdt/action/f/b/c;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/f/b/c;

    return-void
.end method

.method private b(Lcom/qq/gdt/action/f/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->c:Lcom/qq/gdt/action/f/b/c;

    if-nez v0, :cond_0

    new-instance p1, Lcom/qq/gdt/action/f/b/c$a;

    invoke-direct {p1}, Lcom/qq/gdt/action/f/b/c$a;-><init>()V

    new-instance v0, Lcom/qq/gdt/action/f/b/a/e;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/b/a/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    new-instance v0, Lcom/qq/gdt/action/f/b/a/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/qq/gdt/action/f/b/a/f;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/c$a;->a(Lcom/qq/gdt/action/f/b/a/c;)Lcom/qq/gdt/action/f/b/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/c$a;->a()Lcom/qq/gdt/action/f/b/c;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/qq/gdt/action/f/b;->c:Lcom/qq/gdt/action/f/b/c;

    return-void
.end method

.method public static d()Lcom/qq/gdt/action/f/e;
    .locals 1

    new-instance v0, Lcom/qq/gdt/action/f/e;

    invoke-direct {v0}, Lcom/qq/gdt/action/f/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qq/gdt/action/f/b/c;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->b:Lcom/qq/gdt/action/f/b/c;

    return-object v0
.end method

.method public c()Lcom/qq/gdt/action/f/b/c;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b;->c:Lcom/qq/gdt/action/f/b/c;

    return-object v0
.end method
