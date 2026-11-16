.class public final Lcom/bytedance/bdtracker/e2;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/v1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/v1;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/q1;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/e2;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/bdtracker/e2;->f:Lcom/bytedance/bdtracker/v1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Oaid"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/e2;->f:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->k()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/e2;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/bdtracker/o5;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "oaid"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
