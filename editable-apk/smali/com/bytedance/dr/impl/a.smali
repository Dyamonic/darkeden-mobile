.class public final Lcom/bytedance/dr/impl/a;
.super Lcom/bytedance/dr/impl/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/dr/impl/b<",
        "Lcom/bytedance/dr/aidl/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.asus.msa.SupplementaryDID"

    invoke-direct {p0, v0}, Lcom/bytedance/dr/impl/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.asus.msa.action.ACCESS_DID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.asus.msa.SupplementaryDID"

    const-string v2, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1
.end method

.method public a()Lcom/bytedance/bdtracker/u5$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/bdtracker/u5$b<",
            "Lcom/bytedance/dr/aidl/d;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/dr/impl/a$a;

    invoke-direct {v0, p0}, Lcom/bytedance/dr/impl/a$a;-><init>(Lcom/bytedance/dr/impl/a;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ASUS"

    return-object v0
.end method
