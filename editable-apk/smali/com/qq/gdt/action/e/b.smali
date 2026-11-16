.class public final Lcom/qq/gdt/action/e/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/e/b$a;,
        Lcom/qq/gdt/action/e/b$b;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;
    .locals 3

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/qq/gdt/action/e/b$1;->b:[I

    invoke-virtual {p1}, Lcom/qq/gdt/action/e/b$a;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->m()Lcom/qq/gdt/action/multioprocess/b/b$j;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$j;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$j;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$j;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$j;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->l()Lcom/qq/gdt/action/multioprocess/b/b$b;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$b;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$b;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$b;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$b;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->k()Lcom/qq/gdt/action/multioprocess/b/b$c;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$c;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$c;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$c;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$c;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->j()Lcom/qq/gdt/action/multioprocess/b/b$l;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$l;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$l;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$l;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$l;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->i()Lcom/qq/gdt/action/multioprocess/b/b$k;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$k;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$k;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$k;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$k;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->h()Lcom/qq/gdt/action/multioprocess/b/b$m;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$m;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$m;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$m;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$m;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->g()Lcom/qq/gdt/action/multioprocess/b/b$e;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$e;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$e;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$e;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$e;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->f()Lcom/qq/gdt/action/multioprocess/b/b$d;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$d;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$d;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$d;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$d;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->e()Lcom/qq/gdt/action/multioprocess/b/b$f;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$f;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$f;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$f;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$f;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->d()Lcom/qq/gdt/action/multioprocess/b/b$h;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$h;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$h;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$h;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$h;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->c()Lcom/qq/gdt/action/multioprocess/b/b$g;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$g;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$g;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$g;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$g;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->b()Lcom/qq/gdt/action/multioprocess/b/b$i;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$i;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$i;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$i;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$i;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/qq/gdt/action/multioprocess/b/a;->a()Lcom/qq/gdt/action/multioprocess/b/b$a;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/b$a;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/b$a;-><init>()V

    move-object p1, v1

    check-cast p1, Lcom/qq/gdt/action/multioprocess/b/b$a;

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/multioprocess/b/a;->a(Lcom/qq/gdt/action/multioprocess/b/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->k:Lcom/qq/gdt/action/e/b$a;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBuildModule Throwable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_1
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->c:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->a:Lcom/qq/gdt/action/e/b$a;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v5

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v6

    invoke-static {v5, v6}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "android_id"

    invoke-static {p0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    move-object v3, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAndroidId throwable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAndroidId Throwable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v0

    return-object v3

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->d:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->f:Lcom/qq/gdt/action/e/b$a;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->g:Lcom/qq/gdt/action/e/b$a;

    :cond_2
    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p2}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_4

    monitor-exit v0

    return-object v3

    :cond_4
    :try_start_3
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p2, v4, :cond_5

    goto :goto_0

    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge p2, v4, :cond_6

    goto :goto_0

    :cond_6
    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    :try_start_4
    const-string p2, "phone"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Landroid/telephony/TelephonyManager;

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDeviceId throwable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_c
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->B()Lcom/qq/gdt/action/PrivateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/PrivateController;->getDevImei()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->d:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->e:Lcom/qq/gdt/action/e/b$a;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    :try_start_4
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceId throwable"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_a
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/qq/gdt/action/multioprocess/b/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/qq/gdt/action/multioprocess/d;->a(Lcom/qq/gdt/action/multioprocess/b/a;)V

    return-void
.end method

.method public static a(II)Z
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/e/b$1;->a:[I

    invoke-virtual {p1}, Lcom/qq/gdt/action/e/b$b;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->h()I

    move-result p0

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->g()I

    move-result p0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->l()I

    move-result p0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->k()I

    move-result p0

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->j()I

    move-result p0

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/b;->i()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!checkSwitchOpen error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized b()Lcom/qq/gdt/action/multioprocess/b/a;
    .locals 2

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/d;->a()Lcom/qq/gdt/action/multioprocess/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/d;->e()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/multioprocess/b/a;

    invoke-direct {v1}, Lcom/qq/gdt/action/multioprocess/b/a;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->b:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->c:Lcom/qq/gdt/action/e/b$a;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->d:Lcom/qq/gdt/action/e/b$a;

    :cond_2
    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p2}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p2, :cond_4

    monitor-exit v0

    return-object v3

    :cond_4
    :try_start_3
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt p2, v4, :cond_5

    goto :goto_0

    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge p2, v4, :cond_6

    goto :goto_0

    :cond_6
    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    :try_start_4
    const-string p2, "phone"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Landroid/telephony/TelephonyManager;

    if-nez p2, :cond_9

    goto :goto_0

    :cond_9
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_b

    goto :goto_0

    :cond_b
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getImei throwable"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_c
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e/b;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/e;->B()Lcom/qq/gdt/action/PrivateController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qq/gdt/action/PrivateController;->getDevImei()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->b:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->b:Lcom/qq/gdt/action/e/b$a;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt p1, v4, :cond_4

    goto :goto_0

    :cond_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge p1, v4, :cond_5

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    :try_start_4
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImei throwable "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_b
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->a:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->i:Lcom/qq/gdt/action/e/b$a;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->j:Lcom/qq/gdt/action/e/b$a;

    :cond_1
    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p2}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_3

    monitor-exit v0

    return-object v3

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt p2, v4, :cond_4

    goto :goto_0

    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge p2, v4, :cond_5

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    :try_start_3
    const-string p2, "phone"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Landroid/telephony/TelephonyManager;

    if-nez p2, :cond_8

    goto :goto_0

    :cond_8
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMeid throwable "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_b
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/qq/gdt/action/e/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/e/b$b;->a:Lcom/qq/gdt/action/e/b$b;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/e/b;->a(Landroid/content/Context;Lcom/qq/gdt/action/e/b$b;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/e/b;->b()Lcom/qq/gdt/action/multioprocess/b/a;

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/e/b$a;->h:Lcom/qq/gdt/action/e/b$a;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/e/b;->a(Lcom/qq/gdt/action/multioprocess/b/a;Lcom/qq/gdt/action/e/b$a;)Lcom/qq/gdt/action/multioprocess/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->b()I

    move-result v4

    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/qq/gdt/action/e/b;->a(II)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/qq/gdt/action/multioprocess/b/b;->d()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt p1, v4, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge p1, v4, :cond_4

    goto :goto_0

    :cond_4
    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    :try_start_3
    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const-class p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    move-object v3, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMeid throwable "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v3, v2, v1}, Lcom/qq/gdt/action/e/b;->a(Ljava/lang/String;Lcom/qq/gdt/action/multioprocess/b/b;Lcom/qq/gdt/action/multioprocess/b/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v0

    return-object v3

    :cond_a
    :goto_1
    monitor-exit v0

    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c()Z
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->B()Lcom/qq/gdt/action/PrivateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/PrivateController;->isCanUsePhoneState()Z

    move-result v0

    return v0
.end method
