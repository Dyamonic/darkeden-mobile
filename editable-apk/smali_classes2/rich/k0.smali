.class public Lrich/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/j0$b;


# static fields
.field public static d:Lrich/k0;


# instance fields
.field public a:Lrich/h0;

.field public b:Lrich/h0;

.field public c:Lrich/j0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "sdk_config_version"

    const-string v0, ""

    .line 1
    invoke-static {p1, v0}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quick_login_android_5.9.7.1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lrich/j0;->a(Z)Lrich/j0;

    move-result-object p1

    iput-object p1, p0, Lrich/k0;->c:Lrich/j0;

    .line 2
    iget-object p1, p1, Lrich/j0;->a:Lrich/h0;

    .line 3
    iput-object p1, p0, Lrich/k0;->a:Lrich/h0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lrich/j0;->a(Z)Lrich/j0;

    move-result-object v0

    iput-object v0, p0, Lrich/k0;->c:Lrich/j0;

    invoke-virtual {v0}, Lrich/j0;->a()Lrich/h0;

    move-result-object v0

    iput-object v0, p0, Lrich/k0;->a:Lrich/h0;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "UmcConfigManager"

    const-string v0, "delete localConfig"

    .line 4
    invoke-static {p1, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lrich/k0;->c:Lrich/j0;

    invoke-virtual {p1}, Lrich/j0;->b()V

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lrich/k0;->c:Lrich/j0;

    .line 6
    iput-object p0, p1, Lrich/j0;->d:Lrich/j0$b;

    .line 7
    invoke-virtual {p1}, Lrich/j0;->a()Lrich/h0;

    move-result-object p1

    iput-object p1, p0, Lrich/k0;->b:Lrich/h0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lrich/k0;
    .locals 2

    sget-object v0, Lrich/k0;->d:Lrich/k0;

    if-nez v0, :cond_1

    const-class v0, Lrich/k0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/k0;->d:Lrich/k0;

    if-nez v1, :cond_0

    new-instance v1, Lrich/k0;

    invoke-direct {v1, p0}, Lrich/k0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lrich/k0;->d:Lrich/k0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lrich/k0;->d:Lrich/k0;

    return-object p0
.end method


# virtual methods
.method public a()Lrich/h0;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lrich/k0;->a:Lrich/h0;

    invoke-virtual {v0}, Lrich/h0;->a()Lrich/h0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lrich/k0;->b:Lrich/h0;

    return-object v0
.end method
