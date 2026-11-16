.class public final Lcom/bytedance/dr/impl/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/dr/OaidApi;


# instance fields
.field public final a:Lcom/bytedance/bdtracker/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/m5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/dr/impl/i$a;

    invoke-direct {v0, p0}, Lcom/bytedance/dr/impl/i$a;-><init>(Lcom/bytedance/dr/impl/i;)V

    iput-object v0, p0, Lcom/bytedance/dr/impl/i;->a:Lcom/bytedance/bdtracker/m5;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Meizu"

    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 7

    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "oaid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    return-object p1

    :cond_0
    :try_start_1
    new-instance v1, Lcom/bytedance/dr/OaidApi$a;

    invoke-direct {v1}, Lcom/bytedance/dr/OaidApi$a;-><init>()V

    .line 1
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v2, p1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2
    :goto_0
    iput-object v2, v1, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, p1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x1

    const-string v4, "getOaid failed"

    const/4 v5, 0x0

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    return-object p1

    :catchall_2
    move-exception p1

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    throw p1
.end method

.method public support(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/dr/impl/i;->a:Lcom/bytedance/bdtracker/m5;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/m5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
