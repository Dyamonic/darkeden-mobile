.class public Lcom/tencent/turingfd/sdk/ams/ad/Peach;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;[B)Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;
    .locals 7

    const-string v0, "UTF-8"

    const-string v1, "TuringDebug"

    if-eqz p1, :cond_9

    .line 1
    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/static;->a()[B

    move-result-object v2

    invoke-static {p1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->a([B[B)[B

    move-result-object p1

    if-eqz p1, :cond_8

    .line 7
    array-length v2, p1

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/native;->b([B)[B

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    array-length v2, p1

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 16
    :cond_2
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;

    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;-><init>()V

    .line 17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 18
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x3

    .line 21
    iput-short v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a:S

    .line 22
    iput v4, v2, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->d:I

    .line 23
    array-length v4, p1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_6

    .line 28
    :try_start_0
    new-instance v4, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;

    invoke-direct {v4, p1, v5}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;-><init>([BI)V

    .line 30
    iput-object v0, v4, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v4}, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V

    .line 33
    iget-object p1, v2, Lcom/tencent/turingfd/sdk/ams/ad/Bennet;->g:[B

    .line 34
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v4, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a:Ljava/nio/ByteBuffer;

    .line 35
    sget-object p1, Lcom/tencent/turingfd/sdk/ams/ad/Papaya;->a:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/tencent/turingfd/sdk/ams/ad/Papaya;->a:Ljava/util/HashMap;

    const-string v5, ""

    new-array v6, v2, [B

    .line 37
    invoke-virtual {p1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_3
    sget-object p1, Lcom/tencent/turingfd/sdk/ams/ad/Papaya;->a:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "resp"

    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    new-instance v5, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;

    invoke-direct {v5}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, v5, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a:Ljava/nio/ByteBuffer;

    .line 50
    iput-object v0, v5, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 51
    invoke-virtual {v5, p0, v2, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 53
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 57
    :cond_5
    :goto_0
    check-cast v5, Lcom/tencent/turingfd/sdk/ams/ad/Eridanus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p0, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 59
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    .line 60
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "decode package must include size head"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    const-string p1, "u3"

    .line 62
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_8
    :goto_3
    const-string p1, "u2"

    .line 63
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_9
    :goto_4
    const-string p1, "u1"

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
