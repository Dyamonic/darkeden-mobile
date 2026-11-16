.class public Lcom/bytedance/bdtracker/i2;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/v1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/x1;)V
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p3}, Lcom/bytedance/bdtracker/q1;-><init>(ZZZ)V

    iput-object p2, p0, Lcom/bytedance/bdtracker/i2;->e:Lcom/bytedance/bdtracker/v1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ServerId"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 10

    iget-object v0, p0, Lcom/bytedance/bdtracker/i2;->e:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "device_id"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bd_did"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "install_id"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/bdtracker/i2;->e:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v6}, Lcom/bytedance/bdtracker/v1;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v5}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ssid"

    invoke-static {p1, v1, v2}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "register_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v5}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    cmp-long v0, v8, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/bdtracker/i2;->e:Lcom/bytedance/bdtracker/v1;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v0, v1, v6, v7}, Lcom/bytedance/applog/store/kv/IKVStore;->putLong(Ljava/lang/String;J)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_0

    :cond_2
    move-wide v6, v8

    .line 4
    :goto_0
    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method
