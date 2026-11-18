.class public Lrich/d;
.super Ljava/lang/Thread;
.source ""


# static fields
.field public static final f:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Ljava/util/concurrent/BlockingQueue;

.field public final c:Lrich/c;

.field public final d:Lrich/r;

.field public volatile e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lrich/v;->b:Z

    sput-boolean v0, Lrich/d;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lrich/c;Lrich/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/d;->e:Z

    iput-object p1, p0, Lrich/d;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lrich/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lrich/d;->c:Lrich/c;

    iput-object p4, p0, Lrich/d;->d:Lrich/r;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    sget-boolean v0, Lrich/d;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lrich/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lrich/d;->c:Lrich/c;

    check-cast v0, Lrich/y;

    invoke-virtual {v0}, Lrich/y;->a()V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lrich/d;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrich/o;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "cache-queue-take"

    invoke-virtual {v0, v3}, Lrich/o;->a(Ljava/lang/String;)V

    .line 1
    iget-boolean v3, v0, Lrich/o;->j:Z

    if-eqz v3, :cond_2

    const-string v3, "cache-discard-canceled"

    .line 2
    invoke-virtual {v0, v3}, Lrich/o;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lrich/d;->c:Lrich/c;

    invoke-virtual {v0}, Lrich/o;->b()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v3, Lrich/y;

    :try_start_2
    invoke-virtual {v3, v4}, Lrich/y;->a(Ljava/lang/String;)Lrich/c$a;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "cache-miss"

    invoke-virtual {v0, v3}, Lrich/o;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_3
    iget-wide v4, v3, Lrich/c$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    if-eqz v4, :cond_5

    const-string v4, "cache-hit-expired"

    .line 4
    invoke-virtual {v0, v4}, Lrich/o;->a(Ljava/lang/String;)V

    .line 5
    iput-object v3, v0, Lrich/o;->m:Lrich/c$a;

    .line 2
    :goto_2
    iget-object v3, p0, Lrich/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 6
    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v4, "cache-hit"

    invoke-virtual {v0, v4}, Lrich/o;->a(Ljava/lang/String;)V

    new-instance v4, Lrich/k;

    iget-object v7, v3, Lrich/c$a;->a:[B

    iget-object v8, v3, Lrich/c$a;->g:Ljava/util/Map;

    const/16 v6, 0xc8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v5, v4

    .line 7
    invoke-direct/range {v5 .. v11}, Lrich/k;-><init>(I[BLjava/util/Map;ZJ)V

    .line 8
    invoke-virtual {v0, v4}, Lrich/o;->a(Lrich/k;)Lrich/q;

    move-result-object v4

    const-string v5, "cache-hit-parsed"

    invoke-virtual {v0, v5}, Lrich/o;->a(Ljava/lang/String;)V

    .line 9
    iget-wide v5, v3, Lrich/c$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    if-nez v5, :cond_7

    .line 10
    iget-object v3, p0, Lrich/d;->d:Lrich/r;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v3, Lrich/f;

    :try_start_3
    invoke-virtual {v3, v0, v4}, Lrich/f;->a(Lrich/o;Lrich/q;)V

    goto :goto_0

    :cond_7
    const-string v5, "cache-hit-refresh-needed"

    invoke-virtual {v0, v5}, Lrich/o;->a(Ljava/lang/String;)V

    .line 11
    iput-object v3, v0, Lrich/o;->m:Lrich/c$a;

    .line 12
    iput-boolean v2, v4, Lrich/q;->d:Z

    iget-object v3, p0, Lrich/d;->d:Lrich/r;

    new-instance v5, Lrich/d$a;

    invoke-direct {v5, p0, v0}, Lrich/d$a;-><init>(Lrich/d;Lrich/o;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    check-cast v3, Lrich/f;

    :try_start_4
    invoke-virtual {v3, v0, v4, v5}, Lrich/f;->a(Lrich/o;Lrich/q;Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Unhandled exception %s"

    .line 13
    invoke-static {v3, v2}, Lrich/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Volley"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 14
    :catch_1
    iget-boolean v0, p0, Lrich/d;->e:Z

    if-eqz v0, :cond_1

    return-void
.end method
