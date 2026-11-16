.class public Lcom/qq/gdt/action/multioprocess/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/multioprocess/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/multioprocess/a;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/multioprocess/a;->a:Lcom/qq/gdt/action/multioprocess/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/multioprocess/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/multioprocess/a;->a:Lcom/qq/gdt/action/multioprocess/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/a;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/a;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/multioprocess/a;->a:Lcom/qq/gdt/action/multioprocess/a;

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
    sget-object v0, Lcom/qq/gdt/action/multioprocess/a;->a:Lcom/qq/gdt/action/multioprocess/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qq/gdt/action/multioprocess/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 4

    const-string v0, "save_user_info"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc82

    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc83

    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/16 v2, 0xc86

    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/j/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".GDTInitProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    const-string v0, "user_message_info"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v0, 0xc87

    invoke-static {v0, p3}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    :cond_3
    invoke-virtual {p1, v2, p2, v1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "result_user_info"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b;

    const/16 p2, 0xc88

    invoke-static {p2, p1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "sendMsg e"

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic a(Lcom/qq/gdt/action/multioprocess/a;Landroid/content/Context;Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/multioprocess/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 2

    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/j/g;->a()Lcom/qq/gdt/action/j/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/j/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v0

    iput-object p1, v0, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    invoke-static {p1}, Lcom/qq/gdt/action/j/s;->a(Lcom/qq/gdt/action/multioprocess/b;)V

    const/16 v0, 0xc84

    invoke-static {v0, p1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/multioprocess/b;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "save_user_info"

    invoke-direct {p0, v0, v1, p1}, Lcom/qq/gdt/action/multioprocess/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b;)Lcom/qq/gdt/action/multioprocess/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client process saveMessage t = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/qq/gdt/action/multioprocess/c;)V
    .locals 2

    invoke-static {}, Lcom/qq/gdt/action/j/j;->a()Lcom/qq/gdt/action/j/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/j/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/a$1;

    invoke-direct {v1, p0, p1}, Lcom/qq/gdt/action/multioprocess/a$1;-><init>(Lcom/qq/gdt/action/multioprocess/a;Lcom/qq/gdt/action/multioprocess/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lcom/qq/gdt/action/multioprocess/b;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/qq/gdt/action/j/g;->a()Lcom/qq/gdt/action/j/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/j/g;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v1

    iget-object v1, v1, Lcom/qq/gdt/action/multioprocess/d;->a:Lcom/qq/gdt/action/multioprocess/b;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/j/s;->a()Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get_user_info"

    invoke-direct {p0, v1, v2}, Lcom/qq/gdt/action/multioprocess/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/qq/gdt/action/multioprocess/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageAsync Throwable t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public c()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/b;->q()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillUserInfo e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillUserInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
