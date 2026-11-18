.class public Lcom/qq/gdt/action/f/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Ljava/io/BufferedInputStream;

.field private d:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/io/BufferedInputStream;Ljava/net/HttpURLConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/f/b/j;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/qq/gdt/action/f/b/j;->b:J

    iput-object p4, p0, Lcom/qq/gdt/action/f/b/j;->c:Ljava/io/BufferedInputStream;

    iput-object p5, p0, Lcom/qq/gdt/action/f/b/j;->d:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/qq/gdt/action/f/b/j;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/qq/gdt/action/f/b/j;->a()[B

    move-result-object v1

    sget-object v2, Lcom/qq/gdt/action/f/b/k;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/qq/gdt/action/f/b/j;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/qq/gdt/action/f/b/j;->c:Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Lcom/qq/gdt/action/f/b/k;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/j;->c:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/qq/gdt/action/f/b/k;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/qq/gdt/action/f/b/j;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/gdt/action/f/b/j;->d:Ljava/net/HttpURLConnection;

    return-void
.end method
