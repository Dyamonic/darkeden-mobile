.class Lcom/qq/gdt/action/GDTAction$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/multioprocess/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/gdt/action/GDTAction$1;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/qq/gdt/action/GDTAction$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/gdt/action/GDTAction$1;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/multioprocess/b;)V
    .locals 11

    const-string v0, "errorMsg"

    const-string v1, "errorCode"

    const-string v2, "unexpected json exception"

    const/4 v3, -0x1

    const/16 v4, 0x138c

    :try_start_0
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/gdt/action/e;->f()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qq/gdt/action/multioprocess/a;->c()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "GDTAction\u672a\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528GDTAction\u7684init\u65b9\u6cd5\u6210\u529f\u521d\u59cb\u5316SDK\u540e\uff0c\u518d\u8c03\u7528\u5176\u4ed6\u6570\u636e\u4e0a\u62a5\u65b9\u6cd5\uff01"

    const/16 v7, 0xfa3

    const/4 v8, 0x0

    if-nez v5, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/qq/gdt/action/GDTAction$1;->a:Lorg/json/JSONObject;

    invoke-static {v7, p1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const-string p1, "tryfillUserInfo fill switch close"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logAction remoteUserMessage  = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v5, v9}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v5

    iget-object v9, p0, Lcom/qq/gdt/action/GDTAction$1;->a:Lorg/json/JSONObject;

    const-string v10, "auto_init_by_logaction"

    invoke-virtual {v5, p1, v9, v10}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/multioprocess/b;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qq/gdt/action/e;->f()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/qq/gdt/action/GDTAction$1;->a:Lorg/json/JSONObject;

    invoke-static {v7, p1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    const-string p1, "logAction remote fill failed"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, v5}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/qq/gdt/action/j/o;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/qq/gdt/action/GDTAction$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/gdt/action/GDTAction$1;->c:Lorg/json/JSONObject;

    invoke-static {p1, v5}, Lcom/qq/gdt/action/GDTAction;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v5, "logAction fill exception"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v5, v6}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    invoke-static {v2, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/qq/gdt/action/GDTAction$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/gdt/action/GDTAction$1;->c:Lorg/json/JSONObject;

    invoke-static {p1, v5}, Lcom/qq/gdt/action/GDTAction;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-string v5, "Log action exception"

    invoke-static {v5, p1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {v2, p1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
