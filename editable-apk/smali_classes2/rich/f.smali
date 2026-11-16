.class public Lrich/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrich/f$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrich/f$a;

    invoke-direct {v0, p0, p1}, Lrich/f$a;-><init>(Lrich/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lrich/f;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lrich/o;Lrich/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrich/f;->a(Lrich/o;Lrich/q;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lrich/o;Lrich/q;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lrich/o;->k:Z

    const-string v0, "post-response"

    .line 4
    invoke-virtual {p1, v0}, Lrich/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lrich/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lrich/f$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lrich/f$b;-><init>(Lrich/f;Lrich/o;Lrich/q;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lrich/o;Lrich/u;)V
    .locals 3

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lrich/o;->a(Ljava/lang/String;)V

    .line 1
    new-instance v0, Lrich/q;

    invoke-direct {v0, p2}, Lrich/q;-><init>(Lrich/u;)V

    .line 2
    iget-object p2, p0, Lrich/f;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lrich/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lrich/f$b;-><init>(Lrich/f;Lrich/o;Lrich/q;Ljava/lang/Runnable;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
