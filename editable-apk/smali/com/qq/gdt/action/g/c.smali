.class public Lcom/qq/gdt/action/g/c;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/qq/gdt/action/g/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qq/gdt/action/g/c;
    .locals 2

    sget-object v0, Lcom/qq/gdt/action/g/c;->a:Lcom/qq/gdt/action/g/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/qq/gdt/action/g/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/qq/gdt/action/g/c;->a:Lcom/qq/gdt/action/g/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/qq/gdt/action/g/c;

    invoke-direct {v1}, Lcom/qq/gdt/action/g/c;-><init>()V

    sput-object v1, Lcom/qq/gdt/action/g/c;->a:Lcom/qq/gdt/action/g/c;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/qq/gdt/action/g/c;->a:Lcom/qq/gdt/action/g/c;

    return-object v0
.end method

.method private b()Z
    .locals 3

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "event sendToNetwork \u4e0a\u4e0b\u6587 \u672a\u51c6\u5907\u597d\uff01\uff01\uff01\uff01 "

    invoke-static {v2, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v0
.end method


# virtual methods
.method public a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V
    .locals 24

    move/from16 v0, p1

    const-string v1, "RecorderWrapper event e "

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/qq/gdt/action/c/a;->b()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/qq/gdt/action/c/a;->d()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v2

    move-object v15, v4

    move-wide/from16 v20, v5

    move-wide/from16 v17, v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    move-wide/from16 v17, v2

    move-wide/from16 v20, v17

    move-object v15, v4

    move-object/from16 v16, v15

    :goto_0
    :try_start_1
    invoke-static {v15, v0}, Lcom/qq/gdt/action/g/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/qq/gdt/action/g/a/a;

    int-to-long v10, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->n()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->p()J

    move-result-wide v22

    move-object v9, v2

    move-object/from16 v19, p3

    invoke-direct/range {v9 .. v23}, Lcom/qq/gdt/action/g/a/a;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;JJ)V

    invoke-direct/range {p0 .. p0}, Lcom/qq/gdt/action/g/c;->b()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/g/b;->a()Lcom/qq/gdt/action/g/b;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/qq/gdt/action/g/a/a;

    aput-object v2, v4, v3

    invoke-virtual {v0, v4}, Lcom/qq/gdt/action/g/b;->a([Lcom/qq/gdt/action/g/a/a;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcom/qq/gdt/action/i/a;->a(Lcom/qq/gdt/action/g/a/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event\u4e0d\u843dDB\u76f4\u63a5\u53d1\u9001\uff0ceventId:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/qq/gdt/action/g/a/a;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", eventLogId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/qq/gdt/action/g/a/a;->k()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v1, v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
