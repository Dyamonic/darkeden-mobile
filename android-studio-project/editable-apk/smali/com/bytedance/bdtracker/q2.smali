.class public final Lcom/bytedance/bdtracker/q2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/bytedance/applog/aggregation/Metrics;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/r2;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/r2;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/q2;->a:Lcom/bytedance/bdtracker/r2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/util/List;

    const-string v0, "list"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/aggregation/Metrics;

    new-instance v2, Lcom/bytedance/bdtracker/l4;

    invoke-direct {v2}, Lcom/bytedance/bdtracker/l4;-><init>()V

    iget-object v3, p0, Lcom/bytedance/bdtracker/q2;->a:Lcom/bytedance/bdtracker/r2;

    invoke-static {v3}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/r2;)Lcom/bytedance/bdtracker/d0;

    move-result-object v3

    .line 2
    iget-object v3, v3, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 3
    iget-object v4, p0, Lcom/bytedance/bdtracker/q2;->a:Lcom/bytedance/bdtracker/r2;

    invoke-static {v4}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/r2;)Lcom/bytedance/bdtracker/d0;

    move-result-object v4

    .line 4
    iget-object v4, v4, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    invoke-virtual {v3, v4, v2}, Lcom/bytedance/bdtracker/i0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/x3;)V

    invoke-virtual {v1}, Lcom/bytedance/applog/aggregation/Metrics;->toParams()Lorg/json/JSONObject;

    move-result-object v1

    .line 6
    iput-object v1, v2, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/q2;->a:Lcom/bytedance/bdtracker/r2;

    .line 8
    iget-object p1, p1, Lcom/bytedance/bdtracker/r2;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/bytedance/bdtracker/q2;->a:Lcom/bytedance/bdtracker/r2;

    .line 10
    iget-object p1, p1, Lcom/bytedance/bdtracker/r2;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
