.class public Lrich/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lrich/h;


# static fields
.field public static final c:Z

.field public static d:I

.field public static e:I


# instance fields
.field public final a:Lrich/c0;

.field public final b:Lrich/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lrich/v;->b:Z

    sput-boolean v0, Lrich/w;->c:Z

    const/16 v0, 0xbb8

    sput v0, Lrich/w;->d:I

    const/16 v0, 0x1000

    sput v0, Lrich/w;->e:I

    return-void
.end method

.method public constructor <init>(Lrich/c0;)V
    .locals 2

    new-instance v0, Lrich/x;

    sget v1, Lrich/w;->e:I

    invoke-direct {v0, v1}, Lrich/x;-><init>(I)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrich/w;->a:Lrich/c0;

    iput-object v0, p0, Lrich/w;->b:Lrich/x;

    return-void
.end method

.method public static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Lrich/o;Lrich/u;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lrich/o;->l:Lrich/e;

    .line 2
    invoke-virtual {p1}, Lrich/o;->g()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3
    :try_start_0
    iget v5, v0, Lrich/e;->b:I

    add-int/2addr v5, v4

    iput v5, v0, Lrich/e;->b:I

    iget v5, v0, Lrich/e;->a:I

    int-to-float v5, v5

    iget v6, v0, Lrich/e;->d:F

    mul-float/2addr v6, v5

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v0, Lrich/e;->a:I

    .line 4
    iget v5, v0, Lrich/e;->b:I

    iget v0, v0, Lrich/e;->c:I
    :try_end_0
    .catch Lrich/u; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v5, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, v3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v4

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lrich/o;->a(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    throw p2
    :try_end_1
    .catch Lrich/u; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lrich/o;->a(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public a(Lrich/o;)Lrich/k;
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v11, 0x12e

    const/4 v12, 0x0

    const/16 v13, 0x12d

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v3, v8, Lrich/o;->m:Lrich/c$a;

    .line 12
    invoke-virtual {v7, v0, v3}, Lrich/w;->a(Ljava/util/Map;Lrich/c$a;)V

    iget-object v3, v7, Lrich/w;->a:Lrich/c0;

    invoke-interface {v3, v8, v0}, Lrich/c0;->a(Lrich/o;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v14
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Lrich/w;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    .line 13
    :try_start_2
    iget-object v0, v8, Lrich/o;->m:Lrich/c$a;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lrich/k;

    const/16 v16, 0x130

    const/16 v17, 0x0

    const/16 v19, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v20, v3, v9

    move-object v15, v0

    move-object/from16 v18, v5

    invoke-direct/range {v15 .. v21}, Lrich/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :cond_0
    iget-object v1, v0, Lrich/c$a;->g:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v1, Lrich/k;

    const/16 v16, 0x130

    iget-object v3, v0, Lrich/c$a;->a:[B

    iget-object v0, v0, Lrich/c$a;->g:Ljava/util/Map;

    const/16 v19, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v20, v17, v9

    move-object v15, v1

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v15 .. v21}, Lrich/k;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    goto/16 :goto_4

    :cond_1
    if-eq v0, v13, :cond_2

    if-ne v0, v11, :cond_3

    :cond_2
    :try_start_3
    const-string v1, "Location"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    iput-object v1, v8, Lrich/o;->d:Ljava/lang/String;

    .line 16
    :cond_3
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-virtual {v7, v1}, Lrich/w;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_4
    :try_start_5
    new-array v1, v12, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1
    move-object/from16 v22, v1

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    sub-long v2, v1, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v5, v22

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lrich/w;->a(JLrich/o;[BLorg/apache/http/StatusLine;)V

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_5

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_5

    new-instance v1, Lrich/k;

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v20, v2, v9

    move-object v15, v1

    move/from16 v16, v0

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    invoke-direct/range {v15 .. v21}, Lrich/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v1

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v23, v5

    :goto_2
    move-object v2, v14

    move-object/from16 v17, v22

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v17, v2

    move-object v2, v14

    :goto_3
    move-object/from16 v18, v23

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    :goto_4
    move-object v2, v14

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    :goto_5
    if-eqz v2, :cond_d

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v13, :cond_7

    if-ne v1, v11, :cond_6

    goto :goto_6

    :cond_6
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-virtual/range {p1 .. p1}, Lrich/o;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Unexpected response code %d for %s"

    invoke-static {v2, v3}, Lrich/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_7
    :goto_6
    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    iget-object v4, v8, Lrich/o;->c:Ljava/lang/String;

    aput-object v4, v3, v12

    .line 18
    invoke-virtual/range {p1 .. p1}, Lrich/o;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Request at %s has been redirected to %s"

    invoke-static {v2, v3}, Lrich/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    if-eqz v17, :cond_c

    new-instance v0, Lrich/k;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v20, v2, v9

    const/16 v19, 0x0

    move-object v15, v0

    move/from16 v16, v1

    invoke-direct/range {v15 .. v21}, Lrich/k;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v2, 0x191

    if-eq v1, v2, :cond_b

    const/16 v2, 0x193

    if-ne v1, v2, :cond_8

    goto :goto_9

    :cond_8
    if-eq v1, v13, :cond_a

    if-ne v1, v11, :cond_9

    goto :goto_8

    :cond_9
    new-instance v1, Lrich/s;

    invoke-direct {v1, v0}, Lrich/s;-><init>(Lrich/k;)V

    throw v1

    :cond_a
    :goto_8
    new-instance v1, Lrich/n;

    invoke-direct {v1, v0}, Lrich/n;-><init>(Lrich/k;)V

    const-string v0, "redirect"

    goto :goto_a

    :cond_b
    :goto_9
    new-instance v1, Lrich/b;

    invoke-direct {v1, v0}, Lrich/b;-><init>(Lrich/k;)V

    const-string v0, "auth"

    :goto_a
    invoke-static {v0, v8, v1}, Lrich/w;->a(Ljava/lang/String;Lrich/o;Lrich/u;)V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Lrich/j;

    invoke-direct {v1, v0}, Lrich/j;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v1, Lrich/l;

    invoke-direct {v1, v0}, Lrich/l;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad URL "

    invoke-static {v2}, Lrich/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lrich/o;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    new-instance v0, Lrich/t;

    invoke-direct {v0}, Lrich/t;-><init>()V

    const-string v1, "connection"

    goto :goto_b

    :catch_8
    new-instance v0, Lrich/t;

    invoke-direct {v0}, Lrich/t;-><init>()V

    const-string v1, "socket"

    :goto_b
    invoke-static {v1, v8, v0}, Lrich/w;->a(Ljava/lang/String;Lrich/o;Lrich/u;)V

    goto/16 :goto_0
.end method

.method public final a(JLrich/o;[BLorg/apache/http/StatusLine;)V
    .locals 2

    sget-boolean v0, Lrich/w;->c:Z

    if-nez v0, :cond_0

    sget v0, Lrich/w;->d:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    if-eqz p4, :cond_1

    array-length p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    aput-object p2, v0, p1

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    .line 8
    iget-object p2, p3, Lrich/o;->l:Lrich/e;

    .line 9
    iget p2, p2, Lrich/e;->b:I

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {p1, v0}, Lrich/v;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/util/Map;Lrich/c$a;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lrich/c$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "If-None-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v0, p2, Lrich/c$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_2

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {p2}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    const-string v0, "Error occured when calling consumingContent"

    new-instance v1, Lrich/g0;

    iget-object v2, p0, Lrich/w;->b:Lrich/x;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lrich/g0;-><init>(Lrich/x;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lrich/w;->b:Lrich/x;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lrich/x;->a(I)[B

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v1, v3, v2, v5}, Lrich/g0;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lrich/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lrich/w;->b:Lrich/x;

    invoke-virtual {p1, v3}, Lrich/x;->a([B)V

    invoke-virtual {v1}, Lrich/g0;->close()V

    return-object v4

    :cond_1
    :try_start_2
    new-instance v4, Lrich/s;

    invoke-direct {v4}, Lrich/s;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lrich/v;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lrich/w;->b:Lrich/x;

    invoke-virtual {p1, v3}, Lrich/x;->a([B)V

    invoke-virtual {v1}, Lrich/g0;->close()V

    throw v4
.end method
