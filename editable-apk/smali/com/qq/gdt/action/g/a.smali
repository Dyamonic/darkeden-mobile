.class Lcom/qq/gdt/action/g/a;
.super Landroid/os/Handler;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/qq/gdt/action/c/a/a;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/g/a;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/g/a;->d:Ljava/util/Set;

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/g/a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/gdt/action/c/a/a;->a(Landroid/content/Context;)Lcom/qq/gdt/action/c/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/qq/gdt/action/g/a;->e:Lcom/qq/gdt/action/c/a/a;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/g/a;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Lcom/qq/gdt/action/g/a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cleaning old actions."

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/qq/gdt/action/g/a;->e:Lcom/qq/gdt/action/c/a/a;

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/a/a;->b()V

    return-void
.end method

.method private a(I)V
    .locals 11

    iget-object v0, p0, Lcom/qq/gdt/action/g/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/j/p;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Network not available while flush events(status=%d), schedule later."

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v9, 0x0

    iget-object v3, p0, Lcom/qq/gdt/action/g/a;->e:Lcom/qq/gdt/action/c/a/a;

    const-wide/16 v5, 0x32

    move v4, p1

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Lcom/qq/gdt/action/c/a/a;->a(IJJ)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "No more events in status(%d), bravo!"

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qq/gdt/action/g/a/a;

    invoke-virtual {v4}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v5

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v5, p0, Lcom/qq/gdt/action/g/a;->b:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "\u6240\u6709\u7684event \u90fd\u5728\u4e0a\u62a5"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qq/gdt/action/g/a/a;

    iget-object v5, p0, Lcom/qq/gdt/action/g/a;->b:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "Flushing %d events(status=%d)"

    invoke-static {v1, v3}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/qq/gdt/action/g/a;->a(Ljava/util/List;I)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/qq/gdt/action/g/a;->e:Lcom/qq/gdt/action/c/a/a;

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/c/a/a;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onMsgAddEvents \u6ca1\u6709\u63d2\u5165\u6210\u529f,\u5b58\u5230\u5185\u5b58\u4e2d"

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/g/a/a;

    iget-object v1, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "onMsgAddEvents \u8d85\u51fa\u5185\u5b58\u4e2d\u6700\u5927\u6570\u91cf "

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/g/a;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qq/gdt/action/g/a;->b(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/qq/gdt/action/g/a;Ljava/util/List;ILjava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/qq/gdt/action/g/a;->a(Ljava/util/List;ILjava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-instance v1, Lcom/qq/gdt/action/g/a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/qq/gdt/action/g/a$1;-><init>(Lcom/qq/gdt/action/g/a;ILjava/util/List;)V

    invoke-static {p1, v0, v1}, Lcom/qq/gdt/action/i/a;->a(Ljava/util/List;ZLcom/qq/gdt/action/f/a/b;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ILjava/lang/String;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p1}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v6, 0xc8

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/qq/gdt/action/g/a/a;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v13, "httpStatus"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "errorCode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "errorMsg"

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v13, "requestCgi"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_0

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v0, v1, Lcom/qq/gdt/action/g/a;->d:Ljava/util/Set;

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2
    if-ne v3, v6, :cond_1

    if-lez p2, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v10

    aput-object v2, v0, v8

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v7

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    const-string v6, "send Event failed(errorCode = %d, errorMessage = %s): actionType = %s , eventid = %s, eventUnique = %s"

    invoke-static {v6, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/qq/gdt/action/g/a;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v10

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->f()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-virtual {v12}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const-string v6, "send Event failed(scheduled retry %d milliseconds later): actionType = %s , eventid = %s, eventUnique = %s"

    invoke-static {v6, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {v4}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne v3, v6, :cond_3

    if-lez p2, :cond_3

    invoke-direct {v1, v4, v9}, Lcom/qq/gdt/action/g/a;->c(Ljava/util/List;I)V

    move/from16 v5, p5

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    if-eq v5, v11, :cond_4

    invoke-direct {v1, v4, v11}, Lcom/qq/gdt/action/g/a;->c(Ljava/util/List;I)V

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qq/gdt/action/g/a/a;

    iget-object v6, v1, Lcom/qq/gdt/action/g/a;->b:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v11

    aput-object v2, v0, v7

    const-string v2, "Flush events(status=%d) failed(http status = %d): code = %d, msg = %s"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/qq/gdt/action/g/a;->a(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/qq/gdt/action/g/a;->a(I)V

    invoke-direct {p0}, Lcom/qq/gdt/action/g/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEvents ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qq/gdt/action/g/a/a;

    invoke-virtual {v1}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/qq/gdt/action/g/a;->d:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/qq/gdt/action/g/a;->c(Ljava/util/List;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/gdt/action/g/a/a;

    iget-object v3, p0, Lcom/qq/gdt/action/g/a;->b:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/qq/gdt/action/g/a/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Flushed %d events in status(%d)"

    invoke-static {p1, v1}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/qq/gdt/action/g/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/qq/gdt/action/j/p;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "sendInMemEvent Network not available while flush events, schedule later."

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendInMemEvent backUpEventsInMem size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qq/gdt/action/g/a/a;

    iget-object v4, p0, Lcom/qq/gdt/action/g/a;->d:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/qq/gdt/action/g/a;->d:Ljava/util/Set;

    invoke-virtual {v3}, Lcom/qq/gdt/action/g/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/qq/gdt/action/g/a;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x32

    if-le v1, v3, :cond_5

    invoke-static {v0, v3}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/qq/gdt/action/g/a;->a(Ljava/util/List;I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/qq/gdt/action/g/a;->a(Ljava/util/List;I)V

    :cond_6
    return-void
.end method

.method private c(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/g/a/a;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/j/f;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/qq/gdt/action/g/a;->e:Lcom/qq/gdt/action/c/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/qq/gdt/action/c/a/a;->a(Ljava/util/List;I)I

    move-result p1

    if-gez p1, :cond_1

    const-string p1, "Update event status error"

    goto :goto_0

    :cond_1
    const-string p1, "Update event status success"

    :goto_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u521d\u59cb\u5316\u5f00\u59cb"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/qq/gdt/action/g/a;->a()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/qq/gdt/action/g/a;->b()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/qq/gdt/action/g/a;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "\u8f6e\u8be2\uff0c\u95f4\u969430s"

    invoke-static {v0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/qq/gdt/action/g/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/qq/gdt/action/g/e;->a(Landroid/content/Context;)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v2, v0, v1}, Lcom/qq/gdt/action/g/a;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
