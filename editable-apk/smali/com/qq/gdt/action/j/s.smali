.class public Lcom/qq/gdt/action/j/s;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gdtDir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gdt_user_message_v5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/j/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/qq/gdt/action/multioprocess/b;
    .locals 8

    const-class v0, Lcom/qq/gdt/action/j/s;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "UserMessage get() no fill\uff0cno get info"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    const-string v1, "SerializableUtils get userinfo"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xd4a

    invoke-static {v1}, Lcom/qq/gdt/action/h/a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/qq/gdt/action/j/s;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qq/gdt/action/multioprocess/b;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v2, 0xd4b

    :try_start_4
    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SerializableUtils get close ex = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_0

    :catchall_3
    move-exception v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SerializableUtils get ex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0xd4c

    invoke-static {v2}, Lcom/qq/gdt/action/h/a;->a(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v1

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SerializableUtils get close ex = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :goto_1
    monitor-exit v0

    return-object v4

    :catchall_5
    move-exception v2

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_2

    :catchall_6
    move-exception v1

    :try_start_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SerializableUtils get close ex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 3

    const-class v0, Lcom/qq/gdt/action/j/s;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "UserMessage save() \u672a\u5f00\u542f\u8865\u9f50\u4fe1\u606f\uff0c\u4e0d\u8fdb\u884c\u6587\u4ef6\u4fdd\u5b58\u4fe1\u606f"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/j/j;->a()Lcom/qq/gdt/action/j/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/j/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/qq/gdt/action/j/s$1;

    invoke-direct {v2, p0}, Lcom/qq/gdt/action/j/s$1;-><init>(Lcom/qq/gdt/action/multioprocess/b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/qq/gdt/action/multioprocess/c;)V
    .locals 3

    const-class v0, Lcom/qq/gdt/action/j/s;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UserMessage getAsync() no fill\uff0cno get info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/qq/gdt/action/multioprocess/c;->a(Lcom/qq/gdt/action/multioprocess/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/qq/gdt/action/j/j;->a()Lcom/qq/gdt/action/j/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/j/j;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/qq/gdt/action/j/s$2;

    invoke-direct {v2, p0}, Lcom/qq/gdt/action/j/s$2;-><init>(Lcom/qq/gdt/action/multioprocess/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/j/s;->a:Ljava/lang/String;

    return-object v0
.end method
