.class public Lrich/m2$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrich/m2;->a(Lrich/m2$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrich/m2$b;

.field public final synthetic b:Lrich/m2;


# direct methods
.method public constructor <init>(Lrich/m2;Lrich/m2$b;)V
    .locals 0

    iput-object p1, p0, Lrich/m2$a;->b:Lrich/m2;

    iput-object p2, p0, Lrich/m2$a;->a:Lrich/m2$b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lrich/m2$a;->b:Lrich/m2;

    .line 1
    iget-object v1, v1, Lrich/m2;->a:Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrich/m2$a;->a:Lrich/m2$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Lrich/a1$a;

    goto :goto_0

    :cond_0
    :try_start_1
    const-string p1, "WifiNetworkUtils"

    const-string v1, "\u5207\u6362\u5931\u8d25\uff0c\u672a\u5f00\u542f\u6570\u636e\u7f51\u7edc"

    invoke-static {p1, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrich/m2$a;->a:Lrich/m2$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    check-cast v1, Lrich/a1$a;

    move-object p1, v0

    :goto_0
    :try_start_2
    invoke-virtual {v1, p1, p0}, Lrich/a1$a;->a(Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lrich/m2$a;->a:Lrich/m2$b;

    check-cast p1, Lrich/a1$a;

    invoke-virtual {p1, v0, p0}, Lrich/a1$a;->a(Landroid/net/Network;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_1
    return-void
.end method
