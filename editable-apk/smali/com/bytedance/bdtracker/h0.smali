.class public Lcom/bytedance/bdtracker/h0;
.super Lcom/bytedance/bdtracker/b0;
.source ""


# static fields
.field public static final h:[J


# instance fields
.field public final g:Lcom/bytedance/bdtracker/g3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    aput-wide v2, v0, v1

    sput-object v0, Lcom/bytedance/bdtracker/h0;->h:[J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/b0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    new-instance v0, Lcom/bytedance/bdtracker/g3;

    .line 1
    iget-object p1, p1, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    const-string v1, "sender_"

    .line 2
    invoke-direct {v0, v1, p1}, Lcom/bytedance/bdtracker/g3;-><init>(Ljava/lang/String;Lcom/bytedance/bdtracker/v1;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/h0;->g:Lcom/bytedance/bdtracker/g3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/bdtracker/h0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/bdtracker/h0$a;-><init>(Lcom/bytedance/bdtracker/h0;Ljava/util/Set;Z)V

    const-string p1, "event_upload_eid"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/g4;)Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v2, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 4
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v2

    iget v3, p1, Lcom/bytedance/bdtracker/x3;->l:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/bdtracker/u3;->a(Lcom/bytedance/bdtracker/d0;Lorg/json/JSONObject;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p1, Lcom/bytedance/bdtracker/g4;->z:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "local_time"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    .line 6
    iget-object v6, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 7
    iget-object v6, v6, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 8
    invoke-virtual {v5, v0, v4, v6}, Lcom/bytedance/bdtracker/s3;->a([Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/bdtracker/v1;)I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/h0;->g:Lcom/bytedance/bdtracker/g3;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/g3;->c()V

    iput v3, p1, Lcom/bytedance/bdtracker/g4;->A:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/g4;->l()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/bdtracker/h0;->a(Ljava/util/Set;Z)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/bytedance/bdtracker/d4;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x1f4

    if-lt v0, v4, :cond_1

    const/16 v4, 0x258

    if-ge v0, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    iget-object v4, p0, Lcom/bytedance/bdtracker/h0;->g:Lcom/bytedance/bdtracker/g3;

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/g3;->b()V

    :cond_2
    iget-object v4, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 9
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    const-wide/16 v5, 0xd

    .line 10
    iget-object v7, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v7}, Lcom/bytedance/bdtracker/d0;->d()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7, v0}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;JLjava/lang/String;I)V

    iget-object v4, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 11
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v5, "Send pack failed:{}"

    :try_start_4
    new-array v6, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-interface {v4, v1, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lcom/bytedance/bdtracker/g4;->A:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/bytedance/bdtracker/g4;->A:I

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/g4;->l()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/bytedance/bdtracker/h0;->a(Ljava/util/Set;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v2, v3

    goto :goto_2

    :catchall_1
    move-exception v0

    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 14
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Send pack failed"

    .line 16
    invoke-interface {v4, v1, v6, v0, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/g4;->l()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/bytedance/bdtracker/h0;->a(Ljava/util/Set;Z)V

    :goto_2
    return v2
.end method

.method public c()Z
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const-wide/32 v7, 0xc350

    .line 2
    invoke-virtual {v0, v2, v3, v7, v8}, Lcom/bytedance/bdtracker/i0;->a(JJ)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v6, [Ljava/lang/Object;

    const-string v7, "New play session event"

    .line 5
    invoke-interface {v2, v4, v7, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    const-string v3, "play_session"

    invoke-virtual {v2, v3, v0, v5}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->flush()V

    :cond_0
    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->h()I

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 8
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/i0;->a()Z

    move-result v2

    .line 9
    iget-object v3, v0, Lcom/bytedance/bdtracker/x1;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/bdtracker/z4;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "access"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 11
    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    .line 12
    :cond_1
    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 13
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 14
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    const-string v7, "Send events with header:{}"

    .line 15
    invoke-interface {v2, v4, v7, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 16
    iget-object v3, v3, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 17
    iget-object v7, v1, Lcom/bytedance/bdtracker/h0;->g:Lcom/bytedance/bdtracker/g3;

    .line 18
    invoke-virtual {v7}, Lcom/bytedance/bdtracker/g3;->a()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v7, Lcom/bytedance/bdtracker/g3;->f:J

    sub-long v10, v8, v10

    sget-object v12, Lcom/bytedance/bdtracker/g3;->h:[[J

    iget v13, v7, Lcom/bytedance/bdtracker/g3;->c:I

    aget-object v14, v12, v13

    aget-wide v15, v14, v6

    cmp-long v10, v10, v15

    if-ltz v10, :cond_3

    iput v5, v7, Lcom/bytedance/bdtracker/g3;->d:I

    iput-wide v8, v7, Lcom/bytedance/bdtracker/g3;->f:J

    goto :goto_0

    :cond_3
    iget v8, v7, Lcom/bytedance/bdtracker/g3;->d:I

    int-to-long v9, v8

    aget-object v11, v12, v13

    const/4 v12, 0x2

    aget-wide v12, v11, v12

    cmp-long v9, v9, v12

    if-gez v9, :cond_4

    add-int/2addr v8, v5

    iput v8, v7, Lcom/bytedance/bdtracker/g3;->d:I

    :goto_0
    move v7, v5

    goto :goto_1

    :cond_4
    move v7, v6

    :goto_1
    if-nez v7, :cond_5

    goto/16 :goto_a

    .line 19
    :cond_5
    invoke-virtual {v2, v3}, Lcom/bytedance/bdtracker/d4;->b(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x8

    if-ge v7, v8, :cond_7

    sub-int/2addr v8, v7

    move v7, v6

    :goto_2
    if-ge v7, v8, :cond_7

    invoke-virtual {v2, v3, v0}, Lcom/bytedance/bdtracker/d4;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 20
    :cond_7
    :goto_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v2, Lcom/bytedance/bdtracker/d4;->a:Lcom/bytedance/bdtracker/b4;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v6

    const-string v3, "SELECT * FROM packV2 WHERE _app_id= ? ORDER BY _id DESC LIMIT 8"

    .line 21
    invoke-virtual {v0, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_8

    .line 22
    invoke-static {v8}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    goto :goto_6

    :cond_8
    :goto_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/bytedance/bdtracker/g4;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/g4;-><init>()V

    invoke-virtual {v0, v8}, Lcom/bytedance/bdtracker/g4;->a(Landroid/database/Cursor;)I

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_9
    invoke-static {v8}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    move v3, v6

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_2
    instance-of v3, v0, Landroid/database/sqlite/SQLiteBlobTooBigException;

    iget-object v9, v2, Lcom/bytedance/bdtracker/d4;->b:Lcom/bytedance/bdtracker/d0;

    .line 23
    iget-object v9, v9, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 24
    iget-object v9, v9, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v10, 0x5

    const-string v11, "Query event packs failed"

    :try_start_3
    new-array v12, v6, [Ljava/lang/Object;

    .line 25
    invoke-interface {v9, v10, v11, v0, v12}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v9, v2, Lcom/bytedance/bdtracker/d4;->b:Lcom/bytedance/bdtracker/d0;

    .line 26
    iget-object v9, v9, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    .line 27
    invoke-static {v9, v0}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v8}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    :goto_5
    if-eqz v3, :cond_a

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d4;->b()V

    .line 28
    :cond_a
    :goto_6
    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 29
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 30
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v5, [Ljava/lang/Object;

    .line 31
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    const-string v8, "{} packs to be sent"

    invoke-interface {v0, v4, v8, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v6

    :cond_b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/bdtracker/g4;

    iget-object v9, v8, Lcom/bytedance/bdtracker/g4;->z:[B

    if-eqz v9, :cond_d

    array-length v9, v9

    if-gtz v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {v1, v8}, Lcom/bytedance/bdtracker/h0;->a(Lcom/bytedance/bdtracker/g4;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_9

    :cond_d
    :goto_8
    iput v6, v8, Lcom/bytedance/bdtracker/g4;->A:I

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v2, v7}, Lcom/bytedance/bdtracker/d4;->b(Ljava/util/List;)V

    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 32
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 33
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sender"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " successfully send "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packs (total: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v4, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :catchall_1
    move-exception v0

    .line 35
    invoke-static {v8}, Lcom/bytedance/bdtracker/k0;->a(Landroid/database/Cursor;)V

    throw v0

    .line 36
    :cond_f
    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 37
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 38
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Header is empty"

    .line 39
    invoke-interface {v0, v4, v3, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    move v5, v6

    :cond_11
    :goto_a
    return v5
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "sender"

    return-object v0
.end method

.method public e()[J
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/h0;->h:[J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-wide v1, v0, Lcom/bytedance/bdtracker/v1;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bdtracker/v1;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/bytedance/bdtracker/v1;->p:J

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-wide/32 v1, 0xea60

    const-string v3, "batch_event_interval"

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
