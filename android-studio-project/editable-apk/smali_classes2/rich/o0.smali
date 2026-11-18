.class public Lrich/o0;
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

    iput-object p1, p0, Lrich/o0;->f:Lrich/p0;

    iput-object p4, p0, Lrich/o0;->b:Lrich/l0;

    iput-object p5, p0, Lrich/o0;->c:Ljava/lang/String;

    iput-object p6, p0, Lrich/o0;->d:Ljava/lang/String;

    iput-object p7, p0, Lrich/o0;->e:Lrich/q0;

    invoke-direct {p0, p2, p3}, Lrich/k2$a;-><init>(Landroid/content/Context;Lrich/l0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lrich/o0;->f:Lrich/p0;

    iget-object v1, p0, Lrich/o0;->b:Lrich/l0;

    iget-object v2, p0, Lrich/o0;->c:Ljava/lang/String;

    iget-object v3, p0, Lrich/o0;->d:Ljava/lang/String;

    iget-object v6, p0, Lrich/o0;->e:Lrich/q0;

    const-string v4, "mobileAuth"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lrich/t0;->a(Lrich/l0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILrich/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrich/o0;->f:Lrich/p0;

    iget-object v1, p0, Lrich/o0;->b:Lrich/l0;

    invoke-static {v0, v1}, Lrich/p0;->b(Lrich/p0;Lrich/l0;)V

    :cond_0
    return-void
.end method
