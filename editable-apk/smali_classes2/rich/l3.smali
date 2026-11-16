.class public Lrich/l3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/j3;


# instance fields
.field public a:Lcom/rich/oauth/callback/ModelCallback;


# direct methods
.method public constructor <init>(Lcom/rich/oauth/callback/ModelCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrich/l3;->a:Lcom/rich/oauth/callback/ModelCallback;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lrich/f3$a;)V
    .locals 2

    invoke-static {}, Lrich/n3;->a()Lrich/n3;

    move-result-object v0

    iget-object v1, p0, Lrich/l3;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-virtual {v0, p1, v1, p2}, Lrich/n3;->b(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V
    .locals 2

    invoke-static {}, Lrich/n3;->a()Lrich/n3;

    move-result-object v0

    iget-object v1, p0, Lrich/l3;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-virtual {v0, p1, v1, p2, p3}, Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;Lcom/rich/oauth/core/UIConfigBuild;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lrich/n3;->a()Lrich/n3;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v1, p1}, Lrich/o2$b;->b(Ljava/lang/String;)Lrich/o2$b;

    iget-object p1, v0, Lrich/n3;->a:Lrich/p0;

    iget-object v0, v0, Lrich/n3;->b:Lrich/o2$b;

    invoke-virtual {v0}, Lrich/o2$b;->a()Lrich/o2;

    move-result-object v0

    .line 2
    iput-object v0, p1, Lrich/p0;->h:Lrich/o2;

    return-void
.end method

.method public b(Landroid/content/Context;Lrich/f3$a;)V
    .locals 2

    invoke-static {}, Lrich/n3;->a()Lrich/n3;

    move-result-object v0

    iget-object v1, p0, Lrich/l3;->a:Lcom/rich/oauth/callback/ModelCallback;

    invoke-virtual {v0, p1, v1, p2}, Lrich/n3;->a(Landroid/content/Context;Lcom/rich/oauth/callback/ModelCallback;Lrich/f3$a;)V

    return-void
.end method
