.class public Lcom/bytedance/dr/impl/b$a;
.super Lcom/bytedance/bdtracker/m5;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/dr/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/bdtracker/m5<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/bytedance/dr/impl/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/dr/impl/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/dr/impl/b$a;->b:Lcom/bytedance/dr/impl/b;

    invoke-direct {p0}, Lcom/bytedance/bdtracker/m5;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/dr/impl/b$a;->b:Lcom/bytedance/dr/impl/b;

    .line 2
    iget-object v0, v0, Lcom/bytedance/dr/impl/b;->a:Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/a5;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
