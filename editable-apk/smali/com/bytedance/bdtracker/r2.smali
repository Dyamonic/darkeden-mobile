.class public final Lcom/bytedance/bdtracker/r2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/m2;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public a:Landroid/os/Handler;

.field public final b:Lcom/bytedance/bdtracker/n2;

.field public final c:Lcom/bytedance/bdtracker/d0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;)V
    .locals 4

    const-string v0, "mEngine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bd_tracker_monitor@"

    invoke-static {v1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1
    iget-object v2, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    const-string v3, "mEngine.appLog"

    .line 2
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/bytedance/bdtracker/r2;->a:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/bdtracker/n2;

    iget-object v1, p0, Lcom/bytedance/bdtracker/r2;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "mHandler.looper"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 6
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    const-string v3, "mEngine.appLog.appId"

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d0;->b()Landroid/content/Context;

    move-result-object p1

    const-string v3, "mEngine.context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/bytedance/bdtracker/n2;-><init>(Landroid/os/Looper;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/r2;->b:Lcom/bytedance/bdtracker/n2;

    return-void
.end method

.method public static final synthetic a(Lcom/bytedance/bdtracker/r2;)Lcom/bytedance/bdtracker/d0;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/u2;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    const-string v1, "mEngine.config"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/bytedance/applog/monitor/MonitorSampling;->INSTANCE:Lcom/bytedance/applog/monitor/MonitorSampling;

    invoke-virtual {v0}, Lcom/bytedance/applog/monitor/MonitorSampling;->isSampling$agent_liteChinaRelease()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "mEngine.appLog"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string v2, "Monitor EventTrace hint trace:{}"

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->b:Lcom/bytedance/bdtracker/n2;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n2;->a(Lcom/bytedance/bdtracker/u2;)Lcom/bytedance/applog/aggregation/IMetricsTracker;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/bdtracker/u2;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/bdtracker/u2;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/aggregation/IMetricsTracker;->track(Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/bytedance/bdtracker/d3;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/bytedance/bdtracker/x2;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->b:Lcom/bytedance/bdtracker/n2;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/n2;->a(Lcom/bytedance/bdtracker/u2;)Lcom/bytedance/applog/aggregation/IMetricsTracker;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/bdtracker/u2;->g()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1}, Lcom/bytedance/bdtracker/u2;->d()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/bytedance/applog/aggregation/IMetricsTracker;->track(Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 8
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "Monitor EventTrace not hint trace:{}"

    .line 10
    invoke-interface {v0, v1, p1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "mEngine.appLog"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->h()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object p1, p1, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 4
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Monitor report..."

    .line 6
    invoke-interface {p1, v1, v2, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 8
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 11
    iget-object v1, v1, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const-string v2, "mEngine.dm"

    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/bdtracker/d4;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 13
    iget-object v0, p1, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    .line 15
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 16
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v4, [Ljava/lang/Object;

    .line 18
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v5, v3, v2

    const-string v2, "Monitor trace save:{}"

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/r2;->c:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->isMutableList(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    check-cast p1, Ljava/util/List;

    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/d4;->c:Lcom/bytedance/bdtracker/c4;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/c4;->b(Ljava/util/List;)V

    :goto_1
    return v4
.end method
