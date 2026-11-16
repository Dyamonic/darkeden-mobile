.class public Lcom/qq/gdt/action/GDTAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/GDTAction$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qq/gdt/action/GDTAction;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/qq/gdt/action/d;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/qq/gdt/action/c/a;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qq/gdt/action/e;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :try_start_0
    const-string v0, "currentInitSuccess"

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->f()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init \u662f\u5426\u6210\u529f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/j/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/16 v0, 0xfa2

    invoke-static {v0, p0, p1}, Lcom/qq/gdt/action/h/a;->a(ILcom/qq/gdt/action/c/a;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/c/a;)V

    return-void
.end method

.method public static getChannelID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/qq/gdt/action/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClickID(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/qq/gdt/action/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    sget-object v4, Lcom/qq/gdt/action/ChannelType;->CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;)V
    .locals 7

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    sget-object v4, Lcom/qq/gdt/action/ChannelType;->CHANNEL_TENCENT:Lcom/qq/gdt/action/ChannelType;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/qq/gdt/action/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/ChannelType;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static isAutoCollectionAction(Lcom/qq/gdt/action/c/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/qq/gdt/action/c/a;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAUSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RESUME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TICKET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ENTER_BACKGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ENTER_FOREGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAutoCollectionAction(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PAUSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RESUME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TICKET"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ENTER_BACKGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ENTER_FOREGROUND"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static logAction(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static logAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->c()V

    invoke-static {p0}, Lcom/qq/gdt/action/GDTAction;->isAutoCollectionAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->b()Z

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "actionTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-static {p0}, Lcom/qq/gdt/action/j/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x1389

    invoke-static {p0, v0}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/qq/gdt/action/j/b;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p0, 0x138b

    invoke-static {p0, v0}, Lcom/qq/gdt/action/h/a;->a(ILorg/json/JSONObject;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/e;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/j/q;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\u4e0a\u62a5\u6570\u636e\u524d\u5efa\u8bae\u5728App\u4e2d\u5148\u7533\u8bf7\u83b7\u53d6\u52a8\u6001\u6743\u9650\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/j/o;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/qq/gdt/action/multioprocess/a;->a()Lcom/qq/gdt/action/multioprocess/a;

    move-result-object v1

    new-instance v2, Lcom/qq/gdt/action/GDTAction$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/qq/gdt/action/GDTAction$1;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/qq/gdt/action/multioprocess/a;->a(Lcom/qq/gdt/action/multioprocess/c;)V

    return-void
.end method

.method public static setAnidEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qq/gdt/action/e;->a(Z)V

    return-void
.end method

.method public static setPrivateController(Lcom/qq/gdt/action/PrivateController;)V
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qq/gdt/action/e;->a(Lcom/qq/gdt/action/PrivateController;)V

    return-void
.end method

.method public static setUserUniqueId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qq/gdt/action/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static setYlhExt(Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qq/gdt/action/e;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static start()V
    .locals 1

    invoke-static {}, Lcom/qq/gdt/action/e;->a()Lcom/qq/gdt/action/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/e;->b()Z

    return-void
.end method
