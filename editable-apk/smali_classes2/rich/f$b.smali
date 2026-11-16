.class public Lrich/f$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrich/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lrich/o;

.field public final b:Lrich/q;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lrich/f;Lrich/o;Lrich/q;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrich/f$b;->a:Lrich/o;

    iput-object p3, p0, Lrich/f$b;->b:Lrich/q;

    iput-object p4, p0, Lrich/f$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lrich/f$b;->a:Lrich/o;

    .line 1
    iget-boolean v1, v0, Lrich/o;->j:Z

    if-eqz v1, :cond_0

    const-string v1, "canceled-at-delivery"

    .line 2
    invoke-virtual {v0, v1}, Lrich/o;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lrich/f$b;->b:Lrich/q;

    .line 3
    iget-object v0, v0, Lrich/q;->c:Lrich/u;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lrich/f$b;->a:Lrich/o;

    iget-object v1, p0, Lrich/f$b;->b:Lrich/q;

    iget-object v1, v1, Lrich/q;->a:Ljava/lang/Object;

    check-cast v0, Lrich/f0;

    .line 5
    iget-object v0, v0, Lrich/f0;->o:Lrich/q$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lrich/q$b;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lrich/f$b;->a:Lrich/o;

    iget-object v1, p0, Lrich/f$b;->b:Lrich/q;

    iget-object v1, v1, Lrich/q;->c:Lrich/u;

    .line 7
    iget-object v0, v0, Lrich/o;->f:Lrich/q$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lrich/q$a;->a(Lrich/u;)V

    .line 8
    :cond_3
    :goto_1
    iget-object v0, p0, Lrich/f$b;->b:Lrich/q;

    iget-boolean v0, v0, Lrich/q;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lrich/f$b;->a:Lrich/o;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lrich/o;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lrich/f$b;->a:Lrich/o;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lrich/o;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lrich/f$b;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method
