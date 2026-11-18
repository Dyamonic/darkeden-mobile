.class public Lcom/qq/gdt/action/j/x;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/qq/gdt/action/j/h;->d(Landroid/content/Context;)Lcom/qq/gdt/action/e/d$b;

    move-result-object p1

    const-string v0, "taid"

    iget-object v1, p1, Lcom/qq/gdt/action/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "taid_standard"

    iget-object v1, p1, Lcom/qq/gdt/action/e/d$b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "taid_ticket_standard"

    iget-object v1, p1, Lcom/qq/gdt/action/e/d$b;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "m10"

    iget-object v1, p1, Lcom/qq/gdt/action/e/d$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "m10_standard"

    iget-object v1, p1, Lcom/qq/gdt/action/e/d$b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "m10Error"

    iget p1, p1, Lcom/qq/gdt/action/e/d$b;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "appendTuringDID err"

    invoke-static {p0, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
