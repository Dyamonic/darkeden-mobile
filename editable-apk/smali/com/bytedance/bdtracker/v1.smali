.class public Lcom/bytedance/bdtracker/v1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/bytedance/bdtracker/d;

.field public final c:Lcom/bytedance/applog/InitConfig;

.field public final d:Lcom/bytedance/applog/store/kv/IKVStore;

.field public final e:Lcom/bytedance/applog/store/kv/IKVStore;

.field public final f:Lcom/bytedance/applog/store/kv/IKVStore;

.field public volatile g:Lorg/json/JSONObject;

.field public volatile h:Ljava/lang/String;

.field public volatile i:Lorg/json/JSONObject;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:J

.field public q:Z

.field public r:I

.field public final s:Lcom/bytedance/bdtracker/p1;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/v1;->j:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/bdtracker/v1;->l:I

    const/16 v1, 0x1b

    iput v1, p0, Lcom/bytedance/bdtracker/v1;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/bdtracker/v1;->n:J

    iput v0, p0, Lcom/bytedance/bdtracker/v1;->o:I

    iput-wide v1, p0, Lcom/bytedance/bdtracker/v1;->p:J

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/v1;->q:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/bdtracker/v1;->r:I

    iput-object p1, p0, Lcom/bytedance/bdtracker/v1;->b:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lcom/bytedance/bdtracker/v1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {p3}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/bytedance/bdtracker/o4;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "header_custom"

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/bytedance/bdtracker/o4;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "last_sp_session"

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/bytedance/bdtracker/o4;->a(Lcom/bytedance/applog/InitConfig;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/bdtracker/v1;->e:Lcom/bytedance/applog/store/kv/IKVStore;

    new-instance p2, Lcom/bytedance/bdtracker/p1;

    .line 1
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-direct {p2, v0, p1}, Lcom/bytedance/bdtracker/p1;-><init>(Lcom/bytedance/applog/store/kv/IKVStore;Lcom/bytedance/applog/log/IAppLogLogger;)V

    iput-object p2, p0, Lcom/bytedance/bdtracker/v1;->s:Lcom/bytedance/bdtracker/p1;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/x3;

    instance-of v2, v1, Lcom/bytedance/bdtracker/e4;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/bytedance/bdtracker/e4;

    .line 1
    iget-object v3, p0, Lcom/bytedance/bdtracker/v1;->k:Ljava/util/HashSet;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v6, "real_time_events"

    const-string v7, "[]"

    invoke-interface {v5, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v6

    goto :goto_2

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/bytedance/bdtracker/v1;->b:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v6, "ConfigManager"

    .line 3
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "getRealTimeEvents failed"

    invoke-interface {v5, v6, v7, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_3
    :goto_2
    iput-object v3, p0, Lcom/bytedance/bdtracker/v1;->k:Ljava/util/HashSet;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->g:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v3, "ab_configure"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/bytedance/bdtracker/v1;->g:Lorg/json/JSONObject;

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "backoff_ratio"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/bdtracker/v1;->l:I

    if-ltz v0, :cond_0

    const/16 v2, 0x2710

    if-le v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/bytedance/bdtracker/v1;->l:I

    :cond_1
    iget v0, p0, Lcom/bytedance/bdtracker/v1;->l:I

    const/16 v2, 0x1b

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    const-string v4, "max_request_frequency"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/bdtracker/v1;->m:I

    if-lt v4, v3, :cond_3

    if-le v4, v2, :cond_4

    :cond_3
    iput v0, p0, Lcom/bytedance/bdtracker/v1;->m:I

    :cond_4
    iget v0, p0, Lcom/bytedance/bdtracker/v1;->l:I

    const-wide/16 v4, 0x0

    if-lez v0, :cond_5

    iget-wide v6, p0, Lcom/bytedance/bdtracker/v1;->n:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/bytedance/bdtracker/v1;->n:J

    iput v3, p0, Lcom/bytedance/bdtracker/v1;->o:I

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iput-wide v4, p0, Lcom/bytedance/bdtracker/v1;->n:J

    iput v1, p0, Lcom/bytedance/bdtracker/v1;->o:I

    :cond_6
    :goto_1
    const-string v0, "batch_event_interval"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/bdtracker/v1;->p:J

    const-string v0, "enter_background_not_send"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/bytedance/bdtracker/v1;->q:Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/v1;->b:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v0, "ConfigManager"

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "updateLogRespConfig mBackoffRatio: "

    invoke-static {v2}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/bdtracker/v1;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mMaxRequestFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/bdtracker/v1;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBackoffWindowStartTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/bytedance/bdtracker/v1;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mBackoffWindowSendCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/bytedance/bdtracker/v1;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mEventIntervalFromLogResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/bytedance/bdtracker/v1;->p:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)Z
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x32

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/16 v2, 0x270f

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(J)Z
    .locals 2

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x493e0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "sensitive_fields"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getTweakedChannel()Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/v1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "UMENG_CHANNEL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bytedance/bdtracker/v1;->b:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v3, "ConfigManager"

    .line 4
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "getChannel failed"

    invoke-interface {v2, v3, v5, v1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "external_ab_version"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/v1;->h:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public d()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "session_interval"

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "ssid_"

    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "user_unique_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "user_unique_id_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v1

    const-string v2, "bav_ab_config"

    .line 4
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getProcess()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/bytedance/bdtracker/k0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/bytedance/applog/InitConfig;->setProcess(I)Lcom/bytedance/applog/InitConfig;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/InitConfig;->setProcess(I)Lcom/bytedance/applog/InitConfig;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getProcess()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    iget-object v1, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v1

    const-string v2, "monitor_enabled"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isOaidEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oaid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/v1;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()V
    .locals 4

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "app_log_last_config_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/v1$a;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/v1$a;-><init>(Lcom/bytedance/bdtracker/v1;)V

    const-string v1, "remote_settings"

    invoke-static {v1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    :goto_0
    return-void
.end method
