.class public Lcom/bytedance/bdtracker/i0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/i0$b;
    }
.end annotation


# static fields
.field public static final p:Ljava/util/concurrent/atomic/AtomicLong;

.field public static q:Lcom/bytedance/bdtracker/i0$b;


# instance fields
.field public a:J

.field public final b:Lcom/bytedance/bdtracker/d0;

.field public c:Lcom/bytedance/bdtracker/h4;

.field public d:Lcom/bytedance/bdtracker/h4;

.field public e:Ljava/lang/String;

.field public volatile f:J

.field public g:I

.field public h:J

.field public volatile i:Z

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public volatile m:Ljava/lang/String;

.field public volatile n:Z

.field public volatile o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/bdtracker/i0;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/bdtracker/i0;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/i0;->n:Z

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/i0;->o:Z

    iput-object p1, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/x3;)Z
    .locals 1

    instance-of v0, p0, Lcom/bytedance/bdtracker/h4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/h4;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-wide v1, p0, Lcom/bytedance/bdtracker/i0;->f:J

    iget-object v3, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 19
    iget-object v3, v3, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 20
    iget-object v3, v3, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/i0;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    sub-long v1, p1, v1

    cmp-long p3, v1, p3

    if-lez p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget p3, p0, Lcom/bytedance/bdtracker/i0;->k:I

    const-string p4, "session_no"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p3, p0, Lcom/bytedance/bdtracker/i0;->g:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/bytedance/bdtracker/i0;->g:I

    const-string p4, "send_times"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 p3, 0x3e8

    div-long/2addr v1, p3

    const-string p3, "current_duration"

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide p3, p0, Lcom/bytedance/bdtracker/i0;->h:J

    invoke-static {p3, p4}, Lcom/bytedance/bdtracker/x3;->b(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "session_start_time"

    invoke-virtual {v0, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/bytedance/bdtracker/i0;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/f4;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lcom/bytedance/bdtracker/x3;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;Z)",
            "Lcom/bytedance/bdtracker/f4;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p4

    monitor-enter p0

    :try_start_0
    instance-of v1, v0, Lcom/bytedance/bdtracker/i0$b;

    const-wide/16 v9, -0x1

    if-eqz v1, :cond_0

    move-wide v11, v9

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/bytedance/bdtracker/x3;->c:J

    move-wide v11, v1

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v13, Lcom/bytedance/bdtracker/i0$a;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/bdtracker/i0$a;-><init>(Lcom/bytedance/bdtracker/i0;Lcom/bytedance/bdtracker/d;ZJ)V

    const-string v1, "session_start"

    invoke-static {v1, v13}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    if-eqz v8, :cond_2

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    iget-boolean v1, v1, Lcom/bytedance/bdtracker/d0;->v:Z

    if-nez v1, :cond_2

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    iput-object v1, v7, Lcom/bytedance/bdtracker/i0;->m:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/bytedance/bdtracker/i0;->p:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v11, v7, Lcom/bytedance/bdtracker/i0;->h:J

    iput-boolean v8, v7, Lcom/bytedance/bdtracker/i0;->i:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lcom/bytedance/bdtracker/i0;->j:J

    iput-wide v2, v7, Lcom/bytedance/bdtracker/i0;->f:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v8, :cond_5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const-string v6, ""

    invoke-static {v6}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v13, 0x5

    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 31
    iget-object v6, v6, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 32
    iget-object v13, v7, Lcom/bytedance/bdtracker/i0;->l:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 33
    iget-object v13, v6, Lcom/bytedance/bdtracker/v1;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v14, "session_last_day"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 34
    iput-object v13, v7, Lcom/bytedance/bdtracker/i0;->l:Ljava/lang/String;

    .line 35
    iget-object v13, v6, Lcom/bytedance/bdtracker/v1;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v14, "session_order"

    invoke-interface {v13, v14, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 36
    iput v13, v7, Lcom/bytedance/bdtracker/i0;->k:I

    :cond_3
    iget-object v13, v7, Lcom/bytedance/bdtracker/i0;->l:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    iput-object v5, v7, Lcom/bytedance/bdtracker/i0;->l:Ljava/lang/String;

    iput v4, v7, Lcom/bytedance/bdtracker/i0;->k:I

    goto :goto_1

    :cond_4
    iget v13, v7, Lcom/bytedance/bdtracker/i0;->k:I

    add-int/2addr v13, v4

    iput v13, v7, Lcom/bytedance/bdtracker/i0;->k:I

    :goto_1
    iget v13, v7, Lcom/bytedance/bdtracker/i0;->k:I

    .line 37
    iget-object v6, v6, Lcom/bytedance/bdtracker/v1;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v14, "session_last_day"

    invoke-interface {v6, v14, v5}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v5

    const-string v6, "session_order"

    invoke-interface {v5, v6, v13}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 38
    iput v3, v7, Lcom/bytedance/bdtracker/i0;->g:I

    iget-wide v5, v0, Lcom/bytedance/bdtracker/x3;->c:J

    iput-wide v5, v7, Lcom/bytedance/bdtracker/i0;->f:J

    :cond_5
    const/4 v5, 0x0

    cmp-long v6, v11, v9

    if-eqz v6, :cond_b

    new-instance v5, Lcom/bytedance/bdtracker/f4;

    invoke-direct {v5}, Lcom/bytedance/bdtracker/f4;-><init>()V

    .line 39
    iget-object v6, v0, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 40
    iput-object v6, v5, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 41
    iget-object v6, v7, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    iput-object v6, v5, Lcom/bytedance/bdtracker/x3;->e:Ljava/lang/String;

    iget-boolean v6, v7, Lcom/bytedance/bdtracker/i0;->i:Z

    xor-int/2addr v6, v4

    iput-boolean v6, v5, Lcom/bytedance/bdtracker/f4;->u:Z

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v9

    .line 43
    iput-wide v9, v5, Lcom/bytedance/bdtracker/x3;->d:J

    iget-wide v9, v7, Lcom/bytedance/bdtracker/i0;->h:J

    invoke-virtual {v5, v9, v10}, Lcom/bytedance/bdtracker/x3;->a(J)V

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 44
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bytedance/bdtracker/f4;->t:Ljava/lang/String;

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 46
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 47
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->m()I

    move-result v1

    iput v1, v5, Lcom/bytedance/bdtracker/f4;->s:I

    iget-wide v9, v7, Lcom/bytedance/bdtracker/i0;->a:J

    iput-wide v9, v5, Lcom/bytedance/bdtracker/x3;->f:J

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 48
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 49
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bytedance/bdtracker/x3;->g:Ljava/lang/String;

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 50
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 51
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->l()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bytedance/bdtracker/x3;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bytedance/bdtracker/x3;->i:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/bytedance/bdtracker/x3;->j:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 52
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 53
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "is_first_time_launch"

    invoke-interface {v1, v6, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    :cond_6
    move v1, v3

    .line 54
    :goto_2
    iput v1, v5, Lcom/bytedance/bdtracker/f4;->w:I

    if-eqz v8, :cond_7

    iget v1, v5, Lcom/bytedance/bdtracker/f4;->w:I

    if-ne v1, v4, :cond_7

    iget-object v1, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 55
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 56
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "is_first_time_launch"

    invoke-interface {v1, v6, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->putInt(Ljava/lang/String;I)Lcom/bytedance/applog/store/kv/IKVStore;

    .line 57
    :cond_7
    invoke-static {}, Lcom/bytedance/bdtracker/v;->a()Lcom/bytedance/bdtracker/h4;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v6, v1, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    iput-object v6, v5, Lcom/bytedance/bdtracker/f4;->y:Ljava/lang/String;

    iget-object v6, v1, Lcom/bytedance/bdtracker/h4;->v:Ljava/lang/String;

    iput-object v6, v5, Lcom/bytedance/bdtracker/f4;->x:Ljava/lang/String;

    :cond_8
    instance-of v6, v0, Lcom/bytedance/bdtracker/h4;

    if-eqz v6, :cond_9

    if-nez v1, :cond_9

    check-cast v0, Lcom/bytedance/bdtracker/h4;

    iget-object v1, v0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    iput-object v1, v5, Lcom/bytedance/bdtracker/f4;->y:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/h4;->v:Ljava/lang/String;

    iput-object v0, v5, Lcom/bytedance/bdtracker/f4;->x:Ljava/lang/String;

    :cond_9
    iget-boolean v0, v7, Lcom/bytedance/bdtracker/i0;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lcom/bytedance/bdtracker/i0;->n:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v7, Lcom/bytedance/bdtracker/i0;->n:Z

    iput-boolean v0, v5, Lcom/bytedance/bdtracker/f4;->z:Z

    iput-boolean v3, v7, Lcom/bytedance/bdtracker/i0;->n:Z

    :cond_a
    iget-object v0, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 58
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 59
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillSessionParams launch: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, v7, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 61
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 62
    iget v1, v0, Lcom/bytedance/bdtracker/d;->l:I

    if-gtz v1, :cond_c

    const/4 v1, 0x6

    .line 63
    iput v1, v0, Lcom/bytedance/bdtracker/d;->l:I

    :cond_c
    move-object/from16 v0, p1

    .line 64
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    .line 65
    iget-object v2, v7, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-boolean v2, v7, Lcom/bytedance/bdtracker/i0;->i:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Start new session:{} with background:{}"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V
    .locals 5

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 6
    iget-wide v1, p0, Lcom/bytedance/bdtracker/i0;->a:J

    iput-wide v1, p2, Lcom/bytedance/bdtracker/x3;->f:J

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/bdtracker/i0;->e:Ljava/lang/String;

    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->e:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/bytedance/bdtracker/i0;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 8
    iput-wide v1, p2, Lcom/bytedance/bdtracker/x3;->d:J

    iget-object p1, p2, Lcom/bytedance/bdtracker/x3;->j:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/x1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    iput-object p1, p2, Lcom/bytedance/bdtracker/x3;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d0;->b()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/z4;->b(Landroid/content/Context;Z)Lcom/bytedance/bdtracker/z4$a;

    move-result-object p1

    .line 12
    iget p1, p1, Lcom/bytedance/bdtracker/z4$a;->a:I

    .line 13
    iput p1, p2, Lcom/bytedance/bdtracker/x3;->k:I

    instance-of p1, p2, Lcom/bytedance/bdtracker/e4;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/bytedance/bdtracker/i0;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/bytedance/bdtracker/e4;

    .line 14
    iget-object p1, p1, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    const-string v0, "$crash"

    .line 15
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string v0, "$session_duration"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/bdtracker/i0;->h:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 16
    iget-object p1, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillSessionParams data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lcom/bytedance/bdtracker/x3;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 26
    instance-of v0, p2, Lcom/bytedance/bdtracker/h4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/h4;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 27
    :goto_0
    iget-wide v2, p0, Lcom/bytedance/bdtracker/i0;->h:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/bytedance/bdtracker/i0;->i:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/f4;

    goto :goto_2

    :cond_2
    iget-wide v4, p0, Lcom/bytedance/bdtracker/i0;->j:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    iget-wide v6, p2, Lcom/bytedance/bdtracker/x3;->c:J

    iget-object v2, p0, Lcom/bytedance/bdtracker/i0;->b:Lcom/bytedance/bdtracker/d0;

    .line 28
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 29
    iget-object v2, v2, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-wide/16 v8, 0x7530

    const-string v10, "session_interval"

    invoke-interface {v2, v10, v8, v9}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    .line 30
    iput-boolean v3, p0, Lcom/bytedance/bdtracker/i0;->n:Z

    goto :goto_1

    :cond_3
    iget-wide v4, p0, Lcom/bytedance/bdtracker/i0;->h:J

    iget-wide v6, p2, Lcom/bytedance/bdtracker/x3;->c:J

    const-wide/32 v8, 0x6ddd00

    add-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-lez v2, :cond_4

    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/x3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/f4;

    :goto_2
    move v1, v3

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V

    iput-boolean v1, p0, Lcom/bytedance/bdtracker/i0;->o:Z

    :cond_5
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/x3;Ljava/util/List;Lcom/bytedance/bdtracker/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/x3;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;",
            "Lcom/bytedance/bdtracker/d;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bytedance/bdtracker/h4;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/h4;->k()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iput-wide v2, p0, Lcom/bytedance/bdtracker/i0;->j:J

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/bytedance/bdtracker/h4;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/bdtracker/i0;->d:Lcom/bytedance/bdtracker/h4;

    const-wide/16 p2, 0x1f4

    if-eqz p1, :cond_0

    iget-wide v1, v0, Lcom/bytedance/bdtracker/x3;->c:J

    iget-wide v3, p1, Lcom/bytedance/bdtracker/x3;->c:J

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/bytedance/bdtracker/h4;->s:J

    sub-long/2addr v1, v3

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    :goto_0
    iget-object p1, p1, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    iput-object p1, v0, Lcom/bytedance/bdtracker/h4;->t:Ljava/lang/String;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/i0;->c:Lcom/bytedance/bdtracker/h4;

    if-eqz p1, :cond_5

    iget-wide v1, v0, Lcom/bytedance/bdtracker/x3;->c:J

    iget-wide v3, p1, Lcom/bytedance/bdtracker/x3;->c:J

    sub-long/2addr v1, v3

    iget-wide v3, p1, Lcom/bytedance/bdtracker/h4;->s:J

    sub-long/2addr v1, v3

    cmp-long p2, v1, p2

    if-gez p2, :cond_5

    goto :goto_0

    :cond_1
    iget-wide v4, p1, Lcom/bytedance/bdtracker/x3;->c:J

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/bytedance/bdtracker/i0;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    const-string v3, "play_session"

    invoke-virtual {p3, v3, v1, v2}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_2
    iget-wide v3, v0, Lcom/bytedance/bdtracker/x3;->c:J

    iput-wide v3, p0, Lcom/bytedance/bdtracker/i0;->j:J

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1
    iget-boolean p1, v0, Lcom/bytedance/bdtracker/h4;->D:Z

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 2
    iput-object v0, p0, Lcom/bytedance/bdtracker/i0;->c:Lcom/bytedance/bdtracker/h4;

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/bytedance/bdtracker/i0;->d:Lcom/bytedance/bdtracker/h4;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/bdtracker/i0;->c:Lcom/bytedance/bdtracker/h4;

    goto :goto_1

    :cond_4
    instance-of p3, p1, Lcom/bytedance/bdtracker/i0$b;

    if-nez p3, :cond_5

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 22
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/i0;->i:Z

    if-eqz v0, :cond_0

    .line 23
    iget-wide v0, p0, Lcom/bytedance/bdtracker/i0;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
