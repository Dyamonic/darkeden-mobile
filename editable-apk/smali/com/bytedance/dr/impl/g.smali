.class public Lcom/bytedance/dr/impl/g;
.super Lcom/bytedance/dr/impl/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/dr/impl/b<",
        "Lcom/bytedance/dr/aidl/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/bytedance/dr/honor/a;

.field public final d:Lcom/bytedance/dr/honor/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.hihonor.id"

    invoke-direct {p0, v0}, Lcom/bytedance/dr/impl/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/dr/honor/a;

    invoke-direct {v0}, Lcom/bytedance/dr/honor/a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/dr/impl/g;->c:Lcom/bytedance/dr/honor/a;

    new-instance v0, Lcom/bytedance/dr/honor/b;

    invoke-direct {v0}, Lcom/bytedance/dr/honor/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/dr/impl/g;->d:Lcom/bytedance/dr/honor/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hihonor.id.HnOaIdService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.hihonor.id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public a()Lcom/bytedance/bdtracker/u5$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/bdtracker/u5$b<",
            "Lcom/bytedance/dr/aidl/f;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/dr/impl/g$a;

    invoke-direct {v0, p0}, Lcom/bytedance/dr/impl/g$a;-><init>(Lcom/bytedance/dr/impl/g;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "HONOR"

    return-object v0
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/bytedance/dr/impl/g;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/dr/impl/g;->a()Lcom/bytedance/bdtracker/u5$b;

    move-result-object v1

    new-instance v2, Lcom/bytedance/bdtracker/u5;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/bdtracker/u5;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/bdtracker/u5$b;)V

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u5;->a()Ljava/lang/Object;

    new-instance p1, Lcom/bytedance/dr/OaidApi$a;

    invoke-direct {p1}, Lcom/bytedance/dr/OaidApi$a;-><init>()V

    iget-object v0, p0, Lcom/bytedance/dr/impl/g;->c:Lcom/bytedance/dr/honor/a;

    .line 1
    iget-object v0, v0, Lcom/bytedance/dr/honor/a;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/dr/impl/g;->d:Lcom/bytedance/dr/honor/b;

    .line 3
    iget-boolean v0, v0, Lcom/bytedance/dr/honor/b;->a:Z

    .line 4
    iput-boolean v0, p1, Lcom/bytedance/dr/OaidApi$a;->b:Z

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getOaid "

    invoke-static {v2}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "honor# "

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
