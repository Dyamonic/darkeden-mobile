.class public Lcom/bytedance/bdtracker/d0$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/d0;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/bytedance/bdtracker/d0;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/d0;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    iput-object p2, p0, Lcom/bytedance/bdtracker/d0$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    .line 2
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0$c;->a:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lcom/bytedance/bdtracker/g4;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/g4;-><init>()V

    iget-object v2, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v3, v2, Lcom/bytedance/bdtracker/d0;->l:Lcom/bytedance/bdtracker/h0;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    .line 5
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    iget-object v3, v3, Lcom/bytedance/bdtracker/b0;->f:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v3}, Lcom/bytedance/bdtracker/d;->getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lcom/bytedance/applog/IHeaderCustomTimelyCallback;->updateHeader(Lorg/json/JSONObject;)V

    .line 7
    :cond_0
    iput-object v2, v1, Lcom/bytedance/bdtracker/g4;->y:Lorg/json/JSONObject;

    .line 8
    iget-object v2, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    .line 9
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 10
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 11
    iput-object v2, v1, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/bytedance/bdtracker/d0$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/bdtracker/x3;

    instance-of v5, v4, Lcom/bytedance/bdtracker/e4;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/bytedance/bdtracker/e4;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    iput-object v2, v1, Lcom/bytedance/bdtracker/g4;->s:Ljava/util/List;

    .line 14
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/g4;->m()V

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/g4;->n()V

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/g4;->o()[B

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/bdtracker/g4;->z:[B

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/h0;->a(Lcom/bytedance/bdtracker/g4;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, v0, Lcom/bytedance/bdtracker/d0;->D:J

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/bdtracker/d0$c;->a:Ljava/util/List;

    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/d4;->c:Lcom/bytedance/bdtracker/c4;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/c4;->a(Ljava/util/List;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/bytedance/bdtracker/d0;->D:J

    .line 22
    iget-object v0, p0, Lcom/bytedance/bdtracker/d0$c;->b:Lcom/bytedance/bdtracker/d0;

    .line 23
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    .line 24
    iget-object v1, p0, Lcom/bytedance/bdtracker/d0$c;->a:Ljava/util/List;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    return-void
.end method
