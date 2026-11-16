.class public Lrich/a1$a$a;
.super Lrich/k2$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/a1$a;->a(Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/net/Network;

.field public final synthetic c:Landroid/net/ConnectivityManager$NetworkCallback;

.field public final synthetic d:Lrich/a1$a;


# direct methods
.method public constructor <init>(Lrich/a1$a;Landroid/content/Context;Lrich/l0;Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 0

    iput-object p1, p0, Lrich/a1$a$a;->d:Lrich/a1$a;

    iput-object p4, p0, Lrich/a1$a$a;->b:Landroid/net/Network;

    iput-object p5, p0, Lrich/a1$a$a;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, p2, p3}, Lrich/k2$a;-><init>(Landroid/content/Context;Lrich/l0;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lrich/a1$a$a;->b:Landroid/net/Network;

    if-eqz v0, :cond_0

    const-string v0, "WifiChangeInterceptor"

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lrich/a1$a$a;->d:Lrich/a1$a;

    iget-object v1, v0, Lrich/a1$a;->c:Lrich/o1;

    iget-object v2, p0, Lrich/a1$a$a;->b:Landroid/net/Network;

    .line 1
    iput-object v2, v1, Lrich/o1;->g:Landroid/net/Network;

    .line 2
    iget-object v2, v0, Lrich/a1$a;->f:Lrich/a1;

    iget-object v3, v0, Lrich/a1$a;->d:Lrich/t1;

    iget-object v0, v0, Lrich/a1$a;->b:Lrich/l0;

    .line 3
    iget-object v4, v2, Lrich/a1;->a:Lrich/y0;

    if-eqz v4, :cond_1

    new-instance v5, Lrich/b1;

    invoke-direct {v5, v2, v3}, Lrich/b1;-><init>(Lrich/a1;Lrich/t1;)V

    invoke-interface {v4, v1, v5, v0}, Lrich/y0;->a(Lrich/o1;Lrich/t1;Lrich/l0;)V

    goto :goto_0

    :cond_0
    const v0, 0x1906c

    .line 4
    invoke-static {v0}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object v0

    iget-object v1, p0, Lrich/a1$a$a;->d:Lrich/a1$a;

    iget-object v1, v1, Lrich/a1$a;->d:Lrich/t1;

    invoke-interface {v1, v0}, Lrich/t1;->a(Lrich/r1;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lrich/a1$a$a;->d:Lrich/a1$a;

    iget-object v0, v0, Lrich/a1$a;->e:Lrich/m2;

    iget-object v1, p0, Lrich/a1$a$a;->c:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 5
    iget-object v2, v0, Lrich/m2;->a:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "WifiNetworkUtils"

    const-string v3, "unregisterNetworkCallback"

    invoke-static {v2, v3}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lrich/m2;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
