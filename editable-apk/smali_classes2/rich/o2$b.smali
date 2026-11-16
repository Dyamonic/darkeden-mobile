.class public Lrich/o2$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrich/o2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public A0:Z

.field public B:Ljava/lang/String;

.field public B0:Z

.field public C:I

.field public C0:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Ljava/lang/String;

.field public J:Z

.field public K:Lrich/p2;

.field public L:Lrich/s2;

.field public M:Lrich/q2;

.field public N:Lrich/r2;

.field public O:Lrich/n2;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:I

.field public T:Z

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Z

.field public a0:Ljava/lang/String;

.field public b:I

.field public b0:Ljava/lang/String;

.field public c:Z

.field public c0:Ljava/lang/String;

.field public d:Landroid/view/View;

.field public d0:I

.field public e:I

.field public e0:Z

.field public f:I

.field public f0:I

.field public g:Ljava/lang/String;

.field public g0:I

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:I

.field public j:I

.field public j0:I

.field public k:Z

.field public k0:I

.field public l:I

.field public l0:I

.field public m:Ljava/lang/String;

.field public m0:Z

.field public n:I

.field public n0:I

.field public o:I

.field public o0:Ljava/lang/String;

.field public p:Landroid/widget/ImageView$ScaleType;

.field public p0:Ljava/lang/String;

.field public q:I

.field public q0:Ljava/lang/String;

.field public r:Z

.field public r0:Ljava/lang/String;

.field public s:I

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public u0:I

.field public v:I

.field public v0:I

.field public w:Ljava/lang/String;

.field public w0:I

.field public x:Z

.field public x0:I

.field public y:I

.field public y0:I

.field public z:Z

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lrich/o2$b;->b:I

    iput-boolean v0, p0, Lrich/o2$b;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lrich/o2$b;->d:Landroid/view/View;

    const/4 v2, -0x1

    iput v2, p0, Lrich/o2$b;->e:I

    iput v2, p0, Lrich/o2$b;->f:I

    const/16 v3, 0x11

    iput v3, p0, Lrich/o2$b;->h:I

    iput v2, p0, Lrich/o2$b;->i:I

    const v3, -0xff7930

    iput v3, p0, Lrich/o2$b;->j:I

    iput v3, p0, Lrich/o2$b;->l:I

    const-string v4, "return_bg"

    iput-object v4, p0, Lrich/o2$b;->m:Ljava/lang/String;

    const/4 v4, -0x2

    iput v4, p0, Lrich/o2$b;->n:I

    iput v4, p0, Lrich/o2$b;->o:I

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v4, p0, Lrich/o2$b;->p:Landroid/widget/ImageView$ScaleType;

    const/16 v4, 0x12

    iput v4, p0, Lrich/o2$b;->q:I

    iput-boolean v0, p0, Lrich/o2$b;->r:Z

    iput v3, p0, Lrich/o2$b;->s:I

    iput v0, p0, Lrich/o2$b;->t:I

    const/16 v3, 0xb8

    iput v3, p0, Lrich/o2$b;->u:I

    iput v0, p0, Lrich/o2$b;->v:I

    const-string v3, "\u672c\u673a\u53f7\u7801\u4e00\u952e\u767b\u5f55"

    iput-object v3, p0, Lrich/o2$b;->w:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lrich/o2$b;->x:Z

    const/16 v4, 0xf

    iput v4, p0, Lrich/o2$b;->y:I

    iput-boolean v0, p0, Lrich/o2$b;->z:Z

    iput v2, p0, Lrich/o2$b;->A:I

    const-string v4, "umcsdk_login_btn_bg"

    iput-object v4, p0, Lrich/o2$b;->B:Ljava/lang/String;

    iput v2, p0, Lrich/o2$b;->C:I

    const/16 v4, 0x24

    iput v4, p0, Lrich/o2$b;->D:I

    const/16 v4, 0x2e

    iput v4, p0, Lrich/o2$b;->E:I

    iput v4, p0, Lrich/o2$b;->F:I

    const/16 v4, 0xfe

    iput v4, p0, Lrich/o2$b;->G:I

    iput v0, p0, Lrich/o2$b;->H:I

    const-string v4, "umcsdk_check_image"

    iput-object v4, p0, Lrich/o2$b;->P:Ljava/lang/String;

    const-string v4, "umcsdk_uncheck_image"

    iput-object v4, p0, Lrich/o2$b;->Q:Ljava/lang/String;

    const/16 v4, 0x9

    iput v4, p0, Lrich/o2$b;->R:I

    iput v4, p0, Lrich/o2$b;->S:I

    iput-boolean v0, p0, Lrich/o2$b;->T:Z

    const-string v4, "\u767b\u5f55\u5373\u540c\u610f$$\u8fd0\u8425\u5546\u6761\u6b3e$$\u5e76\u4f7f\u7528\u672c\u673a\u53f7\u7801\u767b\u5f55"

    iput-object v4, p0, Lrich/o2$b;->U:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->V:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->W:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->X:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->Y:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->Z:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->a0:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->b0:Ljava/lang/String;

    iput-object v1, p0, Lrich/o2$b;->c0:Ljava/lang/String;

    const/16 v1, 0xa

    iput v1, p0, Lrich/o2$b;->d0:I

    iput-boolean v0, p0, Lrich/o2$b;->e0:Z

    const v1, -0x99999a

    iput v1, p0, Lrich/o2$b;->f0:I

    const v1, -0xf441fa

    iput v1, p0, Lrich/o2$b;->g0:I

    iput-boolean v0, p0, Lrich/o2$b;->h0:Z

    const/16 v1, 0x34

    iput v1, p0, Lrich/o2$b;->i0:I

    iput v1, p0, Lrich/o2$b;->j0:I

    iput v0, p0, Lrich/o2$b;->k0:I

    const/16 v1, 0x1e

    iput v1, p0, Lrich/o2$b;->l0:I

    iput-boolean v3, p0, Lrich/o2$b;->m0:Z

    iput v0, p0, Lrich/o2$b;->w0:I

    iput v2, p0, Lrich/o2$b;->x0:I

    const v1, 0x1030010

    iput v1, p0, Lrich/o2$b;->y0:I

    iput v0, p0, Lrich/o2$b;->z0:I

    iput-boolean v3, p0, Lrich/o2$b;->A0:Z

    iput-boolean v3, p0, Lrich/o2$b;->B0:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lrich/o2$b;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lrich/o2$b;->J:Z

    if-eqz v0, :cond_2

    const-string p1, "\u8bf7\u52fe\u9009\u540c\u610f\u670d\u52a1\u6761\u6b3e"

    :cond_2
    iput-object p1, p0, Lrich/o2$b;->I:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrich/o2$b;
    .locals 1

    const-string v0, "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lrich/o2$b;->U:Ljava/lang/String;

    iput-object p2, p0, Lrich/o2$b;->V:Ljava/lang/String;

    iput-object p3, p0, Lrich/o2$b;->W:Ljava/lang/String;

    iput-object p4, p0, Lrich/o2$b;->X:Ljava/lang/String;

    iput-object p5, p0, Lrich/o2$b;->Y:Ljava/lang/String;

    iput-object p6, p0, Lrich/o2$b;->Z:Ljava/lang/String;

    iput-object p7, p0, Lrich/o2$b;->a0:Ljava/lang/String;

    iput-object p8, p0, Lrich/o2$b;->b0:Ljava/lang/String;

    iput-object p9, p0, Lrich/o2$b;->c0:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public a()Lrich/o2;
    .locals 2

    new-instance v0, Lrich/o2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrich/o2;-><init>(Lrich/o2$b;Lrich/o2$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lrich/o2$b;
    .locals 0

    iput-object p1, p0, Lrich/o2$b;->B:Ljava/lang/String;

    return-object p0
.end method
