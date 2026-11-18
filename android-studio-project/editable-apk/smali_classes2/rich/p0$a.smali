.class public Lrich/p0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/p0;->a(Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/t0$d;

.field public final synthetic b:Lrich/p0;


# direct methods
.method public constructor <init>(Lrich/p0;Lrich/t0$d;)V
    .locals 0

    iput-object p1, p0, Lrich/p0$a;->b:Lrich/p0;

    iput-object p2, p0, Lrich/p0$a;->a:Lrich/t0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "onBusinessComplete"

    invoke-static {v0, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lrich/p0$a;->b:Lrich/p0;

    iget-object v0, v0, Lrich/t0;->d:Landroid/os/Handler;

    iget-object v1, p0, Lrich/p0$a;->a:Lrich/t0$d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "103000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "traceId"

    const-string v1, ""

    .line 1
    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lrich/d2;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lrich/p0$a;->b:Lrich/p0;

    iget-object p1, p1, Lrich/t0;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p3, v0, v1}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2, p3}, Lrich/d2;->a(Ljava/lang/String;Lrich/l0;)V

    const-string p2, "com.cmic.gen.sdk.view.GenLoginAuthActivity"

    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p4, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lrich/p0$a;->b:Lrich/p0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrich/t0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void
.end method
