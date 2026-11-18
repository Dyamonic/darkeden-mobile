.class public Lrich/i;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Lrich/h;

.field public final c:Lrich/c;

.field public final d:Lrich/r;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lrich/h;Lrich/c;Lrich/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrich/i;->e:Z

    iput-object p1, p0, Lrich/i;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lrich/i;->b:Lrich/h;

    iput-object p3, p0, Lrich/i;->c:Lrich/c;

    iput-object p4, p0, Lrich/i;->d:Lrich/r;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :try_start_0
    iget-object v0, p0, Lrich/i;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrich/o;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    :try_start_1
    const-string v2, "network-queue-take"

    invoke-virtual {v0, v2}, Lrich/o;->a(Ljava/lang/String;)V

    .line 1
    iget-boolean v2, v0, Lrich/o;->j:Z

    if-eqz v2, :cond_1

    const-string v2, "network-discard-cancelled"

    .line 2
    invoke-virtual {v0, v2}, Lrich/o;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 4
    iget v2, v0, Lrich/o;->e:I

    .line 5
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 6
    :cond_2
    iget-object v2, p0, Lrich/i;->b:Lrich/h;
    :try_end_1
    .catch Lrich/u; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    check-cast v2, Lrich/w;

    :try_start_2
    invoke-virtual {v2, v0}, Lrich/w;->a(Lrich/o;)Lrich/k;

    move-result-object v2

    const-string v3, "network-http-complete"

    invoke-virtual {v0, v3}, Lrich/o;->a(Ljava/lang/String;)V

    iget-boolean v3, v2, Lrich/k;->d:Z

    if-eqz v3, :cond_3

    .line 7
    iget-boolean v3, v0, Lrich/o;->k:Z

    if-eqz v3, :cond_3

    const-string v2, "not-modified"

    .line 8
    invoke-virtual {v0, v2}, Lrich/o;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lrich/o;->a(Lrich/k;)Lrich/q;

    move-result-object v2

    const-string v3, "network-parse-complete"

    invoke-virtual {v0, v3}, Lrich/o;->a(Ljava/lang/String;)V

    .line 9
    iget-boolean v3, v0, Lrich/o;->i:Z

    if-eqz v3, :cond_4

    .line 10
    iget-object v3, v2, Lrich/q;->b:Lrich/c$a;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lrich/i;->c:Lrich/c;

    invoke-virtual {v0}, Lrich/o;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lrich/q;->b:Lrich/c$a;
    :try_end_2
    .catch Lrich/u; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    check-cast v3, Lrich/y;

    :try_start_3
    invoke-virtual {v3, v4, v5}, Lrich/y;->a(Ljava/lang/String;Lrich/c$a;)V

    const-string v3, "network-cache-written"

    invoke-virtual {v0, v3}, Lrich/o;->a(Ljava/lang/String;)V

    .line 11
    :cond_4
    iput-boolean v1, v0, Lrich/o;->k:Z

    .line 12
    iget-object v3, p0, Lrich/i;->d:Lrich/r;
    :try_end_3
    .catch Lrich/u; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    check-cast v3, Lrich/f;

    :try_start_4
    invoke-virtual {v3, v0, v2}, Lrich/f;->a(Lrich/o;Lrich/q;)V
    :try_end_4
    .catch Lrich/u; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Unhandled exception %s"

    .line 13
    invoke-static {v3, v1}, Lrich/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Volley"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    new-instance v1, Lrich/u;

    invoke-direct {v1, v2}, Lrich/u;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lrich/i;->d:Lrich/r;

    check-cast v2, Lrich/f;

    invoke-virtual {v2, v0, v1}, Lrich/f;->a(Lrich/o;Lrich/u;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    invoke-virtual {v0, v1}, Lrich/o;->a(Lrich/u;)Lrich/u;

    move-result-object v1

    iget-object v2, p0, Lrich/i;->d:Lrich/r;

    check-cast v2, Lrich/f;

    invoke-virtual {v2, v0, v1}, Lrich/f;->a(Lrich/o;Lrich/u;)V

    goto/16 :goto_0

    .line 16
    :catch_2
    iget-boolean v0, p0, Lrich/i;->e:Z

    if-eqz v0, :cond_0

    return-void
.end method
