.class public Lrich/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/y0;


# static fields
.field public static a:Lrich/q1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lrich/w0;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrich/w0;->a:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lrich/w0;->a:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lrich/w0;->a:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Lrich/j1;Lrich/l0;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    instance-of p1, p1, Lrich/h1;

    if-eqz p1, :cond_1

    new-instance p1, Lrich/q1;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lrich/q1;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lrich/l0;)V

    sget-object p2, Lrich/x0;->a:Lrich/q1;

    if-nez p2, :cond_0

    sput-object p1, Lrich/x0;->a:Lrich/q1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    sget-object p1, Lrich/x0;->a:Lrich/q1;

    if-nez p1, :cond_2

    new-instance p1, Lrich/q1;

    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lrich/q1;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lrich/l0;)V

    sput-object p1, Lrich/x0;->a:Lrich/q1;

    :cond_2
    sget-object p1, Lrich/x0;->a:Lrich/q1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lrich/o1;Lrich/t1;Lrich/l0;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "remote_ip"

    const-string v6, "responseResult: "

    const-string v7, "responseCode: "

    const-string v8, ""

    const-string v0, "\u8bf7\u6c42\u5730\u5740: "

    invoke-static {v0}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v9, v2, Lrich/o1;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ConnectionInterceptor"

    invoke-static {v9, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    iget-object v0, v2, Lrich/o1;->a:Ljava/lang/String;

    .line 4
    new-instance v15, Ljava/net/URL;

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v14

    .line 5
    iget-object v11, v2, Lrich/o1;->k:Lrich/j1;

    .line 6
    instance-of v12, v11, Lrich/k1;

    if-nez v12, :cond_0

    instance-of v12, v11, Lrich/h1;

    if-eqz v12, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v4, v5, v8}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    new-instance v15, Ljava/net/URL;

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v12, v2, Lrich/o1;->g:Landroid/net/Network;

    if-eqz v12, :cond_2

    .line 10
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5f00\u59cbwifi\u4e0b\u53d6\u53f7"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v12, v2, Lrich/o1;->g:Landroid/net/Network;

    .line 12
    invoke-virtual {v12, v15}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v12

    goto :goto_1

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4f7f\u7528\u5f53\u524d\u7f51\u7edc\u73af\u5883\u53d1\u9001\u8bf7\u6c42"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    :goto_1
    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 13
    :try_start_1
    iget-object v13, v2, Lrich/o1;->b:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v13, :cond_3

    .line 14
    :try_start_2
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v19, v8

    :try_start_3
    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/String;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v19

    move-object/from16 v13, v20

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_7

    :cond_3
    move-object/from16 v19, v8

    instance-of v8, v12, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v8, :cond_6

    instance-of v8, v11, Lrich/k1;

    if-nez v8, :cond_4

    instance-of v8, v11, Lrich/h1;

    if-eqz v8, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "host = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Host"

    invoke-virtual {v12, v0, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "need sni handle"

    invoke-static {v9, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lrich/u1;

    .line 15
    iget-object v8, v2, Lrich/o1;->g:Landroid/net/Network;

    .line 16
    invoke-direct {v0, v12, v8, v4}, Lrich/u1;-><init>(Ljavax/net/ssl/HttpsURLConnection;Landroid/net/Network;Lrich/l0;)V

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v0, Lrich/x0$a;

    invoke-direct {v0, v1, v14}, Lrich/x0$a;-><init>(Lrich/x0;Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v11, v4}, Lrich/x0;->a(Lrich/j1;Lrich/l0;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_6
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v8, 0x1388

    invoke-virtual {v12, v8}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v12, v8}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    .line 17
    iget-object v0, v2, Lrich/o1;->d:Ljava/lang/String;

    .line 18
    invoke-virtual {v12, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    instance-of v8, v2, Lrich/n1;

    if-eqz v8, :cond_7

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    move-object v8, v2

    check-cast v8, Lrich/n1;

    invoke-virtual {v8, v4}, Lrich/n1;->a(Lrich/l0;)V

    :cond_7
    const-string v8, "POST"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v8, "utf-8"

    if-eqz v0, :cond_8

    :try_start_4
    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 19
    :try_start_5
    iget-object v0, v2, Lrich/o1;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v0, 0x800

    :try_start_7
    new-array v0, v0, [B

    :goto_5
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_9

    new-instance v4, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object/from16 v16, v5

    const/4 v5, 0x0

    :try_start_8
    invoke-direct {v4, v0, v5, v14, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    goto :goto_5

    :cond_9
    move-object/from16 v16, v5

    new-instance v0, Lrich/s1;

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v15, v4, v5}, Lrich/s1;-><init>(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-virtual {v1, v11}, Lrich/x0;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1, v13}, Lrich/x0;->a(Ljava/io/Closeable;)V

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v8, v19

    goto :goto_6

    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v15, v2, :cond_b

    const/16 v2, 0x12d

    if-eq v15, v2, :cond_b

    const/16 v2, 0x12e

    if-eq v15, v2, :cond_b

    goto/16 :goto_f

    :cond_b
    invoke-interface {v3, v0}, Lrich/t1;->a(Lrich/s1;)V

    goto/16 :goto_10

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_c

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    const/4 v13, 0x0

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v16, v5

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    :goto_7
    move-object/from16 v16, v5

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v19, v8

    :goto_8
    const/4 v11, 0x0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v19, v8

    :goto_9
    const/4 v11, 0x0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v19, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    const/4 v13, 0x0

    const/4 v15, -0x1

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v19, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    const/4 v13, 0x0

    const/4 v15, -0x1

    :goto_c
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v5, v2, Lrich/o1;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lrich/l0;->a()Lrich/x1;

    move-result-object v4

    iget-object v4, v4, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    instance-of v4, v0, Ljava/io/EOFException;

    if-eqz v4, :cond_c

    const v4, 0x30d72

    goto :goto_d

    :cond_c
    const v4, 0x18ed6

    :goto_d
    move v15, v4

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_e

    .line 23
    iget-object v0, v2, Lrich/o1;->k:Lrich/j1;

    .line 24
    instance-of v2, v0, Lrich/k1;

    if-nez v2, :cond_d

    instance-of v0, v0, Lrich/h1;

    if-eqz v0, :cond_e

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lrich/x0;->a()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p3

    move-object/from16 v4, v16

    invoke-virtual {v2, v4, v0}, Lrich/l0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_e
    invoke-virtual {v1, v11}, Lrich/x0;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1, v13}, Lrich/x0;->a(Ljava/io/Closeable;)V

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v8, v19

    goto :goto_e

    :cond_10
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v15, v2, :cond_11

    const/16 v2, 0x12d

    if-eq v15, v2, :cond_11

    const/16 v2, 0x12e

    if-eq v15, v2, :cond_11

    :goto_f
    invoke-static {v15}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object v0

    invoke-interface {v3, v0}, Lrich/t1;->a(Lrich/r1;)V

    goto :goto_10

    :cond_11
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lrich/t1;->a(Lrich/s1;)V

    :goto_10
    return-void

    :catchall_5
    move-exception v0

    :goto_11
    invoke-virtual {v1, v11}, Lrich/x0;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1, v13}, Lrich/x0;->a(Ljava/io/Closeable;)V

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v8, v19

    goto :goto_12

    :cond_13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_12
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lrich/c2;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v15, v2, :cond_14

    const/16 v2, 0x12d

    if-eq v15, v2, :cond_14

    const/16 v2, 0x12e

    if-eq v15, v2, :cond_14

    invoke-static {v15}, Lrich/r1;->a(I)Lrich/r1;

    move-result-object v2

    invoke-interface {v3, v2}, Lrich/t1;->a(Lrich/r1;)V

    goto :goto_13

    :cond_14
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lrich/t1;->a(Lrich/s1;)V

    :goto_13
    throw v0
.end method
