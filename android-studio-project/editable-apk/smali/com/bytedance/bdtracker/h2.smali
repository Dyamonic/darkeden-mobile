.class public Lcom/bytedance/bdtracker/h2;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/applog/ISensitiveInfoProvider;

.field public final f:Landroid/content/Context;

.field public final g:Lcom/bytedance/bdtracker/v1;

.field public final h:Lcom/bytedance/bdtracker/x1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/x1;Lcom/bytedance/applog/ISensitiveInfoProvider;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/q1;-><init>(ZZ)V

    iput-object p4, p0, Lcom/bytedance/bdtracker/h2;->e:Lcom/bytedance/applog/ISensitiveInfoProvider;

    iput-object p1, p0, Lcom/bytedance/bdtracker/h2;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    iput-object p3, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "SensitiveLoader"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 8

    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getAliyunUdid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aliyun_uuid"

    .line 2
    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    .line 3
    iget-object v1, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isMacEnable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, "mac"

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/v1;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->e:Lcom/bytedance/applog/ISensitiveInfoProvider;

    iget-object v1, p0, Lcom/bytedance/bdtracker/h2;->f:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bytedance/applog/util/SensitiveUtils;->getMacAddress(Lcom/bytedance/applog/ISensitiveInfoProvider;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    .line 5
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const/4 v4, 0x0

    const-string v5, "mac_address"

    .line 6
    invoke-interface {v1, v5, v4}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "mc"

    if-nez v6, :cond_2

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v5, v0}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_1
    invoke-virtual {p1, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->g()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/applog/util/SensitiveUtils;->validMultiImei(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "udid_list"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isSerialNumberEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/SensitiveUtils;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "build_serial"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "serial_number"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->g:Lcom/bytedance/bdtracker/v1;

    .line 16
    iget-object v1, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 17
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isIccIdEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ICCID"

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/v1;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/bdtracker/h2;->h:Lcom/bytedance/bdtracker/x1;

    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->e()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    array-length v4, v0

    :goto_3
    const-string v5, "sim_serial_number"

    if-ge v2, v4, :cond_7

    aget-object v6, v0, v2

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    return v3
.end method
