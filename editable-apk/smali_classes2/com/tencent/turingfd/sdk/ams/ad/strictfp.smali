.class public Lcom/tencent/turingfd/sdk/ams/ad/strictfp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 5

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 188
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return v1

    .line 195
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 198
    invoke-static {v4}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    return v1
.end method

.method public static a(Ljava/lang/String;[BZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;

    .line 6
    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;-><init>()V

    .line 7
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    move-object v2, v0

    .line 16
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 17
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p2, :cond_2

    .line 19
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    :cond_2
    const-wide/16 v4, 0x0

    .line 21
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 23
    array-length p1, p1

    int-to-long p1, p1

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 p1, 0x1

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 30
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 34
    :catch_0
    :cond_3
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 35
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_5

    .line 37
    sget-object p2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter p2

    .line 38
    :try_start_6
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 39
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 40
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_4
    monitor-exit p2

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_5
    :goto_1
    return p1

    :catchall_2
    move-object p1, v0

    move-object v0, v3

    goto :goto_2

    :catchall_3
    move-object p1, v0

    :goto_2
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_3

    :catchall_4
    move-object p1, v0

    move-object v1, p1

    :goto_3
    if-eqz v0, :cond_6

    .line 43
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 45
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 49
    :catch_1
    :cond_6
    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 50
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_8

    .line 52
    sget-object p1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter p1

    .line 53
    :try_start_8
    iget-object p2, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 54
    iget-object p2, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    if-nez p2, :cond_7

    .line 55
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_7
    monitor-exit p1

    goto :goto_4

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p0

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 169
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-static {v1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 171
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :goto_0
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 178
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    .line 179
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    .line 181
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 182
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 183
    throw v0
.end method

.method public static a(Ljava/lang/String;I)[B
    .locals 6

    .line 126
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 133
    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    new-array v0, p1, [B

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    sub-int v4, p1, v3

    .line 137
    invoke-virtual {p0, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    add-int/2addr v3, v4

    if-lt v3, p1, :cond_1

    :cond_2
    if-nez v3, :cond_3

    .line 157
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_3
    if-ge v3, p1, :cond_4

    .line 158
    :try_start_2
    new-array p1, v3, [B

    .line 159
    invoke-static {v0, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, p1

    .line 166
    :cond_4
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-object p0, v1

    :catchall_1
    invoke-static {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;Z)[B
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 58
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 59
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;

    if-nez v2, :cond_0

    .line 61
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;

    .line 62
    invoke-direct {v2}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;-><init>()V

    .line 63
    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    iget-object v3, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    move-object v2, v0

    .line 72
    :goto_0
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz p1, :cond_2

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x1

    move-object v4, v3

    .line 75
    :try_start_4
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-object p1, v0

    goto :goto_3

    :cond_2
    move-object p1, v0

    .line 77
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v6, v4

    int-to-long v7, v6

    cmp-long v4, v7, v4

    if-nez v4, :cond_6

    .line 82
    new-array v4, v6, [B

    .line 83
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 94
    :catch_0
    :cond_3
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 95
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_5

    .line 97
    sget-object p1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter p1

    .line 98
    :try_start_7
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 99
    iget-object v0, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 100
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4
    monitor-exit p1

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    :cond_5
    :goto_2
    return-object v4

    .line 103
    :cond_6
    :try_start_8
    new-instance v4, Ljava/io/IOException;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_3
    move-object p1, v0

    move-object v3, p1

    goto :goto_3

    :catchall_4
    move-object p1, v0

    move-object v1, p1

    move-object v3, v1

    :catchall_5
    :goto_3
    if-eqz p1, :cond_7

    .line 111
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 113
    :try_start_9
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 117
    :catch_1
    :cond_7
    invoke-static {v3}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    .line 118
    invoke-static {v1}, Lcom/tencent/turingfd/sdk/ams/ad/Auriga;->a(Ljava/io/Closeable;)V

    if-eqz v2, :cond_9

    .line 120
    sget-object p1, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a:Ljava/util/HashMap;

    monitor-enter p1

    .line 121
    :try_start_a
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 122
    iget-object v1, v2, Lcom/tencent/turingfd/sdk/ams/ad/strictfp$do;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_8

    .line 123
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_8
    monitor-exit p1

    goto :goto_4

    :catchall_6
    move-exception p0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw p0

    :cond_9
    :goto_4
    return-object v0
.end method
