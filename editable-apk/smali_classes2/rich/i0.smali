.class public Lrich/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/p1;


# instance fields
.field public final synthetic a:Lrich/j0;


# direct methods
.method public constructor <init>(Lrich/j0;)V
    .locals 0

    iput-object p1, p0, Lrich/i0;->a:Lrich/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    :try_start_0
    const-string p2, "103000"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrich/i0;->a:Lrich/j0;

    .line 1
    invoke-virtual {p1, p3}, Lrich/j0;->a(Lorg/json/JSONObject;)V

    const-string p1, "sdk_config_version"

    const-string p2, "quick_login_android_5.9.7.1"

    .line 2
    invoke-static {p1, p2}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrich/i0;->a:Lrich/j0;

    .line 3
    invoke-virtual {p1}, Lrich/j0;->c()Lrich/h0;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lrich/j0;->a:Lrich/h0;

    .line 5
    iget-object p1, p0, Lrich/i0;->a:Lrich/j0;

    .line 6
    iget-object p1, p1, Lrich/j0;->d:Lrich/j0$b;

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lrich/i0;->a:Lrich/j0;

    .line 8
    iget-object p1, p1, Lrich/j0;->d:Lrich/j0$b;

    .line 9
    iget-object p2, p0, Lrich/i0;->a:Lrich/j0;

    .line 10
    iget-object p2, p2, Lrich/j0;->a:Lrich/h0;

    .line 11
    check-cast p1, Lrich/k0;

    .line 12
    iput-object p2, p1, Lrich/k0;->a:Lrich/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lrich/i0;->a:Lrich/j0;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lrich/j0;->a(Lrich/j0;Z)Z

    return-void
.end method
