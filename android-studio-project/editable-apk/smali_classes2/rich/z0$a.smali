.class public Lrich/z0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/t1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/z0;->b(Lrich/o1;Lrich/t1;Lrich/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/o1;

.field public final synthetic b:Lrich/l0;

.field public final synthetic c:Lrich/t1;

.field public final synthetic d:Lrich/z0;


# direct methods
.method public constructor <init>(Lrich/z0;Lrich/o1;Lrich/l0;Lrich/t1;)V
    .locals 0

    iput-object p1, p0, Lrich/z0$a;->d:Lrich/z0;

    iput-object p2, p0, Lrich/z0$a;->a:Lrich/o1;

    iput-object p3, p0, Lrich/z0$a;->b:Lrich/l0;

    iput-object p4, p0, Lrich/z0$a;->c:Lrich/t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrich/r1;)V
    .locals 3

    iget-object v0, p0, Lrich/z0$a;->a:Lrich/o1;

    .line 1
    iget v1, v0, Lrich/o1;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lrich/o1;->j:I

    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "retry: "

    .line 2
    invoke-static {p1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lrich/z0$a;->a:Lrich/o1;

    .line 3
    iget-object v0, v0, Lrich/o1;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RetryAndRedirectInterceptor"

    invoke-static {v0, p1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrich/z0$a;->d:Lrich/z0;

    iget-object v0, p0, Lrich/z0$a;->a:Lrich/o1;

    iget-object v1, p0, Lrich/z0$a;->c:Lrich/t1;

    iget-object v2, p0, Lrich/z0$a;->b:Lrich/l0;

    invoke-virtual {p1, v0, v1, v2}, Lrich/z0;->b(Lrich/o1;Lrich/t1;Lrich/l0;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lrich/z0$a;->c:Lrich/t1;

    invoke-interface {v0, p1}, Lrich/t1;->a(Lrich/r1;)V

    :goto_1
    return-void
.end method

.method public a(Lrich/s1;)V
    .locals 3

    .line 5
    iget v0, p1, Lrich/s1;->a:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lrich/z0$a;->d:Lrich/z0;

    .line 7
    iget-object v0, v0, Lrich/z0;->c:Lrich/l1;

    .line 8
    iget-object v1, p0, Lrich/z0$a;->a:Lrich/o1;

    iget-object v2, p0, Lrich/z0$a;->b:Lrich/l0;

    invoke-virtual {v0, v1, p1, v2}, Lrich/l1;->a(Lrich/o1;Lrich/s1;Lrich/l0;)Lrich/o1;

    move-result-object p1

    iget-object v0, p0, Lrich/z0$a;->d:Lrich/z0;

    iget-object v1, p0, Lrich/z0$a;->c:Lrich/t1;

    iget-object v2, p0, Lrich/z0$a;->b:Lrich/l0;

    invoke-virtual {v0, p1, v1, v2}, Lrich/z0;->b(Lrich/o1;Lrich/t1;Lrich/l0;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lrich/z0$a;->d:Lrich/z0;

    .line 9
    iget-object v0, v0, Lrich/z0;->c:Lrich/l1;

    .line 10
    iget-object v0, v0, Lrich/l1;->a:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lrich/z0$a;->d:Lrich/z0;

    .line 12
    iget-object v0, v0, Lrich/z0;->c:Lrich/l1;

    .line 13
    iget-object v1, p0, Lrich/z0$a;->a:Lrich/o1;

    iget-object v2, p0, Lrich/z0$a;->b:Lrich/l0;

    invoke-virtual {v0, v1, p1, v2}, Lrich/l1;->b(Lrich/o1;Lrich/s1;Lrich/l0;)Lrich/o1;

    move-result-object p1

    iget-object v0, p0, Lrich/z0$a;->d:Lrich/z0;

    iget-object v1, p0, Lrich/z0$a;->c:Lrich/t1;

    iget-object v2, p0, Lrich/z0$a;->b:Lrich/l0;

    invoke-virtual {v0, p1, v1, v2}, Lrich/z0;->b(Lrich/o1;Lrich/t1;Lrich/l0;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lrich/z0$a;->c:Lrich/t1;

    invoke-interface {v0, p1}, Lrich/t1;->a(Lrich/s1;)V

    :goto_2
    return-void
.end method
