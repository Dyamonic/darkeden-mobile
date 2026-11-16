.class public Lrich/u0;
.super Lrich/k2$a;
.source ""


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lrich/l0;


# direct methods
.method public constructor <init>(Lrich/t0;Ljava/lang/String;Landroid/content/Context;Lrich/l0;)V
    .locals 0

    iput-object p2, p0, Lrich/u0;->b:Ljava/lang/String;

    iput-object p3, p0, Lrich/u0;->c:Landroid/content/Context;

    iput-object p4, p0, Lrich/u0;->d:Lrich/l0;

    invoke-direct {p0}, Lrich/k2$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 14

    const-string v0, ""

    iget-object v1, p0, Lrich/u0;->b:Ljava/lang/String;

    const-string v2, "200023"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1f40

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    new-instance v1, Lrich/a2;

    invoke-direct {v1}, Lrich/a2;-><init>()V

    iget-object v2, p0, Lrich/u0;->c:Landroid/content/Context;

    iget-object v3, p0, Lrich/u0;->b:Ljava/lang/String;

    iget-object v4, p0, Lrich/u0;->d:Lrich/l0;

    .line 1
    :try_start_0
    invoke-virtual {v4}, Lrich/l0;->a()Lrich/x1;

    move-result-object v5

    invoke-static {v2}, Lrich/b0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2
    iput-object v3, v5, Lrich/x1;->v:Ljava/lang/String;

    const-string v3, "loginMethod"

    .line 3
    invoke-virtual {v4, v3, v0}, Lrich/l0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    iput-object v3, v5, Lrich/x1;->i:Ljava/lang/String;

    const-string v3, "isCacheScrip"

    const/4 v7, 0x0

    .line 5
    invoke-virtual {v4, v3, v7}, Lrich/l0;->b(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const-string v3, "scrip"

    goto :goto_0

    :cond_1
    const-string v3, "pgw"

    .line 6
    :goto_0
    :try_start_1
    iput-object v3, v5, Lrich/x1;->m:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Lrich/b0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iput-object v2, v5, Lrich/x1;->c:Ljava/lang/String;

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v6

    .line 10
    :goto_1
    iput-object v0, v5, Lrich/x1;->d:Ljava/lang/String;

    .line 11
    invoke-static {v5, v4}, Lrich/a2;->a(Lrich/x1;Lrich/l0;)V

    const/4 v0, 0x0

    iget-object v2, v5, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v5, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    array-length v10, v9

    move v11, v7

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, v9, v11

    const-string v13, "\n"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    const-string v9, "message"

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "stack"

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    iget-object v2, v5, Lrich/x1;->A:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v5, v0}, Lrich/x1;->a(Lorg/json/JSONArray;)V

    :cond_6
    const-string v0, "SendLog"

    const-string v2, "\u767b\u5f55\u65e5\u5fd7"

    invoke-static {v0, v2}, Lrich/c2;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lrich/x1;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    iput-object v4, v1, Lrich/a2;->a:Lrich/l0;

    .line 13
    invoke-static {}, Lrich/m1;->a()Lrich/m1;

    move-result-object v2

    iget-object v3, v1, Lrich/a2;->a:Lrich/l0;

    new-instance v4, Lrich/z1;

    invoke-direct {v4, v1}, Lrich/z1;-><init>(Lrich/a2;)V

    invoke-virtual {v2, v0, v3, v4}, Lrich/m1;->a(Lorg/json/JSONObject;Lrich/l0;Lrich/p1;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
