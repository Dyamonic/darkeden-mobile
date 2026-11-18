.class public final Lcom/bytedance/bdtracker/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$f;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/h4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/h4;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/s;->a:Lcom/bytedance/bdtracker/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/bdtracker/x3;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/bdtracker/s;->a:Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x3;->clone()Lcom/bytedance/bdtracker/x3;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x3;->h()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "$page_duration"

    :try_start_0
    iget-wide v3, v0, Lcom/bytedance/bdtracker/h4;->s:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[Navigator] JSON handle failed"

    invoke-interface {v2, v4, v0, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Lcom/bytedance/bdtracker/e4;

    const-string v2, "$bav2b_page_leave"

    invoke-direct {v0, v2}, Lcom/bytedance/bdtracker/e4;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/bdtracker/x3;->a(J)V

    .line 1
    iput-object v1, v0, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    return-object v0
.end method
