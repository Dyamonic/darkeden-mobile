.class public Lcom/qq/gdt/action/f/b/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/qq/gdt/action/f/b/d;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/f/b/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/e;->a:Lcom/qq/gdt/action/f/b/d;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lcom/qq/gdt/action/f/b/j;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    new-instance v6, Lcom/qq/gdt/action/f/b/j;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-static {p0}, Lcom/qq/gdt/action/f/b/e;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/qq/gdt/action/f/b/j;-><init>(Ljava/lang/String;JLjava/io/BufferedInputStream;Ljava/net/HttpURLConnection;)V

    return-object v6
.end method

.method private static a(Ljava/net/HttpURLConnection;J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_0

    :cond_0
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/qq/gdt/action/f/b/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/h;->a()Lcom/qq/gdt/action/f/b/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/h;->a()Lcom/qq/gdt/action/f/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/h;->a()Lcom/qq/gdt/action/f/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/f/b/f;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/h;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    invoke-static {p0, v2, v3}, Lcom/qq/gdt/action/f/b/e;->a(Ljava/net/HttpURLConnection;J)V

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Content-Length"

    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/h;->a(Ljava/io/BufferedOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v1}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/qq/gdt/action/f/b/g;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/qq/gdt/action/f/b/g;->f()Lcom/qq/gdt/action/f/b/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/f/b/g;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "POST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/e;->a:Lcom/qq/gdt/action/f/b/d;

    iget v1, v1, Lcom/qq/gdt/action/f/b/d;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v1, p0, Lcom/qq/gdt/action/f/b/e;->a:Lcom/qq/gdt/action/f/b/d;

    iget v1, v1, Lcom/qq/gdt/action/f/b/d;->a:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->c()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->b()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->d()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f/b/e;->a(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    :cond_2
    invoke-static {p1}, Lcom/qq/gdt/action/f/b/e;->b(Lcom/qq/gdt/action/f/b/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/g;->f()Lcom/qq/gdt/action/f/b/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/gdt/action/f/b/e;->a(Ljava/net/HttpURLConnection;Lcom/qq/gdt/action/f/b/h;)V

    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/e;->a(Ljava/net/HttpURLConnection;)Lcom/qq/gdt/action/f/b/j;

    move-result-object v0

    new-instance v4, Lcom/qq/gdt/action/f/b/i$a;

    invoke-direct {v4}, Lcom/qq/gdt/action/f/b/i$a;-><init>()V

    invoke-virtual {v4, p1}, Lcom/qq/gdt/action/f/b/i$a;->a(Lcom/qq/gdt/action/f/b/g;)Lcom/qq/gdt/action/f/b/i$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/qq/gdt/action/f/b/i$a;->a(I)Lcom/qq/gdt/action/f/b/i$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/qq/gdt/action/f/b/i$a;->a(Ljava/lang/String;)Lcom/qq/gdt/action/f/b/i$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/qq/gdt/action/f/b/i$a;->a(Ljava/util/Map;)Lcom/qq/gdt/action/f/b/i$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/qq/gdt/action/f/b/i$a;->a(Lcom/qq/gdt/action/f/b/j;)Lcom/qq/gdt/action/f/b/i$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/f/b/i$a;->a()Lcom/qq/gdt/action/f/b/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/e;->a:Lcom/qq/gdt/action/f/b/d;

    iget-object v0, v0, Lcom/qq/gdt/action/f/b/d;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
