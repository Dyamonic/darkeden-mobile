.class public abstract Lcom/bytedance/dr/impl/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/dr/OaidApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/dr/OaidApi;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/bytedance/bdtracker/m5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/m5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/dr/impl/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/dr/impl/b$a;-><init>(Lcom/bytedance/dr/impl/b;)V

    iput-object v0, p0, Lcom/bytedance/dr/impl/b;->b:Lcom/bytedance/bdtracker/m5;

    iput-object p1, p0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract a()Lcom/bytedance/bdtracker/u5$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/bdtracker/u5$b<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getOaid(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi$a;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/bytedance/dr/impl/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/dr/impl/b;->a()Lcom/bytedance/bdtracker/u5$b;

    move-result-object v1

    new-instance v2, Lcom/bytedance/bdtracker/u5;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/bdtracker/u5;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/bdtracker/u5$b;)V

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/u5;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/dr/OaidApi$a;

    invoke-direct {v0}, Lcom/bytedance/dr/OaidApi$a;-><init>()V

    iput-object p1, v0, Lcom/bytedance/dr/OaidApi$a;->a:Ljava/lang/String;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public support(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/dr/impl/b;->b:Lcom/bytedance/bdtracker/m5;

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
