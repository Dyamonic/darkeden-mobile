.class final Lcom/qq/gdt/action/e/i;
.super Ljava/lang/Object;


# direct methods
.method private static a()Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/qq/gdt/action/e/h;

    const-string v1, "Tencent/ams/cache"

    const-string v2, "meta.dat"

    invoke-direct {v0, v1, v2}, Lcom/qq/gdt/action/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/qq/gdt/action/e/h;

    const-string v3, "Android/data/com.tencent.ams/cache"

    invoke-direct {v1, v3, v2}, Lcom/qq/gdt/action/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qq/gdt/action/e/h;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/qq/gdt/action/e/h;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x2800

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/e/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/qq/gdt/action/e/h;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonUUIDString:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/jsonUUIDStringBackup:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v3, v4

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v3, v2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/qq/gdt/action/e/h;->b()V

    invoke-virtual {v1}, Lcom/qq/gdt/action/e/h;->b()V

    return-object v3
.end method

.method public static a(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 3

    const-string v0, "com.qq.gdt.action.DeviceIdPref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/qq/gdt/action/e/i;->a(Landroid/content/Context;Z)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/preCheck:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "uuid_standard"

    const-string v1, ""

    if-nez p0, :cond_0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/qq/gdt/action/e/i;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mounted"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
