.class public Lrich/j0$a;
.super Lrich/k2$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/j0;->a(Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lrich/l0;

.field public final synthetic c:Lrich/j0;


# direct methods
.method public constructor <init>(Lrich/j0;Lrich/l0;)V
    .locals 0

    iput-object p1, p0, Lrich/j0$a;->c:Lrich/j0;

    iput-object p2, p0, Lrich/j0$a;->b:Lrich/l0;

    invoke-direct {p0}, Lrich/k2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "UmcConfigHandle"

    const-string v1, "\u5f00\u59cb\u62c9\u53d6\u914d\u7f6e.."

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lrich/j0$a;->c:Lrich/j0;

    iget-object v2, p0, Lrich/j0$a;->b:Lrich/l0;

    .line 1
    iget-boolean v3, v1, Lrich/j0;->c:Z

    if-eqz v3, :cond_0

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u914d\u7f6e\u4e2d..."

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, v1, Lrich/j0;->c:Z

    invoke-static {}, Lrich/m1;->a()Lrich/m1;

    move-result-object v0

    new-instance v3, Lrich/i0;

    invoke-direct {v3, v1}, Lrich/i0;-><init>(Lrich/j0;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lrich/m1;->a(ZLrich/l0;Lrich/p1;)V

    :goto_0
    return-void
.end method
