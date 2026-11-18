.class public Lrich/m1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lrich/m1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lrich/m1;
    .locals 2

    sget-object v0, Lrich/m1;->a:Lrich/m1;

    if-nez v0, :cond_1

    const-class v0, Lrich/m1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrich/m1;->a:Lrich/m1;

    if-nez v1, :cond_0

    new-instance v1, Lrich/m1;

    invoke-direct {v1}, Lrich/m1;-><init>()V

    sput-object v1, Lrich/m1;->a:Lrich/m1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lrich/m1;->a:Lrich/m1;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lrich/l0;Lrich/p1;)V
    .locals 5

    new-instance v0, Lrich/i1;

    invoke-direct {v0}, Lrich/i1;-><init>()V

    new-instance v1, Lrich/i1$a;

    invoke-direct {v1}, Lrich/i1$a;-><init>()V

    new-instance v2, Lrich/i1$b;

    invoke-direct {v2}, Lrich/i1$b;-><init>()V

    invoke-static {}, Lrich/l2;->b()Ljava/lang/String;

    move-result-object v3

    .line 83
    iput-object v3, v2, Lrich/i1$b;->b:Ljava/lang/String;

    .line 84
    invoke-static {}, Lrich/b0;->a()Ljava/lang/String;

    move-result-object v3

    .line 85
    iput-object v3, v2, Lrich/i1$b;->c:Ljava/lang/String;

    const-string v3, "2.0"

    .line 86
    iput-object v3, v2, Lrich/i1$b;->e:Ljava/lang/String;

    const-string v3, "appid"

    const-string v4, ""

    .line 87
    invoke-virtual {p2, v3, v4}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    iput-object v3, v2, Lrich/i1$b;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v2, v4}, Lrich/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 90
    iput-object v3, v2, Lrich/i1$b;->a:Ljava/lang/String;

    .line 91
    iput-object p1, v1, Lrich/i1$a;->a:Lorg/json/JSONObject;

    .line 92
    iput-object v1, v0, Lrich/i1;->b:Lrich/i1$a;

    .line 93
    iput-object v2, v0, Lrich/i1;->a:Lrich/i1$b;

    .line 94
    invoke-virtual {p2}, Lrich/l0;->b()Lrich/h0;

    move-result-object p1

    const-string v1, "https://"

    invoke-static {v1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    iget-object p1, p1, Lrich/h0;->d:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/log/logReport"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lrich/o1;

    const-string v2, "traceId"

    .line 97
    invoke-virtual {p2, v2, v4}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    .line 98
    invoke-direct {v1, p1, v0, v3, v2}, Lrich/o1;-><init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p3, p2}, Lrich/m1;->a(Lrich/o1;Lrich/p1;Lrich/l0;)V

    return-void
.end method

.method public a(Lrich/l0;Lrich/p1;)V
    .locals 16

    move-object/from16 v1, p1

    const-string v0, "networktype"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v0, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v3

    .line 2
    new-instance v0, Lrich/k1;

    invoke-direct {v0}, Lrich/k1;-><init>()V

    const-string v4, "1.0"

    .line 3
    iput-object v4, v0, Lrich/d1;->a:Ljava/lang/String;

    const-string v4, "quick_login_android_5.9.7.1"

    .line 4
    iput-object v4, v0, Lrich/d1;->b:Ljava/lang/String;

    const-string v4, "appid"

    const-string v5, ""

    .line 5
    invoke-virtual {v1, v4, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 6
    :cond_0
    iput-object v4, v0, Lrich/d1;->c:Ljava/lang/String;

    const-string v4, "operatortype"

    .line 7
    invoke-virtual {v1, v4, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v5

    .line 8
    :cond_1
    iput-object v4, v0, Lrich/d1;->e:Ljava/lang/String;

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v5

    .line 10
    :cond_2
    iput-object v4, v0, Lrich/d1;->f:Ljava/lang/String;

    .line 11
    sget-object v4, Lrich/j2;->a:Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v4, v5

    .line 12
    :cond_3
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lrich/d1;->g:Ljava/lang/String;

    .line 13
    sget-object v4, Lrich/j2;->b:Ljava/lang/String;

    if-nez v4, :cond_4

    move-object v4, v5

    .line 14
    :cond_4
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lrich/d1;->h:Ljava/lang/String;

    .line 15
    sget-object v4, Lrich/j2;->c:Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v4, v5

    .line 16
    :cond_5
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lrich/d1;->i:Ljava/lang/String;

    const-string v4, "0"

    .line 17
    iput-object v4, v0, Lrich/d1;->j:Ljava/lang/String;

    const-string v6, "3.0"

    .line 18
    iput-object v6, v0, Lrich/d1;->k:Ljava/lang/String;

    .line 19
    invoke-static {}, Lrich/l2;->b()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    move-object v7, v5

    .line 20
    :cond_6
    iput-object v7, v0, Lrich/d1;->m:Ljava/lang/String;

    .line 21
    invoke-static {}, Lrich/b0;->a()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    move-object v7, v5

    .line 22
    :cond_7
    iput-object v7, v0, Lrich/d1;->n:Ljava/lang/String;

    const-string v7, "apppackage"

    .line 23
    invoke-virtual {v1, v7, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8

    move-object v7, v5

    .line 24
    :cond_8
    iput-object v7, v0, Lrich/d1;->q:Ljava/lang/String;

    const-string v7, "appsign"

    .line 25
    invoke-virtual {v1, v7, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    move-object v7, v5

    .line 26
    :cond_9
    iput-object v7, v0, Lrich/d1;->r:Ljava/lang/String;

    const-string v7, "AID"

    .line 27
    invoke-static {v7, v5}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_a

    move-object v7, v5

    .line 28
    :cond_a
    iput-object v7, v0, Lrich/d1;->v:Ljava/lang/String;

    const-string v7, "logintype"

    .line 29
    invoke-virtual {v1, v7, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eq v8, v9, :cond_d

    const-string v8, "isRisk"

    .line 30
    invoke-virtual {v1, v8, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_1

    :cond_b
    const-string v8, "userCapaid"

    .line 31
    invoke-virtual {v1, v8, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual {v0, v8}, Lrich/k1;->c(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v7, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v10, :cond_c

    const-string v8, "200"

    goto :goto_0

    :cond_c
    const-string v8, "50"

    .line 34
    :goto_0
    iput-object v8, v0, Lrich/k1;->z:Ljava/lang/String;

    const-string v8, "authz"

    goto :goto_2

    :cond_d
    :goto_1
    const-string v8, "pre"

    .line 35
    :goto_2
    iput-object v8, v0, Lrich/d1;->w:Ljava/lang/String;

    const-string v8, "scripAndTokenForHttps"

    .line 36
    invoke-static {v1, v8}, Lrich/l2;->a(Lrich/l0;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lrich/l0;->b()Lrich/h0;

    move-result-object v8

    const-string v11, "isCacheScrip"

    invoke-virtual {v1, v11, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "defendEOF"

    const-string v13, "POST"

    const-string v14, "traceId"

    const-string v15, "/unisdk/rs/scripAndTokenForHttps"

    const-string v9, "https://"

    if-nez v11, :cond_15

    .line 37
    invoke-virtual {v1, v7, v2}, Lrich/l0;->b(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_15

    const-string v7, "isGotScrip"

    .line 38
    invoke-virtual {v1, v7, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    goto/16 :goto_5

    :cond_e
    new-instance v4, Lrich/h1;

    invoke-direct {v4}, Lrich/h1;-><init>()V

    const-string v7, "aes_key"

    invoke-virtual {v1, v7}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v11

    .line 39
    iput-object v11, v4, Lrich/h1;->b:[B

    const-string v11, "aes_iv"

    .line 40
    invoke-virtual {v1, v11}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v11

    .line 41
    iput-object v11, v4, Lrich/h1;->d:[B

    .line 42
    iput-object v0, v4, Lrich/h1;->a:Lrich/d1;

    .line 43
    iput-boolean v2, v4, Lrich/h1;->f:Z

    .line 44
    iget-boolean v0, v8, Lrich/h0;->h:Z

    const-string v11, "isCloseIpv4"

    .line 45
    invoke-virtual {v1, v11, v0}, Lrich/l0;->a(Ljava/lang/String;Z)V

    .line 46
    iget-boolean v0, v8, Lrich/h0;->i:Z

    const-string v11, "isCloseIpv6"

    .line 47
    invoke-virtual {v1, v11, v0}, Lrich/l0;->a(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v8, v8, Lrich/h0;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v0, "use2048PublicKey"

    invoke-virtual {v1, v0, v2}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v0

    const-string v9, "mServerPublicKey == null"

    const-string v11, "rich.g2"

    const-string v15, "RSA/ECB/OAEPWithSHA256AndMGF1Padding"

    if-eqz v0, :cond_11

    const-string v0, "BaseRequest"

    const-string v2, "\u4f7f\u75282\u5bf9\u5e94\u7684\u7f16\u7801"

    invoke-static {v0, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    .line 50
    iput-object v0, v4, Lrich/h1;->e:Ljava/lang/String;

    .line 51
    sget-object v0, Lrich/g2;->c:Lrich/g2;

    if-nez v0, :cond_f

    new-instance v0, Lrich/g2;

    invoke-direct {v0}, Lrich/g2;-><init>()V

    sput-object v0, Lrich/g2;->c:Lrich/g2;

    :cond_f
    sget-object v0, Lrich/g2;->c:Lrich/g2;

    .line 52
    invoke-virtual {v1, v7}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 53
    iget-object v7, v0, Lrich/g2;->a:Ljava/security/PublicKey;

    if-nez v7, :cond_10

    invoke-static {v11, v9}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_10
    :try_start_0
    invoke-static {v15}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iget-object v0, v0, Lrich/g2;->b:Ljava/security/PublicKey;

    invoke-virtual {v7, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v7, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 54
    :cond_11
    sget-object v0, Lrich/g2;->c:Lrich/g2;

    if-nez v0, :cond_12

    new-instance v0, Lrich/g2;

    invoke-direct {v0}, Lrich/g2;-><init>()V

    sput-object v0, Lrich/g2;->c:Lrich/g2;

    :cond_12
    sget-object v0, Lrich/g2;->c:Lrich/g2;

    .line 55
    invoke-virtual {v1, v7}, Lrich/l0;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 56
    iget-object v7, v0, Lrich/g2;->a:Ljava/security/PublicKey;

    if-nez v7, :cond_13

    invoke-static {v11, v9}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v5

    goto :goto_4

    :cond_13
    :try_start_1
    invoke-static {v15}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    iget-object v0, v0, Lrich/g2;->a:Ljava/security/PublicKey;

    invoke-virtual {v7, v10, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v7, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lrich/l2;->a([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 57
    :goto_4
    iput-object v0, v4, Lrich/h1;->c:Ljava/lang/String;

    .line 58
    new-instance v0, Lrich/n1;

    .line 59
    invoke-virtual {v1, v14, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {v0, v8, v4, v13, v2}, Lrich/n1;-><init>(Ljava/lang/String;Lrich/h1;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, v0, Lrich/o1;->b:Ljava/util/Map;

    const-string v4, "1"

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "doNetworkSwitch"

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 62
    iput-boolean v10, v0, Lrich/o1;->e:Z

    .line 63
    invoke-virtual {v1, v2, v10}, Lrich/l0;->a(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    .line 64
    iput-boolean v3, v0, Lrich/o1;->e:Z

    .line 65
    invoke-virtual {v1, v2, v3}, Lrich/l0;->a(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_15
    :goto_5
    const-string v2, "phonescrip"

    .line 66
    invoke-virtual {v1, v2, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    move-object v2, v5

    .line 67
    :cond_16
    iput-object v2, v0, Lrich/k1;->y:Ljava/lang/String;

    const-string v2, "appkey"

    .line 68
    invoke-virtual {v1, v2, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v2}, Lrich/j1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    move-object v2, v5

    .line 70
    :cond_17
    iput-object v2, v0, Lrich/d1;->p:Ljava/lang/String;

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v3, v8, Lrich/h0;->a:Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lrich/o1;

    .line 74
    invoke-virtual {v1, v14, v5}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-direct {v3, v2, v0, v13, v5}, Lrich/o1;-><init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, v3, Lrich/o1;->b:Ljava/util/Map;

    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :goto_6
    iget-object v2, v0, Lrich/o1;->b:Ljava/util/Map;

    const-string v3, "interfaceVersion"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 77
    invoke-virtual {v2, v0, v3, v1}, Lrich/m1;->a(Lrich/o1;Lrich/p1;Lrich/l0;)V

    return-void
.end method

.method public final a(Lrich/o1;Lrich/p1;Lrich/l0;)V
    .locals 3

    new-instance v0, Lrich/a1;

    invoke-direct {v0}, Lrich/a1;-><init>()V

    new-instance v1, Lrich/z0;

    invoke-direct {v1}, Lrich/z0;-><init>()V

    new-instance v2, Lrich/x0;

    invoke-direct {v2}, Lrich/x0;-><init>()V

    .line 78
    iput-object v1, v0, Lrich/a1;->a:Lrich/y0;

    .line 79
    iput-object v2, v1, Lrich/z0;->a:Lrich/y0;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 81
    iput-wide v1, p1, Lrich/o1;->h:J

    .line 82
    new-instance v1, Lrich/m1$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lrich/m1$a;-><init>(Lrich/m1;Lrich/o1;Lrich/l0;Lrich/p1;)V

    invoke-virtual {v0, p1, v1, p3}, Lrich/a1;->a(Lrich/o1;Lrich/t1;Lrich/l0;)V

    return-void
.end method

.method public a(ZLrich/l0;Lrich/p1;)V
    .locals 4

    new-instance v0, Lrich/e1;

    invoke-direct {v0}, Lrich/e1;-><init>()V

    const-string v1, "1.0"

    .line 99
    iput-object v1, v0, Lrich/e1;->a:Ljava/lang/String;

    const-string v1, "Android"

    .line 100
    iput-object v1, v0, Lrich/e1;->b:Ljava/lang/String;

    const-string v1, "AID"

    const-string v2, ""

    .line 101
    invoke-static {v1, v2}, Lrich/b0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    iput-object v1, v0, Lrich/e1;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 103
    :goto_0
    iput-object p1, v0, Lrich/e1;->d:Ljava/lang/String;

    const-string p1, "quick_login_android_5.9.7.1"

    .line 104
    iput-object p1, v0, Lrich/e1;->e:Ljava/lang/String;

    const-string p1, "appid"

    .line 105
    invoke-virtual {p2, p1, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    iput-object p1, v0, Lrich/e1;->f:Ljava/lang/String;

    const-string p1, "iYm0HAnkxQtpvN44"

    .line 107
    invoke-virtual {v0, p1}, Lrich/j1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lrich/b0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 108
    iput-object p1, v0, Lrich/e1;->g:Ljava/lang/String;

    .line 109
    invoke-virtual {p2}, Lrich/l0;->b()Lrich/h0;

    move-result-object p1

    const-string v1, "https://"

    invoke-static {v1}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    iget-object p1, p1, Lrich/h0;->c:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/client/uniConfig"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lrich/o1;

    const-string v3, "traceId"

    .line 112
    invoke-virtual {p2, v3, v2}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    .line 113
    invoke-direct {v1, p1, v0, v3, v2}, Lrich/o1;-><init>(Ljava/lang/String;Lrich/j1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p3, p2}, Lrich/m1;->a(Lrich/o1;Lrich/p1;Lrich/l0;)V

    return-void
.end method
