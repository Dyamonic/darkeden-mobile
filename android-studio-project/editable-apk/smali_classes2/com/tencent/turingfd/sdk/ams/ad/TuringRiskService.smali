.class public Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/turingfd/sdk/ams/ad/Lyra;->c:Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;

    invoke-virtual {v0}, Lcom/tencent/turingfd/sdk/ams/ad/Chestnut;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationListener;

    return-object v0
.end method

.method public static reqRiskDetectV2(Landroid/content/Context;)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService;->reqRiskDetectV2(Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;

    move-result-object p0

    return-object p0
.end method

.method public static reqRiskDetectV2(Landroid/content/Context;Z)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;
    .locals 3

    .line 2
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TuringDebug"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-direct {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {p0, v0, p1, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;Ljava/util/Map;IJ)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    move-result-object p0

    .line 7
    :goto_0
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;

    invoke-direct {p1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$do;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bryony;)V

    return-object p1
.end method

.method public static reqRiskDetectWithParam(Landroid/content/Context;Ljava/util/Map;)Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/turingfd/sdk/ams/ad/RiskDetectResp;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/turingfd/sdk/ams/ad/Marc;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "init error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TuringDebug"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p0, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    invoke-direct {p0, v0}, Lcom/tencent/turingfd/sdk/ams/ad/Bryony;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 7
    invoke-static {p0, p1, v0, v1, v2}, Lcom/tencent/turingfd/sdk/ams/ad/Blackberry;->a(Landroid/content/Context;Ljava/util/Map;IJ)Lcom/tencent/turingfd/sdk/ams/ad/Bryony;

    move-result-object p0

    .line 8
    :goto_0
    new-instance p1, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$if;

    invoke-direct {p1, p0}, Lcom/tencent/turingfd/sdk/ams/ad/TuringRiskService$if;-><init>(Lcom/tencent/turingfd/sdk/ams/ad/Bryony;)V

    return-object p1
.end method

.method public static screenProtect(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string v0, ""

    const-string v1, "screenProtect fail"

    .line 4
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static screenUnProtect(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    const-string v0, ""

    const-string v1, "screenUnProtect fail"

    .line 4
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
