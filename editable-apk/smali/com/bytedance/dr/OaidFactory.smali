.class public final Lcom/bytedance/dr/OaidFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOaidImpl(Landroid/content/Context;)Lcom/bytedance/dr/OaidApi;
    .locals 6

    invoke-static {}, Lcom/bytedance/bdtracker/f5;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/bytedance/dr/impl/l;

    new-instance v0, Lcom/bytedance/dr/impl/n;

    invoke-direct {v0}, Lcom/bytedance/dr/impl/n;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/dr/impl/l;-><init>(Lcom/bytedance/dr/OaidApi;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/bytedance/dr/impl/n;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/bytedance/dr/impl/n;

    invoke-direct {v1}, Lcom/bytedance/dr/impl/n;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Oaid#XiaomiOppoImpl oaid failed -> "

    invoke-interface {v2, v4, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1
    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "XIAOMI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "REDMI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 2
    invoke-static {}, Lcom/bytedance/dr/impl/n;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Lcom/bytedance/dr/impl/n;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/n;-><init>()V

    return-object p0

    .line 3
    :cond_4
    sget-object v1, Lcom/bytedance/dr/impl/k;->a:Lcom/bytedance/bdtracker/m5;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/m5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    new-instance p0, Lcom/bytedance/dr/impl/k;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/k;-><init>()V

    return-object p0

    :cond_5
    invoke-static {}, Lcom/bytedance/bdtracker/f5;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/bytedance/bdtracker/f5;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "honor# Oaid#old honor oaid"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/bytedance/dr/impl/e;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/e;-><init>()V

    return-object p0

    :cond_6
    invoke-static {}, Lcom/bytedance/bdtracker/f5;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/bytedance/bdtracker/f5;->a()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "honor# Oaid#new honor oaid"

    invoke-interface {p0, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/bytedance/dr/impl/g;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/g;-><init>()V

    return-object p0

    :cond_7
    invoke-static {}, Lcom/bytedance/bdtracker/f5;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p0, Lcom/bytedance/dr/impl/e;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/e;-><init>()V

    return-object p0

    .line 5
    :cond_8
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "OnePlus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 6
    new-instance p0, Lcom/bytedance/dr/impl/l;

    .line 7
    invoke-direct {p0, v2}, Lcom/bytedance/dr/impl/l;-><init>(Lcom/bytedance/dr/OaidApi;)V

    return-object p0

    .line 8
    :cond_9
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_2

    :cond_a
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "meizu"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_b

    .line 9
    new-instance p0, Lcom/bytedance/dr/impl/i;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/i;-><init>()V

    return-object p0

    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v1, v4, :cond_17

    .line 10
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    :cond_c
    move v1, v0

    goto :goto_4

    :cond_d
    :goto_3
    move v1, v3

    :goto_4
    if-eqz v1, :cond_e

    .line 11
    new-instance p0, Lcom/bytedance/dr/impl/m;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/m;-><init>()V

    return-object p0

    .line 12
    :cond_e
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_f

    move-object v1, v2

    goto :goto_5

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NUBIA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 14
    new-instance p0, Lcom/bytedance/dr/impl/j;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/j;-><init>()V

    return-object p0

    .line 15
    :cond_10
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "VIBEUI_V2"

    if-nez v4, :cond_11

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_6

    :cond_11
    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/bytedance/bdtracker/f5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v3

    :cond_12
    :goto_6
    if-eqz v0, :cond_13

    .line 16
    new-instance p0, Lcom/bytedance/dr/impl/h;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/h;-><init>()V

    return-object p0

    .line 17
    :cond_13
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v0, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 18
    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 19
    new-instance p0, Lcom/bytedance/dr/impl/a;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/a;-><init>()V

    return-object p0

    :cond_15
    new-instance v0, Lcom/bytedance/dr/impl/d;

    invoke-direct {v0, p0}, Lcom/bytedance/dr/impl/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/dr/impl/b;->support(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v0

    :cond_16
    new-instance p0, Lcom/bytedance/dr/impl/c;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/c;-><init>()V

    return-object p0

    :cond_17
    invoke-static {}, Lcom/bytedance/bdtracker/f5;->f()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/bytedance/dr/impl/e;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_18

    new-instance p0, Lcom/bytedance/dr/impl/e;

    invoke-direct {p0}, Lcom/bytedance/dr/impl/e;-><init>()V

    return-object p0

    :cond_18
    return-object v2
.end method
