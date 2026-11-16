.class public Lcom/tencent/turingfd/sdk/ams/ad/Andromeda;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;Ljava/net/URL;Ljava/util/Map;)Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v2, "User-Agent"

    const-string v3, "Turing"

    .line 10
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Charset"

    const-string v3, "utf-8"

    .line 11
    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 31
    iget p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->e:I

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 32
    iget p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->f:I

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 34
    iget-boolean p0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bagasse;->g:Z

    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 44
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;

    invoke-direct {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;-><init>()V

    .line 45
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    const/16 p1, 0x131

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 46
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->a:I

    .line 47
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;

    .line 48
    invoke-direct {p1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 49
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object p1

    .line 50
    :cond_1
    :pswitch_0
    :try_start_3
    iput p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->a:I

    .line 51
    iput-boolean v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->d:Z

    const-string p1, "Location"

    .line 52
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->c:Ljava/lang/String;

    .line 54
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;

    .line 55
    invoke-direct {p1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 56
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object p1

    .line 57
    :cond_2
    :try_start_5
    new-instance p2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 58
    :try_start_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    invoke-static {p2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 60
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 62
    iput-boolean v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->d:Z

    .line 63
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->c:Ljava/lang/String;

    .line 65
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;->b:[B

    .line 67
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;

    .line 68
    invoke-direct {p1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Bergamot;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bergamot$do;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 69
    invoke-static {p2}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 72
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    return-object p1

    :catchall_3
    move-exception p0

    move-object v0, p2

    goto :goto_1

    :catchall_4
    move-exception p0

    goto :goto_1

    :catchall_5
    move-exception p0

    move-object v1, v0

    .line 73
    :goto_1
    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4

    .line 76
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 80
    :catchall_6
    :cond_4
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
