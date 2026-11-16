.class public Lrich/a1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/m2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/a1;->a(Lrich/o1;Lrich/t1;Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Lrich/l0;

.field public final synthetic c:Lrich/o1;

.field public final synthetic d:Lrich/t1;

.field public final synthetic e:Lrich/m2;

.field public final synthetic f:Lrich/a1;


# direct methods
.method public constructor <init>(Lrich/a1;Lrich/l0;Lrich/o1;Lrich/t1;Lrich/m2;)V
    .locals 0

    iput-object p1, p0, Lrich/a1$a;->f:Lrich/a1;

    iput-object p2, p0, Lrich/a1$a;->b:Lrich/l0;

    iput-object p3, p0, Lrich/a1$a;->c:Lrich/o1;

    iput-object p4, p0, Lrich/a1$a;->d:Lrich/t1;

    iput-object p5, p0, Lrich/a1$a;->e:Lrich/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lrich/a1$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 7

    iget-object v0, p0, Lrich/a1$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lrich/a1$a$a;

    iget-object v4, p0, Lrich/a1$a;->b:Lrich/l0;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lrich/a1$a$a;-><init>(Lrich/a1$a;Landroid/content/Context;Lrich/l0;Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-static {v0}, Lrich/k2;->a(Lrich/k2$a;)V

    :cond_0
    return-void
.end method
