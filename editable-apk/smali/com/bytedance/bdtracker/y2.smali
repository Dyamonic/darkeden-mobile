.class public final Lcom/bytedance/bdtracker/y2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/z2;


# instance fields
.field public a:I

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/bdtracker/y2;->b:J

    iput-object p3, p0, Lcom/bytedance/bdtracker/y2;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/bytedance/bdtracker/y2;->d:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/bdtracker/y2;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/bdtracker/y2;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "metrics_category"

    const-string v1, "metrics_name"

    const-string v2, "dims_0"

    const-string v3, "launch_id"

    const-string v4, "process_id"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "metrics_category"

    const-string v2, "metrics_name"

    const-string v3, "dims_0"

    const-string v4, "launch_id"

    const-string v5, "process_id"

    const-string v6, "err_code"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/bytedance/bdtracker/y2;->b:J

    const-string v2, "dims_0"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/bdtracker/y2;->c:Ljava/lang/String;

    const-string v1, "process_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->getGlobalColdLaunchId$agent_liteChinaRelease()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch_id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Lcom/bytedance/bdtracker/y2;->b:J

    const-wide/16 v2, 0xd

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bytedance/bdtracker/y2;->a:I

    const-string v1, "err_code"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "event_process"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/bytedance/bdtracker/u2$a;->a(Lcom/bytedance/bdtracker/u2;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "event"

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/k0;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/bdtracker/y2;->d:J

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
