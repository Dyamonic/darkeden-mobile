.class public Lcom/bytedance/bdtracker/a0;
.super Lcom/bytedance/bdtracker/b0;
.source ""


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/bdtracker/b0;-><init>(Lcom/bytedance/bdtracker/d0;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->h()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v6, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 3
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Lcom/bytedance/applog/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lcom/bytedance/applog/Level;->L0:Lcom/bytedance/applog/Level;

    invoke-virtual {v6, v0, v2, v3, v7}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    .line 6
    iget-object v6, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    .line 7
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v5, v7, v3

    const/16 v8, 0xb

    const-string v9, "Start to active to uri:{} with request:{}..."

    .line 8
    invoke-interface {v6, v8, v9, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    .line 10
    const-class v7, Ljava/lang/String;

    const-string v9, "google_aid"

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v9, v10, v7}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v9, v7}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-float v7, v7

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v7, v9

    const v9, 0x4a5bba00    # 3600000.0f

    div-float/2addr v7, v9

    const/high16 v9, -0x3ec00000    # -12.0f

    cmpg-float v11, v7, v9

    if-gez v11, :cond_0

    move v7, v9

    :cond_0
    const/high16 v9, 0x41400000    # 12.0f

    cmpl-float v11, v7, v9

    if-lez v11, :cond_1

    move v7, v9

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "timezone"

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v9}, Lcom/bytedance/bdtracker/d;->getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Lcom/bytedance/applog/IActiveCustomParamsCallback;->getParams()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "custom_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12, v11}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-class v9, Ljava/lang/String;

    const-string v11, "real_package_name"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-class v12, Ljava/lang/String;

    const-string v13, "package"

    invoke-virtual {v0, v5, v13, v10, v12}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v6, v13, v12}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-class v9, Ljava/lang/String;

    const-string v11, "carrier"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "mcc_mnc"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "sim_region"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "app_version_minor"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v6, v5}, Lcom/bytedance/applog/util/SensitiveUtils;->addSensitiveParamsForUrlQuery(Lcom/bytedance/bdtracker/u3;Ljava/lang/StringBuilder;Lorg/json/JSONObject;)V

    const-class v9, Lorg/json/JSONObject;

    const-string v11, "oaid"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/json/JSONObject;

    invoke-static {v9}, Lcom/bytedance/bdtracker/o5;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-class v9, Ljava/lang/String;

    const-string v11, "click_id"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "click_id_nature"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "client_tun"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v11, v9}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-class v9, Ljava/lang/String;

    const-string v11, "client_anpi"

    invoke-virtual {v0, v5, v11, v10, v9}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v11, v0}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "req_id"

    invoke-static {}, Lcom/bytedance/bdtracker/e5;->a()Ljava/lang/String;

    move-result-object v6

    .line 11
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9, v0, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v6, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    .line 12
    iget-object v6, v6, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v9, v4, [Ljava/lang/Object;

    const-string v11, "addQuery"

    .line 13
    invoke-interface {v6, v8, v11, v0, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 14
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/s3;->a()Ljava/util/HashMap;

    move-result-object v15

    :try_start_1
    iget-object v0, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->getNetClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v0, v2, Lcom/bytedance/bdtracker/s3;->c:Lcom/bytedance/bdtracker/w4;

    invoke-virtual {v0, v5}, Lcom/bytedance/bdtracker/w4;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const v18, 0xea60

    invoke-interface/range {v11 .. v18}, Lcom/bytedance/applog/network/INetworkClient;->execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v6, "request active success: {}"

    :try_start_3
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v4

    .line 16
    invoke-interface {v0, v8, v6, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v5

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    iget-object v5, v2, Lcom/bytedance/bdtracker/s3;->b:Lcom/bytedance/bdtracker/d;

    .line 17
    iget-object v5, v5, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v6, v4, [Ljava/lang/Object;

    const-string v9, "request active error"

    .line 18
    invoke-interface {v5, v8, v9, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v5, v10

    :goto_3
    invoke-virtual {v2, v5}, Lcom/bytedance/bdtracker/s3;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v2, "message"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v4, v3

    goto :goto_4

    .line 19
    :cond_8
    iget-object v0, v1, Lcom/bytedance/bdtracker/b0;->e:Lcom/bytedance/bdtracker/d0;

    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 21
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "Device header is null"

    .line 22
    invoke-interface {v0, v5, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_4
    if-eqz v4, :cond_a

    .line 23
    iput-boolean v3, v1, Lcom/bytedance/bdtracker/b0;->d:Z

    :cond_a
    return v4
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "Activator"

    return-object v0
.end method

.method public e()[J
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/g0;->g:[J

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method
