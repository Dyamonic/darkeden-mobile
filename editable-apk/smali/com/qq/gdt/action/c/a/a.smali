.class public Lcom/qq/gdt/action/c/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/c/a/a$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static volatile b:Lcom/qq/gdt/action/c/a/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/qq/gdt/action/c/a/a$a;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "create index index_group on events ( status,session_id,action_type ) "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/gdt/action/c/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/qq/gdt/action/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/c/a/a;->c:Landroid/content/Context;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gdt_event_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qq/gdt/action/c/a/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/j/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".db"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionDB full name is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/qq/gdt/action/c/a/a$a;

    iget-object v1, p0, Lcom/qq/gdt/action/c/a/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qq/gdt/action/c/a/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qq/gdt/action/c/a/a;->d:Lcom/qq/gdt/action/c/a/a$a;

    return-void
.end method

.method private a(Lcom/qq/gdt/action/g/a/a;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unique_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "event_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unique_action_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "action_log_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "event_log_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "action_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "event_param"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qq/gdt/action/g/a/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/qq/gdt/action/c/a/a;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/c/a/a;->b:Lcom/qq/gdt/action/c/a/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/c/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/c/a/a;->b:Lcom/qq/gdt/action/c/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/c/a/a;

    invoke-direct {v1, p0}, Lcom/qq/gdt/action/c/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qq/gdt/action/c/a/a;->b:Lcom/qq/gdt/action/c/a/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/qq/gdt/action/c/a/a;->b:Lcom/qq/gdt/action/c/a/a;

    return-object p0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "Cursor close exception"

    invoke-static {v0, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    const-string p2, "Database close exception"

    invoke-static {p2, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/qq/gdt/action/c/a/a;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/qq/gdt/action/c/a/a;->d:Lcom/qq/gdt/action/c/a/a$a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/a/a$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/gdt/action/c/a/a;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v1, "database open exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/gdt/action/c/a/a;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qq/gdt/action/c/a/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()I
    .locals 9

    const-string v0, "( status = 1 ) AND ( ( event_time < ? ))"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Will delete events with query:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", values:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "events"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v0

    :catchall_0
    move-object v3, v1

    :catchall_1
    :try_start_2
    const-string v0, "Exception while delete events out of date"

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v2

    :catchall_2
    move-exception v0

    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
.end method

.method private g()I
    .locals 6

    const-string v0, "( status = 1 ) "

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will delete auto events with query:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", values:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "events"

    invoke-virtual {v3, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v0

    :catchall_0
    move-object v3, v2

    :catchall_1
    :try_start_2
    const-string v0, "Exception while delete events outOfDate"

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v1

    :catchall_2
    move-exception v0

    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
.end method

.method private h()I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "SELECT COUNT(*) FROM events"

    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v0

    :cond_0
    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v0

    :catchall_0
    move-exception v4

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v1

    :goto_0
    :try_start_2
    const-string v5, "Exception while count all events in db"

    invoke-static {v5, v4}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v1, v3, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    return v0

    :catchall_2
    move-exception v0

    invoke-direct {p0, v1, v3, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;I)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qq/gdt/action/g/a/a;

    invoke-virtual {v6}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    const-string v6, "?"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v6, "?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string p1, " ) "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, v2, v1, v0}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_3
    :try_start_3
    const-string p2, "Database update events status exception."

    invoke-static {p2, p1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v2, v1, v0}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 p1, -0x3

    :goto_4
    monitor-exit p0

    return p1

    :goto_5
    :try_start_5
    invoke-direct {p0, v2, v1, v0}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "select status, count(*) from events group by status"

    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    new-instance v6, Lcom/qq/gdt/action/g/a/b;

    invoke-direct {v6, v4, v5}, Lcom/qq/gdt/action/g/a/b;-><init>(II)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3, v1, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v3, v1

    :goto_1
    :try_start_2
    const-string v5, "countGroupByStatus failed action exception"

    invoke-static {v5, v4}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v1, v3, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    :goto_3
    invoke-direct {p0, v1, v3, v2}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
.end method

.method public a(IJJ)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "id"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM events WHERE status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ORDER BY "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ASC LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_1

    :goto_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v8, "event_id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v8, "unique_event_id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v8, "event_time"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v8, "action_type"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v8, "unique_action_id"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v8, "action_time"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    const-string v8, "event_param"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v4, "session_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v4, "action_log_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v4, "event_log_id"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-static {v8}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v21, 0x0

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v4

    :goto_1
    new-instance v4, Lcom/qq/gdt/action/g/a/a;

    move-object v8, v4

    move/from16 v22, p1

    invoke-direct/range {v8 .. v26}, Lcom/qq/gdt/action/g/a/a;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;IJJ)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :cond_1
    invoke-direct {v1, v5, v6, v3}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    :goto_2
    const/4 v6, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x0

    :goto_4
    :try_start_3
    const-string v5, "Find events by status exception"

    invoke-static {v5, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-direct {v1, v4, v6, v3}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_5
    return-object v2

    :catchall_3
    move-exception v0

    :goto_6
    invoke-direct {v1, v4, v6, v3}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qq/gdt/action/g/a/a;

    invoke-direct {p0, v5}, Lcom/qq/gdt/action/c/a/a;->a(Lcom/qq/gdt/action/g/a/a;)Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "events"

    invoke-virtual {v3, v7, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v6, v7}, Lcom/qq/gdt/action/g/a/a;->a(J)V

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    move v0, v4

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_5

    :catch_1
    move-exception v4

    move-object v3, v2

    :goto_2
    :try_start_2
    const-string v5, "Database add events exception."

    invoke-static {v5, v4}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    :goto_3
    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/g/a/a;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/qq/gdt/action/g/a/a;->a(J)V

    goto :goto_4

    :cond_3
    return v0

    :goto_5
    invoke-direct {p0, v3, v2, v1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Z)V

    throw p1
.end method

.method public b()V
    .locals 7

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->f()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success cleaned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out of date events."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->h()I

    move-result v1

    :try_start_0
    invoke-virtual {p0}, Lcom/qq/gdt/action/c/a/a;->a()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "total"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qq/gdt/action/g/a/b;

    invoke-virtual {v5}, Lcom/qq/gdt/action/g/a/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/qq/gdt/action/g/a/b;->b()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/16 v3, 0xdad

    invoke-static {v3, v4}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count all events in db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x2710

    if-le v1, v3, :cond_1

    invoke-direct {p0}, Lcom/qq/gdt/action/c/a/a;->g()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success deep-clean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
