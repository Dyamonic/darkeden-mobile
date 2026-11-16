.class public Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/tencent/turingfd/sdk/ams/ad/Bryony;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bryony;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->b:Ljava/util/Map;

    .line 3
    iput-boolean p2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->c:Z

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Ljava/util/TreeMap;

    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do$do;

    invoke-direct {v0, p0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;)V

    invoke-direct {p2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 11
    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 21
    iput-object p1, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/FutureTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/tencent/turingfd/sdk/ams/ad/Bryony;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->d:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    :cond_2
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, p0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 16
    sget-object v3, Lcom/tencent/turingfd/sdk/ams/ad/package;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 17
    iget-object v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/tencent/turingfd/sdk/ams/ad/case;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tencent/turingfd/sdk/ams/ad/case;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 3
    new-instance v0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;

    invoke-direct {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;-><init>()V

    .line 4
    :try_start_1
    sget-object v2, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->g:Lcom/tencent/turingfd/sdk/ams/ad/Lemon;

    .line 5
    invoke-virtual {v2, v1}, Lcom/tencent/turingfd/sdk/ams/ad/Lemon;->a(Landroid/content/Context;)J

    const/4 v2, 0x1

    .line 6
    iput v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->b:I

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->e:J

    .line 8
    iget-object v2, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->b:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry$do;->c:Z

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;Ljava/util/Map;Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;Z)[B

    move-result-object v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->f:J

    .line 10
    array-length v3, v2

    iput v3, v0, Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;->c:I

    .line 11
    invoke-static {v1, v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;[BLcom/tencent/turingfd/sdk/ams/ad/Betelnut;)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    move-result-object v2

    .line 14
    invoke-static {v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Bryony;)V

    .line 17
    invoke-static {v1, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;Lcom/tencent/turingfd/sdk/ams/ad/Betelnut;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :catchall_0
    new-instance v2, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    const/16 v0, -0x271f

    invoke-direct {v2, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    :goto_0
    return-object v2

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
