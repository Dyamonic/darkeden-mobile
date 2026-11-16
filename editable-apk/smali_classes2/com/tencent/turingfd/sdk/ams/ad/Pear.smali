.class public Lcom/tencent/turingfd/sdk/ams/ad/Pear;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->l:[I

    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    if-nez v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_4
    :goto_0
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2f

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 17
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 23
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const-string p0, ".so"

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-nez p0, :cond_4

    const-string v3, ".jar"

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    if-nez p0, :cond_5

    if-nez v1, :cond_5

    return v0

    .line 31
    :cond_5
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->m:[I

    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Pear;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x1

    .line 7
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/finally;->n:[I

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "\\n"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 14
    array-length v4, v3

    if-nez v4, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 19
    array-length v5, v3

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v3, v6

    .line 20
    invoke-static {v4, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Pear;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    :cond_3
    :goto_1
    move v3, v1

    .line 21
    :goto_2
    invoke-static {v0, v3, v2}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result v0

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 30
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Peanut;

    invoke-direct {p0, v5, v4, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Peanut;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    monitor-enter v3

    const-wide/16 v6, 0x64

    .line 68
    :try_start_1
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 71
    :catch_0
    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v3, 0x2

    .line 76
    invoke-static {v0, p0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result p0

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    :try_start_3
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->E0:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v1, v2

    :catchall_2
    const/4 v0, 0x3

    .line 82
    invoke-static {p0, v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/this;->a(IZI)I

    move-result p0

    return p0

    .line 83
    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
