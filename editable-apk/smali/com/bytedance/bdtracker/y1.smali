.class public Lcom/bytedance/bdtracker/y1;
.super Lcom/bytedance/bdtracker/q1;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/bytedance/bdtracker/x1;

.field public final g:Lcom/bytedance/bdtracker/v1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/x1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/bdtracker/q1;-><init>(ZZ)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/y1;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/bdtracker/y1;->f:Lcom/bytedance/bdtracker/x1;

    iput-object p2, p0, Lcom/bytedance/bdtracker/y1;->g:Lcom/bytedance/bdtracker/v1;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceParams"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->g:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 2
    invoke-virtual {v1}, Lcom/bytedance/applog/InitConfig;->isOperatorInfoEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "carrier"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/bytedance/bdtracker/v1;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v3, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/applog/util/HardwareUtils;->getOperatorMccMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mcc_mnc"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->f:Lcom/bytedance/bdtracker/x1;

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clientudid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/y1;->f:Lcom/bytedance/bdtracker/x1;

    .line 6
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->h:Lcom/bytedance/bdtracker/u4;

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/u4;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openudid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
