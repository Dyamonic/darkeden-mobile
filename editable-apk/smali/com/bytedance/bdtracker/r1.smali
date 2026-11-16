.class public Lcom/bytedance/bdtracker/r1;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Lcom/bytedance/bdtracker/v1;

.field public final f:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/v1;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/bdtracker/q1;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/r1;->f:Lcom/bytedance/bdtracker/d;

    iput-object p2, p0, Lcom/bytedance/bdtracker/r1;->e:Lcom/bytedance/bdtracker/v1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Build"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "platform"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_lib"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "device_model"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "device_brand"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "device_manufacturer"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "cpu_abi"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_target_version"

    const/16 v2, 0x1d

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "git_hash"

    const-string v2, "0122b9a"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/f5;->c:Lcom/bytedance/bdtracker/q4;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcom/bytedance/bdtracker/q4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v3, "os_version"

    const-string v4, "os_api"

    const-string v5, "os"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->e:Lcom/bytedance/bdtracker/v1;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isHarmonyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Harmony"

    .line 5
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "hw_sc.build.os.apiversion"

    invoke-static {v0}, Lcom/bytedance/bdtracker/h5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "hw_sc.build.platform.version"

    invoke-static {v0}, Lcom/bytedance/bdtracker/h5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r1;->f:Lcom/bytedance/bdtracker/d;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "loadHarmonyInfo failed"

    .line 7
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
