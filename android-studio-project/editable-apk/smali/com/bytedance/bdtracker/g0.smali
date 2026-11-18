.class public Lcom/bytedance/bdtracker/g0;
.super Lcom/bytedance/bdtracker/b0;
.source ""


# static fields
.field public static final g:[J

.field public static final h:[J

.field public static final i:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bytedance/bdtracker/g0;->g:[J

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/bytedance/bdtracker/g0;->h:[J

    const/16 v0, 0xf

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/bytedance/bdtracker/g0;->i:[J

    return-void

    :array_0
    .array-data 8
        0xea60
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data

    :array_1
    .array-data 8
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
        0xafc80
        0xafc80
    .end array-data

    :array_2
    .array-data 8
        0x7d0
        0x2710
        0x2710
        0x4e20
        0x4e20
        0xea60
        0xea60
        0x1d4c0
        0x1d4c0
        0x2bf20
        0x2bf20
        0x57e40
        0x57e40
        0x83d60
        0x83d60
    .end array-data
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->d:Lorg/json/JSONObject;

    const-string v1, "register_time"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/bdtracker/b0;-><init>(Lcom/bytedance/bdtracker/d0;J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lorg/json/JSONObject;)Z
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v1, p1

    monitor-enter p0

    :try_start_0
    iget-object v0, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Start do register work"

    const/4 v5, 0x1

    .line 3
    invoke-interface {v0, v5, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "user_unique_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "user_unique_id_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 4
    iget-object v10, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 6
    iget-object v3, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getPreInstallCallback()Lcom/bytedance/bdtracker/t5;

    .line 7
    iget-object v3, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 8
    invoke-virtual {v3}, Lcom/bytedance/applog/InitConfig;->getCommonHeader()Ljava/util/Map;

    move-result-object v3

    .line 9
    sget-object v4, Lcom/bytedance/bdtracker/e5;->a:Lcom/bytedance/bdtracker/q4;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcom/bytedance/bdtracker/q4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "req_id"

    .line 10
    invoke-virtual {v1, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, v9, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 12
    sget-object v4, Lcom/bytedance/bdtracker/o5;->a:Lcom/bytedance/bdtracker/m5;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v4, v6}, Lcom/bytedance/bdtracker/m5;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/q5;

    .line 13
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/q5;->c:Z

    .line 14
    iget-object v4, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 15
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "Oaid maySupport: {}"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v11, v5, [Ljava/lang/Object;

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-interface {v4, v5, v6, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "oaid_may_support"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v4, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 18
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 19
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v11, "Check oaid maySupport failed."

    .line 20
    invoke-interface {v4, v5, v11, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/bytedance/bdtracker/g0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_6

    const-string v0, "device_id"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "install_id"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ssid"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "bd_did"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "cd"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v5}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/bytedance/bdtracker/d4;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v12, v7

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-virtual/range {v10 .. v17}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 21
    iget-object v2, v1, Lcom/bytedance/bdtracker/d0;->m:Lcom/bytedance/bdtracker/z;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    .line 22
    iget-object v1, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 23
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 24
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 25
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isReportOaidEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d0;->a()V

    :cond_4
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v10, Lcom/bytedance/bdtracker/g0$a;

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/bdtracker/g0$a;-><init>(Lcom/bytedance/bdtracker/g0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_register_end"

    invoke-static {v1, v10}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    monitor-exit p0

    return v0

    :cond_6
    :try_start_5
    iget-object v0, v9, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 26
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 27
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Register finished"

    .line 28
    invoke-interface {v0, v5, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v2

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "oaid"

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    const-string v5, "Start to invokeRegister"

    .line 3
    invoke-interface {v1, v4, v5, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 4
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 8
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 9
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/s3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    .line 11
    iget-object v3, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/applog/UriConfig;->getRegisterUri()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/bytedance/applog/Level;->L1:Lcom/bytedance/applog/Level;

    invoke-virtual {v1, p1, v3, v4, v5}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    .line 13
    invoke-virtual {v1, p1, v0}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Request to register server failed."

    .line 16
    invoke-interface {v0, v4, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/bytedance/bdtracker/s3;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig;->getReportOaidUri()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    .line 4
    invoke-virtual {v1, v0, p1}, Lcom/bytedance/bdtracker/s3;->b(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "Report oaid failed."

    .line 7
    invoke-interface {v0, v2, v3, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 2
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/g0;->a(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method

.method public e()[J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->h()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unknown register state"

    .line 5
    invoke-interface {v0, v1, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/bytedance/bdtracker/g0;->g:[J

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/bdtracker/g0;->h:[J

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bytedance/bdtracker/g0;->i:[J

    :goto_1
    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 2
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/i0;->i:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x1499700

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x2932e00

    :goto_0
    return-wide v0
.end method
