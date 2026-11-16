.class public Lcom/bytedance/bdtracker/z1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile a:Lcom/bytedance/bdtracker/u4;

.field public b:Landroid/accounts/Account;

.field public c:Lcom/bytedance/bdtracker/w3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/v1;)Lcom/bytedance/bdtracker/u4;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    if-nez v0, :cond_3

    const-class v0, Lcom/bytedance/bdtracker/z1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/bytedance/bdtracker/z1;->c:Lcom/bytedance/bdtracker/w3;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/w3;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/bdtracker/w3;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/bdtracker/z1;->c:Lcom/bytedance/bdtracker/w3;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    if-nez v1, :cond_2

    new-instance v1, Lcom/bytedance/bdtracker/u4;

    iget-object v2, p0, Lcom/bytedance/bdtracker/z1;->c:Lcom/bytedance/bdtracker/w3;

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/bytedance/bdtracker/u4;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/w3;)V

    iput-object v1, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    iget-object p1, p0, Lcom/bytedance/bdtracker/z1;->b:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    iget-object p2, p0, Lcom/bytedance/bdtracker/z1;->b:Landroid/accounts/Account;

    invoke-virtual {p1, p2}, Lcom/bytedance/bdtracker/u4;->a(Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    return-object p1
.end method
