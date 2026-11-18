.class Lcom/qq/gdt/action/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/qq/gdt/action/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/qq/gdt/action/a$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/a;->b:Landroid/content/Context;

    new-instance p1, Lcom/qq/gdt/action/a$a;

    invoke-direct {p1, p0}, Lcom/qq/gdt/action/a$a;-><init>(Lcom/qq/gdt/action/a;)V

    iput-object p1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qq/gdt/action/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/a;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/a;

    invoke-direct {v1, p0}, Lcom/qq/gdt/action/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/qq/gdt/action/a;->a:Lcom/qq/gdt/action/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public varargs a([Lcom/qq/gdt/action/c/a;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/qq/gdt/action/a;->c:Lcom/qq/gdt/action/a$a;

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/a$a;->a(Landroid/os/Message;)V

    return-void
.end method
