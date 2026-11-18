.class public Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:J

.field public static final f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;


# instance fields
.field public volatile a:Lcom/tencent/turingfd/sdk/ams/ad/private;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a1:[B

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d:Ljava/lang/String;

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->e:J

    .line 11
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->f:Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 9

    .line 41
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->g1:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "a_f_ok_c"

    .line 44
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "a_f_ok_s"

    .line 46
    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, ","

    if-nez v3, :cond_2

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v7, v0, v6

    .line 52
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 53
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 59
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;->a:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;

    .line 61
    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Loquat;->a()Z

    .line 62
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Triangulum;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v4, v1, :cond_4

    aget-object v3, v0, v4

    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 67
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 83
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b()Lcom/tencent/turingfd/sdk/ams/ad/private;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 30
    iget-object v1, v1, Lcom/tencent/turingfd/sdk/ams/ad/private;->g:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Lcom/tencent/turingfd/sdk/ams/ad/private;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Lcom/tencent/turingfd/sdk/ams/ad/Draco;

    const/16 v0, 0x80

    .line 3
    invoke-direct {p2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;-><init>(I)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/private;->a(Lcom/tencent/turingfd/sdk/ams/ad/Draco;)V

    .line 5
    invoke-virtual {p2}, Lcom/tencent/turingfd/sdk/ams/ad/Draco;->a()[B

    move-result-object p2

    const-string v0, "2"

    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p2}, Lcom/tencent/turingfd/sdk/ams/ad/native;->a([B)[B

    move-result-object p2

    .line 8
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/static;->a()[B

    move-result-object v1

    .line 9
    invoke-static {p2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/static;->b([B[B)[B

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/lang/String;[BZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    new-instance p2, Ljava/io/File;

    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 24
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    .line 25
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 26
    throw p2

    .line 27
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    .line 28
    iget-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 40
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    :catch_0
    return p2
.end method

.method public b()Lcom/tencent/turingfd/sdk/ams/ad/private;
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :cond_1
    :try_start_3
    const-string v1, "2"

    .line 54
    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;Z)Lcom/tencent/turingfd/sdk/ams/ad/private;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "1"

    .line 59
    invoke-virtual {p0, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b(Ljava/lang/String;Z)Lcom/tencent/turingfd/sdk/ams/ad/private;

    move-result-object v1

    .line 60
    :goto_0
    iput-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    .line 61
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a:Lcom/tencent/turingfd/sdk/ams/ad/private;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 66
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 69
    throw v0
.end method

.method public final b(Ljava/lang/String;Z)Lcom/tencent/turingfd/sdk/ams/ad/private;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-static {p1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/strictfp;->a(Ljava/lang/String;Z)[B

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 21
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/static;->a()[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/turingfd/sdk/ams/ad/static;->a([B[B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/turingfd/sdk/ams/ad/native;->b([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 22
    array-length p2, p1

    if-nez p2, :cond_2

    :cond_1
    return-object v1

    .line 27
    :cond_2
    new-instance p2, Lcom/tencent/turingfd/sdk/ams/ad/private;

    invoke-direct {p2}, Lcom/tencent/turingfd/sdk/ams/ad/private;-><init>()V

    .line 28
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;

    invoke-direct {v0, p1}, Lcom/tencent/turingfd/sdk/ams/ad/Dorado;-><init>([B)V

    invoke-virtual {p2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/private;->a(Lcom/tencent/turingfd/sdk/ams/ad/Dorado;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-string v0, "turingfd"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 7
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "12"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, ""

    return-object p1

    .line 15
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/tencent/turingfd/sdk/ams/ad/Carambola;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ad"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public c()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/finally;->h1:[I

    invoke-static {v0}, Lcom/tencent/turingfd/sdk/ams/ad/finally;->a([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "p_l_h_l"

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, ","

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/turingfd/sdk/ams/ad/Kiwifruit;->b()Lcom/tencent/turingfd/sdk/ams/ad/private;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
