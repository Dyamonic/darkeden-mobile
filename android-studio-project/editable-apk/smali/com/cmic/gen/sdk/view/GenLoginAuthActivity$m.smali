.class public Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;
.super Lrich/k2$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;)V
    .locals 1

    invoke-direct {p0}, Lrich/k2$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;

    iget-object p0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;->a(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$n;Z)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;

    .line 1
    iget-object v1, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    const-string v2, "logintype"

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v1, v2, v3}, Lrich/l0;->a(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lrich/f2;->a(ZZ)V

    .line 3
    iget-object v1, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->m:Lrich/r0;

    .line 4
    iget-object v2, v0, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;->l:Lrich/l0;

    .line 5
    new-instance v3, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m$a;

    invoke-direct {v3, p0, v0}, Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m$a;-><init>(Lcom/cmic/gen/sdk/view/GenLoginAuthActivity$m;Lcom/cmic/gen/sdk/view/GenLoginAuthActivity;)V

    invoke-virtual {v1, v2, v3}, Lrich/r0;->b(Lrich/l0;Lrich/s0;)V

    return-void
.end method
