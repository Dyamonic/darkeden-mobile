.class public final Lcom/bytedance/dr/impl/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/dr/OaidApi;


# static fields
.field public static final a:Lcom/bytedance/bdtracker/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/m5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/dr/impl/k$a;

    invoke-direct {v0}, Lcom/bytedance/dr/impl/k$a;-><init>()V

    sput-object v0, Lcom/bytedance/dr/impl/k;->a:Lcom/bytedance/bdtracker/m5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Vivo"

    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 8

    new-instance v0, Lcom/bytedance/dr/OaidApi$a;

    invoke-direct {v0}, Lcom/bytedance/dr/OaidApi$a;-><init>()V

    const-string v1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    .line 1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "value"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p1, v1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    const-string v5, "Query oaid failed"

    const/4 v6, 0x0

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v2, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, p1

    :goto_2
    invoke-static {v1}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    throw v0

    .line 2
    :cond_1
    :goto_3
    iput-object v1, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public support(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/bytedance/dr/impl/k;->a:Lcom/bytedance/bdtracker/m5;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/m5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
