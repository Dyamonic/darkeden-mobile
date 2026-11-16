.class final Lcom/qq/gdt/action/e/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/e/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/gdt/action/e/h;->b:Ljava/lang/String;

    return-void
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lcom/qq/gdt/action/e/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qq/gdt/action/e/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/qq/gdt/action/e/h;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/qq/gdt/action/e/h;->d:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    int-to-long v5, p1

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    iget-object p1, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    :cond_2
    if-gtz p1, :cond_3

    return-object v1

    :cond_3
    new-array v0, p1, [B

    iget-object v3, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v3, v0, v2, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-ne v3, p1, :cond_4

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v2, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :cond_4
    return-object v1

    :catchall_0
    move-exception p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "read"

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method public a()Z
    .locals 5

    invoke-direct {p0}, Lcom/qq/gdt/action/e/h;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/qq/gdt/action/e/h;->d:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/qq/gdt/action/e/h;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/qq/gdt/action/e/h;->b:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/gdt/action/e/h;->d:Ljava/nio/channels/FileLock;

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/qq/gdt/action/e/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_3
    return v0

    :catchall_0
    move-exception v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "open"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/qq/gdt/action/e/h;->b()V

    :cond_4
    :goto_0
    return v1
.end method

.method public b()V
    .locals 6

    const-string v0, "close"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/qq/gdt/action/e/h;->d:Ljava/nio/channels/FileLock;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    iput-object v1, p0, Lcom/qq/gdt/action/e/h;->d:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-static {v0, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    iput-object v1, p0, Lcom/qq/gdt/action/e/h;->c:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
