.class public Lrich/p0;
.super Lrich/t0;
.source ""


# static fields
.field public static j:Lrich/p0;


# instance fields
.field public h:Lrich/o2;

.field public i:Lrich/t2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lrich/t0;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrich/p0;->i:Lrich/t2;

    return-void
.end method

.method public static synthetic a(Lrich/p0;Lrich/l0;)V
    .locals 0

    invoke-super {p0, p1}, Lrich/t0;->a(Lrich/l0;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lrich/p0;
    .locals 2

    sget-object v0, Lrich/p0;->j:Lrich/p0;

    if-nez v0, :cond_1

    const-class v0, Lrich/p0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/p0;->j:Lrich/p0;

    if-nez v1, :cond_0

    new-instance v1, Lrich/p0;

    invoke-direct {v1, p0}, Lrich/p0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lrich/p0;->j:Lrich/p0;

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
    sget-object p0, Lrich/p0;->j:Lrich/p0;

    return-object p0
.end method

.method public static synthetic b(Lrich/p0;Lrich/l0;)V
    .locals 0

    invoke-super {p0, p1}, Lrich/t0;->a(Lrich/l0;)V

    return-void
.end method


# virtual methods
.method public a(Lrich/l0;)V
    .locals 4

    new-instance v0, Lrich/t0$d;

    invoke-direct {v0, p0, p1}, Lrich/t0$d;-><init>(Lrich/t0;Lrich/l0;)V

    iget-object v1, p0, Lrich/t0;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lrich/t0;->c:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lrich/t0;->a:Lrich/r0;

    new-instance v2, Lrich/p0$a;

    invoke-direct {v2, p0, v0}, Lrich/p0$a;-><init>(Lrich/p0;Lrich/t0$d;)V

    invoke-virtual {v1, p1, v2}, Lrich/r0;->a(Lrich/l0;Lrich/s0;)V

    return-void
.end method

.method public c()Lrich/o2;
    .locals 1

    iget-object v0, p0, Lrich/p0;->h:Lrich/o2;

    if-nez v0, :cond_0

    new-instance v0, Lrich/o2$b;

    invoke-direct {v0}, Lrich/o2$b;-><init>()V

    invoke-virtual {v0}, Lrich/o2$b;->a()Lrich/o2;

    move-result-object v0

    iput-object v0, p0, Lrich/p0;->h:Lrich/o2;

    :cond_0
    iget-object v0, p0, Lrich/p0;->h:Lrich/o2;

    return-object v0
.end method

.method public d()V
    .locals 2

    :try_start_0
    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lrich/u2;->a:Lrich/u2$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lrich/u2;->b:I

    invoke-static {}, Lrich/u2;->a()Lrich/u2;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lrich/u2;->a:Lrich/u2$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    check-cast v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;

    :try_start_1
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$j;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "AuthnHelper"

    const-string v1, "\u5173\u95ed\u6388\u6743\u9875\u5931\u8d25"

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
