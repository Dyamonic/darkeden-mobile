.class public final Lcom/bytedance/bdtracker/n0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static volatile b:Lcom/bytedance/bdtracker/n0;


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/bdtracker/n0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v0, Lcom/bytedance/bdtracker/n0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/n0;->b:Lcom/bytedance/bdtracker/n0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/n0;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/n0;-><init>()V

    sput-object v1, Lcom/bytedance/bdtracker/n0;->b:Lcom/bytedance/bdtracker/n0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/bytedance/bdtracker/n0$a;

    invoke-direct {v2, p0}, Lcom/bytedance/bdtracker/n0$a;-><init>(Lcom/bytedance/bdtracker/n0;)V

    invoke-static {v2}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$e;)Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/o0;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/bdtracker/o0;-><init>(Lcom/bytedance/bdtracker/n0;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$d;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/n0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void

    .line 3
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "$is_backstage"

    const/4 v6, 0x0

    .line 4
    :try_start_1
    sget-boolean v7, Lcom/bytedance/bdtracker/v;->b:Z

    xor-int/lit8 v7, v7, 0x1

    .line 5
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "$event_time"

    invoke-virtual {v3, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "$crash_thread"

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "$crash_process"

    :try_start_3
    invoke-static {}, Lcom/bytedance/bdtracker/k0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "$detailed_stack"

    .line 6
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, p2

    :goto_1
    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    move v9, v6

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    const-string v11, "\n\tat "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    const-string v5, "ExceptionHandler"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Collect crash params failed"

    invoke-interface {v1, v5, v7, v0, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_3
    new-instance v0, Lcom/bytedance/bdtracker/e4;

    const-string v1, "$crash"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/bdtracker/e4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v1, Lcom/bytedance/bdtracker/n0$b;

    invoke-direct {v1, p0, p2, v2, v0}, Lcom/bytedance/bdtracker/n0$b;-><init>(Lcom/bytedance/bdtracker/n0;Ljava/lang/Throwable;Lcom/bytedance/bdtracker/b$e;Lcom/bytedance/bdtracker/e4;)V

    invoke-static {v1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$d;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/bdtracker/n0;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :goto_4
    return-void
.end method
