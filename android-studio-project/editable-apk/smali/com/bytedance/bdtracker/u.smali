.class public final Lcom/bytedance/bdtracker/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/bdtracker/b$e;


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/h4;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/h4;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/u;->a:Lcom/bytedance/bdtracker/h4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/bdtracker/d;)Z
    .locals 3

    sget-object v0, Lcom/bytedance/bdtracker/b;->b:Lcom/bytedance/bdtracker/b$e;

    invoke-interface {v0, p1}, Lcom/bytedance/bdtracker/b$e;->a(Lcom/bytedance/bdtracker/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/u;->a:Lcom/bytedance/bdtracker/h4;

    iget-object v0, v0, Lcom/bytedance/bdtracker/h4;->E:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d;->isAutoTrackPageIgnored(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/u;->a:Lcom/bytedance/bdtracker/h4;

    iget-boolean v0, v0, Lcom/bytedance/bdtracker/h4;->D:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoTrackFragmentEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method
