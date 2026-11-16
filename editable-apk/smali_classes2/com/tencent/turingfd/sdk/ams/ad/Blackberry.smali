.class public Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bryony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->Z0:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->d1:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->b:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;
    .locals 11

    .line 846
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 847
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    if-nez v1, :cond_1

    const-string v1, "1001"

    .line 848
    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 850
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    return-object p0

    :cond_0
    const-wide/16 v1, 0x0

    :try_start_1
    const-string v3, "1002"

    .line 851
    invoke-static {p0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-wide v5, v1

    :goto_0
    :try_start_2
    const-string v3, "1003"

    .line 852
    invoke-static {p0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-wide v7, v1

    :try_start_3
    const-string v1, "1004"

    .line 853
    invoke-static {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    const/4 p0, 0x0

    :goto_1
    move v9, p0

    .line 854
    :try_start_4
    const-class p0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 855
    :try_start_5
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    monitor-exit p0

    const-string p0, "1005"

    .line 856
    invoke-static {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 857
    new-instance v1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/4 v3, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(ILjava/lang/String;JJILjava/lang/String;)V

    .line 859
    sget-object p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_3
    move-exception v1

    .line 860
    monitor-exit p0

    throw v1

    .line 861
    :cond_1
    :goto_2
    monitor-exit v0

    return-object v1

    :catchall_4
    move-exception p0

    .line 862
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;IJ)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;IJ)",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bryony;"
        }
    .end annotation

    .line 99
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 100
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p1, -0x2718

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    return-object p0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 105
    iget v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->e:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    or-int/lit8 p2, p2, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 111
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    and-int/lit8 p2, p2, -0x2

    or-int/lit8 p2, p2, 0x2

    :cond_2
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_1
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 123
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-wide p2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->c:J

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    iget-wide p2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->d:J

    cmp-long p0, p0, p2

    if-ltz p0, :cond_5

    .line 127
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;-><init>(Ljava/util/Map;Z)V

    .line 128
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a()Ljava/util/concurrent/FutureTask;

    :cond_5
    return-object v0

    .line 136
    :cond_6
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->c(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_8

    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    return-object v0

    .line 144
    :cond_7
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p1, -0x271c

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    return-object p0

    .line 149
    :cond_8
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;

    .line 150
    invoke-direct {p0, p1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;-><init>(Ljava/util/Map;Z)V

    .line 151
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a()Ljava/util/concurrent/FutureTask;

    move-result-object p0

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-lez p1, :cond_9

    goto :goto_2

    .line 154
    :cond_9
    :try_start_0
    const-class p1, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :try_start_1
    sget-object p3, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    .line 156
    iget-wide p3, p3, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->x:J

    .line 157
    :goto_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 158
    invoke-virtual {p0, p3, p4, p1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-eqz p2, :cond_a

    if-eqz v0, :cond_a

    return-object v0

    .line 170
    :cond_a
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p1, -0x271f

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    return-object p0

    :catch_1
    if-eqz p2, :cond_b

    if-eqz v0, :cond_b

    return-object v0

    .line 171
    :cond_b
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p1, -0x2714

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;[BLcom/tencent/turingfd/sdk/ams/ad/Betelnut;)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;
    .locals 10

    .line 47
    array-length p0, p1

    if-nez p0, :cond_0

    .line 48
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p1, -0x3e8

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto/16 :goto_1

    .line 51
    :cond_0
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->b:Lcom/tencent/turingfd/sdk/ams/ad/Longan;

    const/4 v1, 0x5

    const/16 v3, 0x1fbb

    const/16 v4, 0x46cb

    const/4 v5, 0x0

    move-object v2, p1

    .line 52
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/turingfd/sdk/ams/ad/Longan;->a(I[BIILcom/tencent/turingfd/sdk/ams/ad/CanisMajor;)Lcom/tencent/turingfd/sdk/ams/ad/Mango;

    move-result-object p0

    .line 53
    iget p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->a:I

    if-eqz p1, :cond_1

    .line 54
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto/16 :goto_1

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Mango;->d:[B

    const/16 p1, -0x3e7

    .line 56
    :try_start_0
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;-><init>()V

    .line 57
    iput p1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    .line 58
    iget p2, p2, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->b:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 59
    invoke-static {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Peach;->a(Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;[B)Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;

    goto :goto_0

    .line 61
    :cond_2
    new-instance p2, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;

    invoke-direct {p2, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;-><init>([B)V

    const-string p0, "UTF-8"

    .line 63
    iput-object p0, p2, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V

    :goto_0
    if-nez v0, :cond_3

    .line 68
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p2, -0x3ea

    invoke-direct {p0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto :goto_1

    .line 72
    :cond_3
    iget p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->a:I

    if-nez p0, :cond_6

    .line 79
    iget-object p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 80
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 p2, -0x3e9

    invoke-direct {p0, p2}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto :goto_1

    .line 82
    :cond_4
    iget-wide v1, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->f:J

    iget-object p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->e:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Cascara;->a(JLjava/lang/String;)V

    .line 83
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int p0, v1

    .line 84
    iget p2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    if-gez p2, :cond_5

    .line 85
    iput p0, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    .line 87
    :cond_5
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->b:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget p2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->c:I

    int-to-long v6, p2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget v8, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->d:I

    iget-object v9, v0, Lcom/tencent/turingfd/sdk/ams/ad/Cantaloupe;->e:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(ILjava/lang/String;JJILjava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_6
    new-instance p2, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    rsub-int p0, p0, -0x7d0

    invoke-direct {p2, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, p2

    goto :goto_1

    .line 98
    :catchall_0
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-direct {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;ILcom/tencent/turingfd/sdk/ams/ad/abstract;ZZ)Ljava/lang/String;
    .locals 6

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "3005"

    if-eqz p3, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    .line 192
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "3006"

    if-eqz p4, :cond_1

    const-string p4, "1"

    goto :goto_1

    :cond_1
    const-string p4, "0"

    .line 193
    :goto_1
    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p4, 0x11

    if-eq p1, p4, :cond_2

    const/16 p4, 0x28

    if-ne p1, p4, :cond_6

    .line 197
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 199
    const-class p4, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter p4

    .line 200
    :try_start_0
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p4

    .line 201
    iget-object p4, v3, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->d:Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;

    .line 202
    invoke-static {p4}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMajor;->a(Lcom/tencent/turingfd/sdk/ams/ad/ITuringPkgProvider;)Ljava/util/List;

    move-result-object p4

    neg-int v3, p1

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p2, v3, v4, v5}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 204
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 205
    invoke-static {p4}, Lcom/tencent/turingfd/sdk/ams/ad/import;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 206
    invoke-virtual {v1, p4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz p3, :cond_5

    .line 207
    sget-object p3, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    .line 208
    invoke-virtual {p3}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c()Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 210
    invoke-virtual {v1, p3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 218
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/UrsaMajor;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "277"

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 223
    :try_start_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 224
    invoke-static {v1, p0, v0, v2}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->h90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;Ljava/util/Map;I)Landroid/util/SparseArray;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, ""

    return-object p0

    :cond_7
    const/16 v0, 0xcd

    .line 228
    const-class v1, Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget v0, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a:I

    if-nez p0, :cond_8

    const-string p0, ""

    .line 230
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p3

    .line 231
    iget-object p2, p2, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0

    :catchall_1
    move-exception p0

    .line 232
    monitor-exit p4

    throw p0
.end method

.method public static a()V
    .locals 6

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    .line 3
    sget-boolean v1, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->b:Z

    const-string v2, "enable_risk_click"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/break;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Apricot;->a()Z

    :goto_0
    const-string v0, "TRCDM"

    const-string v1, "erc"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->e:Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;

    const-class v1, Lcom/tencent/turingfd/sdk/ams/ad/throw;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/throw;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    const-class v2, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    :try_start_1
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    .line 19
    instance-of v2, v3, Landroid/app/Application;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_3

    .line 20
    :goto_1
    monitor-exit v1

    goto :goto_3

    .line 21
    :cond_3
    :try_start_3
    check-cast v3, Landroid/app/Application;

    .line 23
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/throw;->b:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :try_start_4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 25
    monitor-exit v2

    goto :goto_2

    .line 29
    :cond_4
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "TuringDispatch"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v5, Lcom/tencent/turingfd/sdk/ams/ad/const;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/const;-><init>(Landroid/os/Looper;Lcom/tencent/turingfd/sdk/ams/ad/Nectarine;)V

    .line 32
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;

    invoke-direct {v0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/throw$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/const;)V

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 35
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    :goto_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 46
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;)V
    .locals 6

    const-string v0, "5_"

    .line 172
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    iget v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->b:I

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->d:I

    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->a:J

    sub-long/2addr v2, v4

    .line 178
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v2, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->c:I

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-wide v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-wide v3, p1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->f:J

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    :goto_0
    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_1
    sub-long v1, v3, v1

    .line 184
    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b:Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "703"

    .line 188
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Bryony;)V
    .locals 3

    .line 863
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->c:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 867
    :try_start_0
    iget v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->a:I

    if-eqz v1, :cond_0

    .line 869
    monitor-exit v0

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 873
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b:Ljava/lang/String;

    .line 876
    iget-object v0, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 880
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 881
    iget-object v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->b:Ljava/lang/String;

    const-string v2, "1001"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-wide v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->c:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1002"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-wide v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1003"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget v1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1004"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "1005"

    .line 885
    iget-object p1, p1, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;->f:Ljava/lang/String;

    sget v2, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a:I

    if-nez p1, :cond_2

    const-string p1, ""

    .line 887
    :cond_2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-static {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 889
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;Z)[B
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 234
    new-instance v13, Lcom/tencent/turingfd/sdk/ams/ad/abstract;

    invoke-direct {v13}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;-><init>()V

    .line 235
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    .line 237
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v6, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-class v6, Lcom/tencent/turingfd/sdk/ams/ad/Flat;

    monitor-enter v6

    .line 239
    :try_start_0
    sget-object v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->D:Lcom/tencent/turingfd/sdk/ams/ad/Flat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    monitor-exit v6

    .line 240
    iget-boolean v0, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "2"

    const-string v6, "1"

    .line 241
    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    sget-object v12, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    const/16 v0, 0x1c

    .line 243
    invoke-virtual {v12, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    const/4 v11, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_6

    .line 244
    iget-boolean v0, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    move v6, v9

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_5

    .line 245
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->l:Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;

    .line 246
    invoke-virtual {v7, v1, v11, v11}, Lcom/tencent/turingfd/sdk/ams/ad/Herbaceous;->a(Landroid/content/Context;ZI)Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;

    move-result-object v7

    .line 247
    iget v8, v7, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->c:I

    if-eqz v8, :cond_4

    .line 248
    iput-boolean v11, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    if-nez v8, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    iget v7, v3, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->d:I

    if-eqz v7, :cond_2

    const/16 v10, -0x271b

    if-ne v7, v10, :cond_3

    if-eq v8, v10, :cond_3

    .line 251
    :cond_2
    iput v8, v3, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->d:I

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 252
    :cond_4
    iget-object v6, v7, Lcom/tencent/turingfd/sdk/ams/ad/Ginkgo;->a:Ljava/lang/String;

    const-string v7, "207"

    .line 253
    invoke-virtual {v14, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iput v9, v3, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->d:I

    .line 255
    :cond_5
    iput-boolean v0, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->s:Z

    :cond_6
    const/16 v0, 0x16

    .line 256
    invoke-virtual {v12, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 258
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/extends;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "205"

    invoke-virtual {v14, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v6, v16, v6

    invoke-virtual {v13, v0, v6, v7}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_7
    const/16 v0, 0x64

    .line 262
    invoke-virtual {v12, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string v7, "250"

    .line 264
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Centaurus;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    move-object v8, v0

    const/16 v0, 0x64

    move-object v6, v14

    move-wide/from16 v9, v16

    move/from16 v16, v11

    move-object v11, v13

    move-wide/from16 v18, v4

    move-object v4, v12

    move v12, v0

    .line 266
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    goto :goto_2

    :cond_9
    move-wide/from16 v18, v4

    move/from16 v16, v11

    move-object v4, v12

    :goto_2
    const/16 v0, 0x65

    .line 270
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 272
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Pear;->b(Landroid/content/Context;)I

    move-result v7

    const-string v8, "251"

    if-lez v7, :cond_a

    const-string v9, "1"

    goto :goto_3

    :cond_a
    const-string v9, "0"

    .line 273
    :goto_3
    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "288"

    invoke-virtual {v14, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v13, v0, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_b
    const/16 v0, 0x66

    .line 278
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "252"

    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "mock_location"

    const/4 v12, 0x0

    invoke-static {v0, v5, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v11, v16

    goto :goto_4

    :cond_c
    move v11, v12

    :goto_4
    if-eqz v11, :cond_d

    const-string v0, "1"

    goto :goto_5

    :cond_d
    const-string v0, "0"

    :goto_5
    move-object v8, v0

    const/16 v0, 0x66

    move-object v6, v14

    move-object v11, v13

    move v5, v12

    move v12, v0

    .line 283
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    goto :goto_6

    :cond_e
    const/4 v5, 0x0

    :goto_6
    const/16 v0, 0x67

    .line 288
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, ""

    .line 290
    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->d(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "253"

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_f
    const/16 v0, 0x68

    .line 294
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, ""

    .line 296
    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->b(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "254"

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_10
    const/16 v0, 0x69

    .line 300
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, ""

    .line 302
    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/goto;->a(Landroid/content/Context;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "255"

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_11
    const/16 v0, 0x6a

    .line 306
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "256"

    .line 308
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, ""

    :cond_12
    move-object v8, v0

    const/16 v12, 0x6a

    move-object v6, v14

    move-object v11, v13

    .line 310
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_13
    const/16 v0, 0x73

    .line 314
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "268"

    .line 317
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    move-object v8, v0

    const/16 v12, 0x73

    move-object v6, v14

    move-object v11, v13

    .line 319
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_15
    const/16 v0, 0x74

    .line 324
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "269"

    .line 327
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Centaurus;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, ""

    :cond_16
    move-object v8, v0

    const/16 v12, 0x74

    move-object v6, v14

    move-object v11, v13

    .line 329
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_17
    const/16 v0, 0x6b

    .line 334
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "257"

    .line 336
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, ""

    :cond_18
    move-object v8, v0

    const/16 v12, 0x6b

    move-object v6, v14

    move-object v11, v13

    .line 338
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_19
    const/16 v0, 0x71

    .line 342
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "258"

    .line 344
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Vulpecula;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "1"

    goto :goto_7

    :cond_1a
    const-string v0, "0"

    :goto_7
    move-object v8, v0

    const/16 v12, 0x71

    move-object v6, v14

    move-object v11, v13

    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_1b
    const/16 v0, 0x72

    .line 348
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "259"

    .line 351
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Vulpecula;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move v0, v5

    :goto_8
    if-eqz v0, :cond_1c

    const-string v0, "1"

    goto :goto_9

    :cond_1c
    const-string v0, "0"

    :goto_9
    move-object v8, v0

    const/16 v12, 0x72

    move-object v6, v14

    move-object v11, v13

    .line 352
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    .line 356
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v0, ""

    .line 357
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->a(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "270"

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const/16 v0, 0x75

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    const/16 v0, 0x2c

    .line 360
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 362
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Filbert;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "240"

    invoke-virtual {v14, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_1e
    const/16 v0, 0x11

    .line 368
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 369
    invoke-static {v1, v0, v13, v5, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;ILcom/tencent/turingfd/sdk/ams/ad/abstract;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v6, "267"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_1f
    const/16 v0, 0x28

    .line 371
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 372
    invoke-static {v1, v0, v13, v5, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;ILcom/tencent/turingfd/sdk/ams/ad/abstract;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v6, "267"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    const/16 v0, 0x2b

    .line 374
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 375
    invoke-static {v1, v0, v13, v5, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;ILcom/tencent/turingfd/sdk/ams/ad/abstract;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v6, "267"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_a
    const-string v0, ""

    .line 379
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->a(Landroid/content/Context;)B

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "308"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "703"

    .line 380
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "303"

    .line 381
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    const/16 v6, 0x2712

    .line 383
    invoke-virtual {v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v6

    if-nez v6, :cond_22

    const-string v6, "2005"

    const-string v7, "0"

    .line 384
    invoke-virtual {v14, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_22
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a()Ljava/lang/String;

    move-result-object v0

    const-string v6, "2001"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    .line 390
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->b:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 394
    :try_start_3
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->c:[Lcom/tencent/turingfd/sdk/ams/ad/final;

    .line 395
    iget-object v8, v6, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 396
    check-cast v7, [Lcom/tencent/turingfd/sdk/ams/ad/final;

    .line 397
    iget-object v8, v6, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 398
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 399
    :try_start_4
    array-length v6, v7

    move v9, v5

    :goto_b
    if-ge v9, v6, :cond_24

    aget-object v8, v7, v9

    if-nez v8, :cond_23

    goto :goto_c

    .line 403
    :cond_23
    invoke-virtual {v8}, Lcom/tencent/turingfd/sdk/ams/ad/final;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&"

    .line 404
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 407
    :cond_24
    :goto_c
    sget-object v6, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->a:Lcom/tencent/turingfd/sdk/ams/ad/Gemini;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 408
    :try_start_5
    sget-object v7, Lcom/tencent/turingfd/sdk/ams/ad/Berry;->c:[Lcom/tencent/turingfd/sdk/ams/ad/final;

    .line 409
    iget-object v8, v6, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 410
    check-cast v7, [Lcom/tencent/turingfd/sdk/ams/ad/final;

    .line 411
    iget-object v8, v6, Lcom/tencent/turingfd/sdk/ams/ad/Gemini;->b:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 412
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 413
    :try_start_6
    array-length v6, v7

    move v9, v5

    :goto_d
    if-ge v9, v6, :cond_26

    aget-object v8, v7, v9

    if-nez v8, :cond_25

    goto :goto_e

    .line 417
    :cond_25
    invoke-virtual {v8}, Lcom/tencent/turingfd/sdk/ams/ad/final;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&"

    .line 418
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 421
    :cond_26
    :goto_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    const-string v0, "unknown"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_f

    :catchall_1
    move-exception v0

    .line 424
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_2
    move-exception v0

    .line 425
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    const-string v0, "unknown"

    :cond_27
    :goto_f
    const-string v6, "273"

    .line 455
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    .line 459
    iget-object v6, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->p:Ljava/util/Map;

    .line 460
    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz v2, :cond_28

    .line 461
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28

    .line 462
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_28
    const-string v2, "406"

    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 467
    :cond_29
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 468
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 470
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "_"

    .line 471
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "_"

    const-string v10, "%5F"

    .line 473
    invoke-static {v9, v10, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, "%54"

    .line 474
    invoke-static {v9, v10, v8}, Lcom/tencent/turingfd/sdk/ams/ad/Damson;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 475
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_29

    const-string v8, ","

    .line 477
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 481
    :cond_2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->l:Ljava/lang/String;

    const-string v2, "402"

    .line 484
    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    const-string v0, "e_r_t"

    .line 486
    invoke-virtual {v2, v0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "278"

    const-string v6, "1"

    .line 487
    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const-string v0, "901"

    .line 488
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "266"

    .line 489
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 493
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Chamaeleon;->b()Ljava/lang/String;

    move-result-object v0

    const-string v8, "272"

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const/16 v0, 0x76

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 495
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    const/16 v6, 0x78

    .line 496
    invoke-virtual {v0, v6}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_31

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "279"

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 500
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 504
    :try_start_b
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v11, Lcom/tencent/turingfd/sdk/ams/ad/finally;->n:[I

    invoke-static {v11}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 505
    :cond_2c
    :goto_11
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2d

    .line 506
    invoke-static {v8}, Lcom/tencent/turingfd/sdk/ams/ad/Cepheus;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2c

    .line 508
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_11

    :catchall_4
    move-object/from16 v6, v17

    .line 514
    :catchall_5
    :cond_2d
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 515
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_30

    .line 516
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 518
    :cond_2e
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 520
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2e

    const-string v8, ","

    .line 523
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 527
    :cond_2f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_30
    const-string v0, ""

    :goto_13
    move-object v8, v0

    const/16 v12, 0x78

    move-object v6, v14

    move-object v11, v13

    .line 529
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    .line 534
    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v0, "309"

    .line 535
    const-class v8, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;

    monitor-enter v8

    .line 536
    :try_start_d
    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->b:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/tencent/turingfd/sdk/ams/ad/Taurus;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    monitor-exit v8

    .line 537
    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 539
    iget-object v0, v13, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->b:Ljava/util/Map;

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x7a

    .line 540
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 542
    sget v0, Lcom/tencent/turingfd/sdk/ams/ad/while;->a:I

    .line 543
    :try_start_e
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/while;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :goto_14
    move-object v8, v0

    goto :goto_15

    :catchall_6
    const-string v0, "exception"

    goto :goto_14

    :goto_15
    const-string v7, "280"

    const/16 v12, 0x7a

    move-object v6, v14

    move-object v11, v13

    .line 546
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    .line 551
    :cond_32
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v6, "2013"

    .line 553
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const/16 v0, 0x7e

    .line 557
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v6, "281"

    .line 560
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_34
    iget-object v0, v15, Lcom/tencent/turingfd/sdk/ams/ad/Flat;->c:Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;

    if-eqz v0, :cond_38

    .line 562
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "274"

    .line 564
    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getImei()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_35

    const-string v9, ""

    .line 566
    :cond_35
    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x2f

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v13, v8, v9, v10}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 570
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "276"

    .line 572
    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getImsi()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_36

    const-string v9, ""

    .line 574
    :cond_36
    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x31

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v6

    invoke-virtual {v13, v8, v9, v10}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "275"

    .line 580
    invoke-interface {v0}, Lcom/tencent/turingfd/sdk/ams/ad/ITuringDeviceInfoProvider;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    const-string v0, ""

    .line 582
    :cond_37
    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x30

    .line 584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_16

    :catchall_7
    move-exception v0

    const-string v6, "Turing"

    const-string v7, "invoke info impl exception"

    .line 586
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    :cond_38
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 592
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/default;->a()Ljava/lang/String;

    move-result-object v0

    const-string v8, "264"

    invoke-virtual {v14, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const/16 v0, 0x18

    invoke-virtual {v13, v0, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    const-string v0, "210"

    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "C:"

    .line 600
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_39

    const-string v7, "1"

    goto :goto_17

    :cond_39
    const-string v7, "0"

    .line 601
    :goto_17
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-static {v6}, Lcom/tencent/turingfd/sdk/ams/ad/switch;->a(Ljava/lang/StringBuilder;)V

    .line 606
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 607
    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 609
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->i1:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_3a
    const-string v0, "c_s_l"

    .line 611
    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    if-eqz v0, :cond_3b

    const-string v6, "2016"

    .line 612
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :cond_3b
    invoke-virtual {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 614
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->j1:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_3c
    const-string v0, "p_s_l"

    .line 616
    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_3d

    const-string v6, "2017"

    .line 617
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    const-string v0, "p_d_l"

    .line 618
    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v6, "2022"

    .line 619
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_3e
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "2018"

    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 629
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Apple;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    .line 634
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    if-eqz v9, :cond_3f

    .line 636
    const-class v10, Ljava/lang/Object;

    if-eq v9, v10, :cond_3f

    .line 637
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    const-string v9, ","

    .line 639
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 641
    const-class v9, Landroid/app/Application;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    if-eq v0, v9, :cond_40

    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, ","

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_40
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    :cond_41
    move-object/from16 v0, v17

    .line 646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const/16 v6, 0x85

    invoke-virtual {v13, v6, v8, v9}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 647
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    const-string v6, "2019"

    .line 648
    invoke-virtual {v14, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    const/16 v0, 0x8c

    .line 652
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "2021"

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    :try_start_11
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const-string v8, "accessibility"

    .line 659
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityManager;

    .line 662
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    .line 665
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    .line 669
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, -0x1

    .line 672
    invoke-virtual {v8, v11}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v15, v16

    :goto_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_44

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v15, :cond_43

    const/4 v15, 0x0

    goto :goto_1b

    :cond_43
    const-string v11, ";"

    .line 676
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :goto_1b
    invoke-static {v0, v5}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Ljava/lang/StringBuilder;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 679
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 681
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v11, -0x1

    goto :goto_1a

    :cond_44
    const-string v5, ","

    .line 685
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "accessibility_enabled"

    const/4 v12, -0x1

    .line 687
    invoke-static {v5, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 690
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v11, "enabled_accessibility_services"

    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 693
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4a

    .line 694
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x3a

    invoke-direct {v11, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 695
    invoke-virtual {v11, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    move/from16 v5, v16

    .line 697
    :goto_1c
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4a

    .line 698
    invoke-virtual {v11}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v12

    .line 699
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_45

    :goto_1d
    move-object/from16 p1, v11

    goto :goto_1e

    .line 701
    :cond_45
    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_46

    goto :goto_1d

    :cond_46
    const-string v15, "/"

    .line 705
    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 p1, v11

    .line 706
    array-length v11, v15

    const/4 v1, 0x2

    if-ne v11, v1, :cond_48

    const/4 v1, 0x0

    aget-object v11, v15, v1

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    aget-object v1, v15, v16

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 710
    new-instance v1, Landroid/content/ComponentName;

    const/4 v11, 0x0

    aget-object v3, v15, v11

    aget-object v11, v15, v16

    invoke-direct {v1, v3, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_47
    :goto_1e
    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v3, p2

    goto :goto_1c

    :cond_48
    if-eqz v5, :cond_49

    const/4 v5, 0x0

    goto :goto_1f

    :cond_49
    const-string v1, ";"

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    :goto_1f
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_4a
    const-string v1, ","

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v11, v16

    :cond_4b
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 732
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_20

    :cond_4c
    if-eqz v11, :cond_4d

    const/4 v11, 0x0

    goto :goto_21

    :cond_4d
    const-string v5, ";"

    .line 738
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :goto_21
    invoke-static {v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/try;->a(Ljava/lang/StringBuilder;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 741
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    goto :goto_20

    .line 743
    :cond_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_22

    :catchall_9
    const-string v0, "exp"

    :goto_22
    move-object v8, v0

    const/16 v12, 0x8c

    move-object v6, v14

    move-object v11, v13

    .line 747
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_4f
    const/16 v0, 0x8a

    .line 753
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 755
    invoke-static/range {p0 .. p0}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "282"

    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v13, v0, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_50
    const/16 v0, 0x91

    .line 760
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 762
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->c:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;

    invoke-virtual {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    const-string v3, "283"

    .line 764
    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v13, v0, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_52
    const/16 v0, 0x92

    .line 770
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 772
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    const-string v3, "284"

    .line 774
    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    :cond_53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-virtual {v13, v0, v7, v8}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_54
    const/16 v0, 0x93

    .line 780
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "m_c_l_2"

    .line 781
    invoke-virtual {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "2024"

    .line 783
    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    const-string v0, "2029"

    const-string v1, "nbe_a_t"

    .line 786
    invoke-virtual {v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_23

    .line 792
    :cond_56
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 793
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    if-gt v2, v1, :cond_57

    move/from16 v11, v16

    goto :goto_24

    :catchall_a
    :cond_57
    :goto_23
    const/4 v11, 0x0

    :goto_24
    if-eqz v11, :cond_58

    const-string v1, "1"

    goto :goto_25

    :cond_58
    const-string v1, "0"

    .line 795
    :goto_25
    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    const/16 v0, 0x95

    .line 800
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 802
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Octans;->c()Ljava/lang/String;

    move-result-object v3

    const-string v5, "285"

    invoke-virtual {v14, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v13, v0, v5, v6}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    :cond_5a
    const/16 v0, 0x96

    .line 807
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 808
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v7, "286"

    .line 810
    :try_start_13
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    goto :goto_26

    :catchall_b
    const-string v0, ""

    :goto_26
    move-object v8, v0

    const/16 v12, 0x96

    move-object v6, v14

    move-object v11, v13

    .line 815
    invoke-static/range {v6 .. v12}, Lcom/tencent/turingfd/sdk/ams/ad/Bilberry;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;JLcom/tencent/turingfd/sdk/ams/ad/abstract;I)V

    :cond_5b
    const/16 v0, 0x97

    .line 820
    invoke-virtual {v4, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 822
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/case;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Sagittarius;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5c

    const-string v4, "287"

    .line 824
    invoke-virtual {v14, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    :cond_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v13, v0, v3, v4}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a(IJ)V

    .line 827
    :cond_5d
    invoke-virtual {v13}, Lcom/tencent/turingfd/sdk/ams/ad/abstract;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v14, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :try_start_14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v1, p2

    .line 829
    iget v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->b:I

    move-object/from16 v2, p0

    .line 830
    invoke-static {v0, v2, v14, v1}, Lcom/tencent/turingfd/sdk/ams/ad/TNative$aa;->g90_9F87DFDD2CC93068(Landroid/util/SparseArray;Landroid/content/Context;Ljava/util/Map;I)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 831
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->b(Landroid/util/SparseArray;)I

    move-result v1

    if-eqz v1, :cond_5e

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TuringDebug"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_27

    .line 837
    :cond_5e
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Pyxis;->a(Landroid/util/SparseArray;)[B

    move-result-object v0

    const-string v1, "5_"

    .line 839
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Banana;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "702"

    .line 841
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    invoke-static {v2, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Hickory;->a(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_27

    :catchall_c
    move-exception v0

    const-string v1, "TuringDebug"

    .line 843
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v0, v1, [B

    :goto_27
    return-object v0

    :catchall_d
    move-exception v0

    .line 845
    monitor-exit v8

    throw v0

    :catchall_e
    move-exception v0

    move-object v1, v0

    monitor-exit v6

    throw v1
.end method
