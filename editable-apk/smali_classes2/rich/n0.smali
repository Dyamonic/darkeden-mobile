.class public Lrich/n0;
.super Lrich/k2$a;
.source ""


# instance fields
.field public final synthetic b:Lrich/l0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lrich/q0;

.field public final synthetic f:Lrich/p0;


# direct methods
.method public constructor <init>(Lrich/p0;Landroid/content/Context;Lrich/l0;Lrich/l0;Ljava/lang/String;Ljava/lang/String;Lrich/q0;)V
    .locals 0

    iput-object p1, p0, Lrich/n0;->f:Lrich/p0;

    iput-object p4, p0, Lrich/n0;->b:Lrich/l0;

    iput-object p5, p0, Lrich/n0;->c:Ljava/lang/String;

    iput-object p6, p0, Lrich/n0;->d:Ljava/lang/String;

    iput-object p7, p0, Lrich/n0;->e:Lrich/q0;

    invoke-direct {p0, p2, p3}, Lrich/k2$a;-><init>(Landroid/content/Context;Lrich/l0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lrich/n0;->f:Lrich/p0;

    iget-object v1, p0, Lrich/n0;->b:Lrich/l0;

    iget-object v2, p0, Lrich/n0;->c:Ljava/lang/String;

    iget-object v3, p0, Lrich/n0;->d:Ljava/lang/String;

    iget-object v6, p0, Lrich/n0;->e:Lrich/q0;

    const-string v4, "loginAuth"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v6}, Lrich/t0;->a(Lrich/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrich/q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrich/n0;->f:Lrich/p0;

    iget-object v0, v0, Lrich/t0;->b:Landroid/content/Context;

    invoke-static {v0}, Lrich/f2;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lrich/n0;->b:Lrich/l0;

    const-string v2, "phonescrip"

    invoke-virtual {v1, v2, v0}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lrich/n0;->f:Lrich/p0;

    iget-object v1, p0, Lrich/n0;->b:Lrich/l0;

    invoke-virtual {v0, v1}, Lrich/p0;->a(Lrich/l0;)V

    :cond_1
    return-void
.end method
