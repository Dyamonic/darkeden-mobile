.class public Lcom/bytedance/bdtracker/c4;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lcom/bytedance/bdtracker/d0;

.field public final b:Lcom/bytedance/bdtracker/b4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;Lcom/bytedance/bdtracker/b4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    iput-object p2, p0, Lcom/bytedance/bdtracker/c4;->b:Lcom/bytedance/bdtracker/b4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/x3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;
    .locals 5

    invoke-virtual {p4}, Lcom/bytedance/bdtracker/x3;->h()Lorg/json/JSONObject;

    invoke-virtual {p4}, Lcom/bytedance/bdtracker/x3;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x5

    const-string v4, "Param:[{}] is not a json string"

    .line 3
    invoke-interface {v2, v0, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    invoke-static {p5, v1}, Lcom/bytedance/bdtracker/k0;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 4
    :cond_1
    new-instance p5, Lcom/bytedance/applog/event/EventBasicData;

    invoke-direct {p5, p4}, Lcom/bytedance/applog/event/EventBasicData;-><init>(Lcom/bytedance/bdtracker/x3;)V

    .line 5
    invoke-interface {p1, p2, p3, v1, p5}, Lcom/bytedance/applog/event/IEventHandler;->onReceive(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/applog/event/EventBasicData;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object p1

    .line 6
    iput-object v1, p4, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    return-object p1
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/x3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "eventv3"

    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x3;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/bdtracker/e4;

    iget-object v1, p0, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 11
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    .line 13
    iget-object v2, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/e4;->s:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/bdtracker/j1;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x5

    const-string v2, "Notify event observer failed"

    .line 16
    invoke-interface {v0, p1, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/bytedance/applog/event/IEventHandler;Lcom/bytedance/bdtracker/x3;Z)Z
    .locals 9

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/applog/event/IEventHandler;->acceptType()I

    move-result v2

    instance-of v3, p2, Lcom/bytedance/bdtracker/z3;

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v8, p2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    const/16 v5, 0x8

    const-string v6, "bav2b_click"

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/bdtracker/c4;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/x3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v3, p2, Lcom/bytedance/bdtracker/e4;

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    invoke-static {v2, v0}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/bytedance/bdtracker/e4;

    .line 7
    iget-object v1, v1, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    move v4, v0

    goto :goto_0

    .line 8
    :cond_1
    instance-of v3, p2, Lcom/bytedance/bdtracker/h4;

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v8, p2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    const/4 v5, 0x4

    const-string v6, "bav2b_page"

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/bdtracker/c4;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/x3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    goto :goto_1

    :cond_2
    instance-of v3, p2, Lcom/bytedance/bdtracker/i4;

    if-eqz v3, :cond_3

    invoke-static {v2, v4}, Lcom/bytedance/applog/event/EventType;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/bytedance/bdtracker/i4;

    .line 9
    iget-object v1, v1, Lcom/bytedance/bdtracker/i4;->t:Ljava/lang/String;

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/bdtracker/c4;->a(Lcom/bytedance/applog/event/IEventHandler;ILjava/lang/String;Lcom/bytedance/bdtracker/x3;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;

    move-result-object v1

    .line 10
    :cond_3
    :goto_1
    instance-of p1, p2, Lcom/bytedance/bdtracker/f4;

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    sget-object v1, Lcom/bytedance/applog/event/EventPolicy;->ACCEPT:Lcom/bytedance/applog/event/EventPolicy;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    :cond_5
    :goto_2
    sget-object p1, Lcom/bytedance/applog/event/EventPolicy;->DENY:Lcom/bytedance/applog/event/EventPolicy;

    if-ne v1, p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/x3;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_13

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isTrackEventEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    const/4 v9, 0x0

    .line 6
    :try_start_0
    iget-object v10, v1, Lcom/bytedance/bdtracker/c4;->b:Lcom/bytedance/bdtracker/b4;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v9

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/bdtracker/x3;

    iget-object v14, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 7
    iget-object v14, v14, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 8
    iget-object v14, v14, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 9
    invoke-virtual {v14}, Lcom/bytedance/applog/InitConfig;->isLaunchTerminateEnabled()Z

    move-result v14

    invoke-virtual {v1, v0, v13, v14}, Lcom/bytedance/bdtracker/c4;->a(Lcom/bytedance/applog/event/IEventHandler;Lcom/bytedance/bdtracker/x3;Z)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v0, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 10
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    .line 11
    iget-object v9, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v9}, Lcom/bytedance/bdtracker/d0;->d()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x3ed

    const-wide/16 v12, 0x2

    .line 12
    invoke-static {v0, v12, v13, v9, v11}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;JLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    invoke-static {v10}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_3
    :try_start_2
    iget-object v14, v13, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 14
    iget-object v14, v14, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v14, v14, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 16
    iput-object v14, v13, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 17
    :cond_4
    instance-of v14, v13, Lcom/bytedance/bdtracker/f4;

    if-nez v14, :cond_6

    instance-of v14, v13, Lcom/bytedance/bdtracker/k4;

    if-nez v14, :cond_6

    instance-of v14, v13, Lcom/bytedance/bdtracker/i4;

    if-nez v14, :cond_6

    iget-object v14, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 18
    iget-object v14, v14, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 19
    invoke-virtual {v14}, Lcom/bytedance/bdtracker/x1;->n()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    :try_start_3
    iget-object v15, v13, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    if-nez v15, :cond_5

    .line 21
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :cond_5
    const-string v8, "$app_version"

    invoke-virtual {v15, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iput-object v15, v13, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :catchall_0
    :cond_6
    :try_start_4
    iget-object v8, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 24
    iget-object v8, v8, Lcom/bytedance/bdtracker/d0;->F:Lcom/bytedance/bdtracker/e0;

    .line 25
    invoke-virtual {v8, v13}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/x3;)V

    invoke-virtual {v13}, Lcom/bytedance/bdtracker/x3;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v12}, Lcom/bytedance/bdtracker/x3;->a(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v10, v8, v9, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    iput-wide v14, v13, Lcom/bytedance/bdtracker/x3;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v8, "eventv3"

    :try_start_5
    invoke-virtual {v13}, Lcom/bytedance/bdtracker/x3;->f()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    instance-of v8, v13, Lcom/bytedance/bdtracker/f4;

    if-eqz v8, :cond_8

    move-object v8, v13

    check-cast v8, Lcom/bytedance/bdtracker/f4;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    instance-of v8, v13, Lcom/bytedance/bdtracker/h4;

    if-eqz v8, :cond_9

    move-object v8, v13

    check-cast v8, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    const-string v8, "event_save_db"

    invoke-static {v8, v13}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v0, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 26
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    .line 27
    iget-object v8, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v8}, Lcom/bytedance/bdtracker/d0;->d()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v0, :cond_b

    .line 28
    new-instance v11, Lcom/bytedance/bdtracker/w2;

    invoke-direct {v11, v9}, Lcom/bytedance/bdtracker/w2;-><init>(I)V

    move-object v9, v0

    check-cast v9, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {v9, v11}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_b
    if-eqz v0, :cond_e

    new-instance v9, Lcom/bytedance/bdtracker/y2;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v17, 0x1

    if-eqz v8, :cond_c

    goto :goto_3

    :cond_c
    const-string v8, ""

    :goto_3
    move-object/from16 v19, v8

    const-wide/16 v20, 0x1

    move-object/from16 v16, v9

    :try_start_6
    invoke-direct/range {v16 .. v21}, Lcom/bytedance/bdtracker/y2;-><init>(JLjava/lang/String;J)V

    check-cast v0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {v0, v9}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 29
    :goto_4
    :try_start_7
    iget-object v8, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 30
    iget-object v8, v8, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 31
    iget-object v8, v8, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const-string v10, "Insert to table failed"

    :try_start_8
    new-array v11, v3, [Ljava/lang/Object;

    aput-object v0, v11, v4

    const/4 v12, 0x5

    .line 32
    invoke-interface {v8, v12, v10, v11}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/bdtracker/l4;

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 33
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    .line 34
    invoke-static {v2, v0}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_d
    move-object v10, v9

    :cond_e
    :goto_5
    invoke-static {v10}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v1, v7}, Lcom/bytedance/bdtracker/c4;->a(Ljava/util/List;)V

    .line 35
    :try_start_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/h4;

    iget-wide v6, v2, Lcom/bytedance/bdtracker/h4;->s:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    iget-object v6, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 36
    iget-object v6, v6, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 37
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    .line 38
    iget-object v2, v2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/bytedance/bdtracker/j1;->onPageEnter(Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_f
    iget-object v6, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 39
    iget-object v6, v6, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 40
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    .line 41
    iget-object v2, v2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/bytedance/bdtracker/j1;->onPageLeave(Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    iget-object v2, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 42
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 43
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "Notify event observer failed"

    const/4 v7, 0x5

    .line 44
    invoke-interface {v2, v7, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_10
    :try_start_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/f4;

    iget-object v6, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 46
    iget-object v6, v6, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 47
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/k1;

    .line 48
    iget-wide v7, v2, Lcom/bytedance/bdtracker/x3;->b:J

    iget-object v2, v2, Lcom/bytedance/bdtracker/x3;->e:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v2}, Lcom/bytedance/bdtracker/k1;->onSessionStart(JLjava/lang/String;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/f4;

    iget-object v5, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 49
    iget-object v5, v5, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 50
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    .line 51
    iget-object v2, v2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lcom/bytedance/bdtracker/j1;->onLaunch(Lorg/json/JSONObject;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    iget-object v2, v1, Lcom/bytedance/bdtracker/c4;->a:Lcom/bytedance/bdtracker/d0;

    .line 52
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 53
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v0, "Notify session observer failed "

    const/4 v4, 0x5

    .line 54
    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return-void

    :catchall_5
    move-exception v0

    .line 55
    invoke-static {v9}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :cond_13
    :goto_9
    return-void
.end method
