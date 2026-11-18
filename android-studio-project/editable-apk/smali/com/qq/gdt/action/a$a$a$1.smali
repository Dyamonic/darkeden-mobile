.class Lcom/qq/gdt/action/a$a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/i/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/a$a$a;->a(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/qq/gdt/action/a$a$a;


# direct methods
.method constructor <init>(Lcom/qq/gdt/action/a$a$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    iput p2, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;ILjava/lang/String;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {p1 .. p1}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v6, 0xc8

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/qq/gdt/action/c/a;

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "httpStatus"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errorCode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "errorMsg"

    invoke-virtual {v13, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "requestCgi"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const/16 v0, 0x232e

    invoke-static {v0, v12, v13}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_1

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0}, Lcom/qq/gdt/action/a$a$a;->b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_2
    if-ne v3, v6, :cond_2

    if-lez p2, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v9

    aput-object v2, v0, v8

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->e()Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v0, v7

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    const-string v6, "LogAction failed(errorCode = %d, errorMessage = %s): actionType = %s , actionParams = %s, userActionSetId = %s"

    invoke-static {v6, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    new-array v0, v10, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    iget-object v6, v6, Lcom/qq/gdt/action/a$a$a;->a:Lcom/qq/gdt/action/a$a;

    iget-object v6, v6, Lcom/qq/gdt/action/a$a;->a:Lcom/qq/gdt/action/a;

    invoke-static {v6}, Lcom/qq/gdt/action/a;->a(Lcom/qq/gdt/action/a;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/b;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->e()Lorg/json/JSONObject;

    move-result-object v6

    aput-object v6, v0, v11

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    const-string v6, "LogAction failed(scheduled retry %d milliseconds later): actionType = %s , actionParams = %s, userActionSetId = %s"

    invoke-static {v6, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v12}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v6, "START_APP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0, v9}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Z)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {v4}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v3, v6, :cond_4

    if-lez p2, :cond_4

    iget-object v0, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0, v4, v10}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    goto :goto_4

    :cond_4
    iget v0, v1, Lcom/qq/gdt/action/a$a$a$1;->a:I

    if-eq v0, v11, :cond_5

    iget-object v0, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v0, v4, v11}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qq/gdt/action/c/a;

    iget-object v5, v1, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v5}, Lcom/qq/gdt/action/a$a$a;->c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    new-array v0, v10, [Ljava/lang/Object;

    iget v4, v1, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v11

    aput-object v2, v0, v7

    const-string v2, "Flush actions(status=%d) failed(http status = %d): code = %d, msg = %s"

    invoke-static {v2, v0}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/gdt/action/c/a;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/qq/gdt/action/j/f;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qq/gdt/action/c/a;

    const/16 v6, 0x232d

    iget v7, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    const-string v8, "dbStatus"

    invoke-static {v8, v7}, Lcom/qq/gdt/action/j/n;->a(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v6}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v6}, Lcom/qq/gdt/action/a$a$a;->b(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object v6, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v6, v2, p2}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Lcom/qq/gdt/action/c/a;Z)V

    invoke-static {v2}, Lcom/qq/gdt/action/GDTAction;->isAutoCollectionAction(Lcom/qq/gdt/action/c/a;)Z

    move-result v6

    const/4 v7, 0x3

    const-string v8, "LogAction success: actionType = %s, actionParams = %s, userActionSetId = %s"

    if-eqz v6, :cond_1

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->e()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v8, v6}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v2}, Lcom/qq/gdt/action/c/a;->e()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/e;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v8, v6}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {p2, v0, v4}, Lcom/qq/gdt/action/a$a$a;->a(Lcom/qq/gdt/action/a$a$a;Ljava/util/List;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qq/gdt/action/c/a;

    iget-object v1, p0, Lcom/qq/gdt/action/a$a$a$1;->b:Lcom/qq/gdt/action/a$a$a;

    invoke-static {v1}, Lcom/qq/gdt/action/a$a$a;->c(Lcom/qq/gdt/action/a$a$a;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qq/gdt/action/c/a;->f()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v5

    iget p1, p0, Lcom/qq/gdt/action/a$a$a$1;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v4

    const-string p1, "Flushed %d Actions in status(%d)"

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/v;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
