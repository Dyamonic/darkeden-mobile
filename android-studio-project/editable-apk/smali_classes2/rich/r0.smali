.class public Lrich/r0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static c:Lrich/r0;


# instance fields
.field public final a:Lrich/m1;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lrich/r0;->b:Landroid/content/Context;

    invoke-static {}, Lrich/m1;->a()Lrich/m1;

    move-result-object p1

    iput-object p1, p0, Lrich/r0;->a:Lrich/m1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lrich/r0;
    .locals 2

    sget-object v0, Lrich/r0;->c:Lrich/r0;

    if-nez v0, :cond_1

    const-class v0, Lrich/r0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/r0;->c:Lrich/r0;

    if-nez v1, :cond_0

    new-instance v1, Lrich/r0;

    invoke-direct {v1, p0}, Lrich/r0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lrich/r0;->c:Lrich/r0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lrich/r0;->c:Lrich/r0;

    return-object p0
.end method


# virtual methods
.method public a(Lrich/l0;Lrich/s0;)V
    .locals 3

    const-string v0, "AuthnBusiness"

    const-string v1, "LoginCheck method start"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "logintype"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "isCacheScrip"

    .line 2
    invoke-virtual {p1, v2, v1}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "securityphone"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lrich/b0;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "103000"

    const-string v2, "true"

    invoke-interface {p2, v1, v2, p1, v0}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lrich/r0;->b(Lrich/l0;Lrich/s0;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lrich/r0;->b(Lrich/l0;Lrich/s0;)V

    return-void
.end method

.method public final a(Lrich/l0;Lrich/s0;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v0, p5

    const-string v5, "openId"

    const-string v6, "phonescrip"

    const-string v7, "securityphone"

    const-string v8, "103000"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "true"

    const-string v11, "logintype"

    const/4 v12, 0x0

    if-eqz v8, :cond_8

    const-string v8, "resultdata"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "aes_key"

    invoke-virtual {v1, v0}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v13, "aes_iv"

    invoke-virtual {v1, v13}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v0, v8, v13}, Lrich/b0;->b([BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v8, 0x0

    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "pcid"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-static {v7, v15}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v23, v14

    move-object v14, v0

    move-object v0, v8

    move-object/from16 v8, v23

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v15, v8

    move-object v8, v14

    move-object v14, v0

    move-object v0, v15

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v14, v0

    move-object v0, v8

    move-object v15, v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v14, v0

    move-object v0, v8

    move-object v13, v0

    move-object v15, v13

    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    move-object v14, v8

    move-object v8, v0

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "securityPhone  = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "AuthnBusiness"

    invoke-static {v10, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v8}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v14}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v15}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_7

    const-string v0, "isRisk"

    invoke-virtual {v1, v0, v12}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v5, p0

    iget-object v7, v5, Lrich/r0;->b:Landroid/content/Context;

    const-string v8, "scripExpiresIn"

    const-string v10, "0"

    invoke-virtual {v13, v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v8, "scripKey"

    const-string v10, ""

    invoke-virtual {v1, v8, v10}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "scripType"

    invoke-virtual {v1, v15, v10}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "save phone scrip simKey = "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "PhoneScripUtils"

    invoke-static {v12, v6}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lrich/f2;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    mul-long v16, v16, v21

    add-long v19, v19, v16

    sput-wide v19, Lrich/f2;->c:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lrich/f2;->c:J

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sLifeTime"

    invoke-static {v5, v4}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lrich/f2;->b:Ljava/lang/String;

    const/4 v4, 0x1

    sput v4, Lrich/f2;->d:I

    const-string v4, "operator"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lrich/e2;

    invoke-direct {v4, v7, v14, v8}, Lrich/e2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lrich/k2;->a(Lrich/k2$a;)V

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_2
    const-wide/32 v4, 0x36ee80

    cmp-long v6, v16, v4

    if-lez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    sput-wide v6, Lrich/f2;->c:J

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v4, v4, v16

    sput-wide v4, Lrich/f2;->c:J

    goto :goto_3

    :cond_4
    move v4, v12

    .line 4
    :goto_4
    invoke-virtual {v1, v11, v4}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 5
    invoke-static {}, Lrich/b0;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v2, v3, v9, v1, v0}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v1, v0, v4}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v0, v4}, Lrich/l0;->a(Ljava/lang/String;Z)V

    const-string v0, "isGotScrip"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lrich/l0;->a(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p2}, Lrich/r0;->b(Lrich/l0;Lrich/s0;)V

    goto :goto_6

    :cond_6
    move-object/from16 v4, p4

    invoke-interface {v2, v3, v4, v1, v13}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_7
    const-string v0, "\u8fd4\u56de103000\uff0c\u4f46\u662f\u6570\u636e\u89e3\u6790\u51fa\u9519"

    invoke-static {v10, v0}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x18f4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    invoke-static {v3, v4}, Lrich/b0;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4, v1, v3}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    return-void

    :cond_8
    move v5, v12

    .line 6
    invoke-virtual {v1, v11, v5}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v0, "resultCode"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "desc"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 8
    :goto_5
    invoke-interface {v2, v3, v9, v1, v5}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_9
    invoke-interface {v2, v3, v4, v1, v0}, Lrich/s0;->a(Ljava/lang/String;Ljava/lang/String;Lrich/l0;Lorg/json/JSONObject;)V

    :goto_6
    return-void
.end method

.method public b(Lrich/l0;Lrich/s0;)V
    .locals 7

    const-string v0, "AuthnBusiness"

    const-string v1, "getScripAndToken start"

    invoke-static {v0, v1}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isGotScrip"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGotScrip = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    .line 1
    iget-object v1, p0, Lrich/r0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lrich/r0;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 3
    :cond_0
    :goto_0
    invoke-static {v6}, Lrich/b0;->a([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apppackage"

    invoke-virtual {p1, v4, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appsign"

    invoke-virtual {p1, v1, v3}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isCacheScrip"

    .line 4
    invoke-virtual {p1, v1, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "logintype"

    if-nez v1, :cond_2

    new-array v1, v2, [B

    const-string v5, "use2048PublicKey"

    .line 5
    invoke-virtual {p1, v5, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "\u4f7f\u75282048\u516c\u94a5\u5bf9\u5e94\u7684\u5bf9\u79f0\u79d8\u94a5\u751f\u6210\u65b9\u5f0f"

    invoke-static {v0, v1}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lrich/b0;->a()[B

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v5, "\u4f7f\u75281024\u516c\u94a5\u5bf9\u5e94\u7684\u5bf9\u79f0\u79d8\u94a5\u751f\u6210\u65b9\u5f0f"

    invoke-static {v0, v5}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x10

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {}, Lrich/b0;->a()[B

    move-result-object v0

    const-string v5, "aes_key"

    invoke-virtual {p1, v5, v1}, Lrich/l0;->a(Ljava/lang/String;[B)V

    const-string v1, "aes_iv"

    invoke-virtual {p1, v1, v0}, Lrich/l0;->a(Ljava/lang/String;[B)V

    const-string v0, "authType"

    const-string v1, "3"

    invoke-virtual {p1, v0, v1}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "networktype"

    .line 6
    invoke-virtual {p1, v0, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v0, "loginMethod"

    const-string v5, ""

    .line 7
    invoke-virtual {p1, v0, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "loginAuth"

    .line 8
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1, v4, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    const-string v0, "isRisk"

    .line 10
    invoke-virtual {p1, v0, v3}, Lrich/l0;->a(Ljava/lang/String;Z)V

    .line 11
    :cond_2
    invoke-virtual {p1, v4, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "userCapaid"

    if-ne v0, v3, :cond_3

    const-string v0, "200"

    .line 12
    invoke-virtual {p1, v1, v0}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p1, v4, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "50"

    .line 14
    invoke-virtual {p1, v1, v0}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lrich/r0;->a:Lrich/m1;

    new-instance v1, Lrich/r0$a;

    invoke-direct {v1, p0, p1, p2}, Lrich/r0$a;-><init>(Lrich/r0;Lrich/l0;Lrich/s0;)V

    invoke-virtual {v0, p1, v1}, Lrich/m1;->a(Lrich/l0;Lrich/p1;)V

    return-void
.end method
