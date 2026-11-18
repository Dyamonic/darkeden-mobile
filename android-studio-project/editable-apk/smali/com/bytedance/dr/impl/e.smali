.class public final Lcom/bytedance/dr/impl/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/dr/OaidApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/dr/impl/e$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/bytedance/bdtracker/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/m5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/dr/impl/e$a;

    invoke-direct {v0}, Lcom/bytedance/dr/impl/e$a;-><init>()V

    sput-object v0, Lcom/bytedance/dr/impl/e;->b:Lcom/bytedance/bdtracker/m5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/bytedance/dr/impl/e;->b:Lcom/bytedance/bdtracker/m5;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/m5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Huawei"

    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 7

    .line 1
    new-instance v0, Lcom/bytedance/dr/impl/e$b;

    invoke-direct {v0}, Lcom/bytedance/dr/impl/e$b;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "pps_oaid"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pps_track_limit"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v1, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/dr/OaidApi$a;->b:Z

    const-wide v4, 0x2f08517f88L

    iput-wide v4, v0, Lcom/bytedance/dr/impl/e$b;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "getOaid failed"

    invoke-interface {v4, v2, v6, v1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/dr/impl/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bytedance/dr/impl/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Lcom/bytedance/bdtracker/u5;

    new-instance v5, Lcom/bytedance/dr/impl/f;

    invoke-direct {v5, p0}, Lcom/bytedance/dr/impl/f;-><init>(Lcom/bytedance/dr/impl/e;)V

    invoke-direct {v4, p1, v1, v5}, Lcom/bytedance/bdtracker/u5;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/bdtracker/u5$b;)V

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/u5;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/bytedance/dr/OaidApi$a;->b:Z

    iget-object v1, p0, Lcom/bytedance/dr/impl/e;->a:Ljava/lang/String;

    .line 4
    :try_start_1
    invoke-static {p1, v1, v3}, Lcom/bytedance/bdtracker/a5;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "getHwIdVersionCode failed"

    invoke-interface {v1, v2, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    int-to-long v1, v3

    .line 6
    iput-wide v1, v0, Lcom/bytedance/dr/impl/e$b;->c:J

    :cond_3
    :goto_2
    return-object v0
.end method

.method public support(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "com.huawei.hwid"

    .line 1
    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/a5;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-object v1, p0, Lcom/bytedance/dr/impl/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "com.huawei.hwid.tv"

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/a5;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "com.huawei.hms"

    iput-object v0, p0, Lcom/bytedance/dr/impl/e;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/a5;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0
.end method
