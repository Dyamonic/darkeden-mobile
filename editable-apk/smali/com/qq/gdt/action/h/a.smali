.class public Lcom/qq/gdt/action/h/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method

.method public static a(ILcom/qq/gdt/action/c/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method

.method public static a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method

.method public static a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 2

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/qq/gdt/action/multioprocess/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    :cond_1
    invoke-static {v0, p2}, Lcom/qq/gdt/action/h/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p3

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendEvent userMessage , ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3, v0}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/qq/gdt/action/g/c;->a()Lcom/qq/gdt/action/g/c;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Lcom/qq/gdt/action/g/c;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendEvent id, jsonObject e = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static a(ILcom/qq/gdt/action/multioprocess/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method

.method public static a(ILorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method

.method public static a(ILorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;Lcom/qq/gdt/action/multioprocess/b;)V

    return-void
.end method
