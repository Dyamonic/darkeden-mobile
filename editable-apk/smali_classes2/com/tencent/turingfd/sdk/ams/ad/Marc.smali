.class public Lcom/tencent/turingfd/sdk/ams/ad/Marc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

.field public static final e:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a:J

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->d:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    .line 8
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;-><init>(Z)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->e:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    return-void
.end method

.method public static a()I
    .locals 2

    .line 59
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x2712

    return v0

    .line 64
    :cond_0
    sget v0, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    if-nez v0, :cond_1

    const/16 v0, -0x2722

    return v0

    .line 68
    :cond_1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x2711

    return v0

    .line 72
    :cond_2
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 74
    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->c()Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Cassiopeia;->userAgreement()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, -0x2723

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    .line 2
    iput-object p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 4
    iget-boolean v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->c:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->c:Z

    .line 11
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/case;->a(Landroid/content/Context;)Z

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TuringFdCore_90_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v2, Landroid/os/HandlerThread;

    const/4 v3, -0x8

    invoke-direct {v2, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous$do;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b:Landroid/os/Handler;

    .line 18
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    iget-object v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->b:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;-><init>(Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->d:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    .line 19
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 20
    iput-object p0, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->d:Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    .line 21
    iput-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->e:Lcom/tencent/turingfd/sdk/ams/ad/Hickory;

    .line 31
    sget-object p0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "xiaomi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "redmi"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 33
    :cond_1
    iget-object p0, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a:Ljava/util/Set;

    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a:Ljava/util/Set;

    const/16 v3, 0x94

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    :cond_2
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/catch;->a:[I

    array-length v1, p0

    if-lez v1, :cond_4

    .line 40
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a:Ljava/util/Set;

    monitor-enter v1

    .line 41
    :try_start_1
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget v5, p0, v4

    .line 42
    iget-object v6, v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 47
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->b()V

    .line 48
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Grape;

    invoke-direct {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Grape;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 57
    :goto_2
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a()V

    return-void

    :catchall_1
    move-exception v0

    .line 58
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static b(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)I
    .locals 5

    const-string v0, "TuringFdJava"

    .line 1
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-boolean v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->h:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 3
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->k:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->k:Ljava/lang/String;

    .line 6
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "turingad"

    .line 7
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v3

    .line 14
    :goto_0
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez v4, :cond_3

    const-string p0, "load so failure"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    :cond_3
    :goto_1
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, -0x2711

    :goto_2
    return v3
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "TuringFD v%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (9F87DFDD2CC93068"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ad"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b8ba8c8"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rfr"

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ";"

    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "rs"

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ";"

    .line 49
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ", "

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, ", "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wup"

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ";"

    .line 71
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "105548"

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, ";"

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "2024_10_25_15_29_52"

    aput-object v3, v2, v5

    const-string v3, ", compiled %s)"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_9

    const-string v1, " ["

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url("

    .line 91
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    iget-object v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->i:[Ljava/lang/String;

    const-string v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, ";"

    .line 95
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "c("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ";"

    .line 100
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-boolean v2, v2, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->z:Z

    if-eqz v2, :cond_8

    const-string v2, "ext"

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ";"

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Lcom/tencent/turingfd/sdk/ams/ad/Flat;)I
    .locals 11

    const-string v0, "TuringFdJava"

    .line 1
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->b()Landroid/content/Context;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    .line 4
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a()Z

    move-result v4

    const/4 v7, 0x0

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_0

    const-string v8, "e_w_d"

    .line 6
    invoke-virtual {v1, v8, v7}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    goto :goto_0

    :cond_0
    move-object v8, v6

    :goto_0
    const-string v9, "2008"

    .line 7
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    const-string v9, "e_r_d"

    .line 9
    invoke-virtual {v1, v9, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    goto :goto_1

    :cond_1
    move-object v9, v6

    :goto_1
    const-string v10, "2009"

    .line 10
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_2

    const-string v9, "e_w_nd"

    .line 12
    invoke-virtual {v1, v9, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    goto :goto_2

    :cond_2
    move-object v9, v6

    :goto_2
    const-string v10, "2010"

    .line 14
    invoke-virtual {v3, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_3

    const-string v4, "e_r_nd"

    .line 17
    invoke-virtual {v1, v4, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v5

    goto :goto_3

    :cond_3
    move-object v1, v6

    :goto_3
    const-string v4, "2011"

    .line 20
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "2025"

    .line 22
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->C:Z

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v6

    :goto_4
    const-string p0, "2028"

    .line 25
    invoke-virtual {v3, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/16 p0, -0x2724

    .line 27
    :try_start_0
    sget-object v4, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->d:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    sget-object v5, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->e:Lcom/tencent/turingfd/sdk/ams/ad/Sculptor;

    .line 28
    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;->a:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    invoke-virtual {v6}, Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;->b()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->i90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native init fail, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_5
    return v7

    :catchall_0
    move-exception v1

    const-string v2, "native init exception"

    .line 33
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method
