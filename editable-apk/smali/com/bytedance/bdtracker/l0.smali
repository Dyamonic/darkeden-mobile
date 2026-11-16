.class public Lcom/bytedance/bdtracker/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IPresetEventObserver;
.implements Lcom/bytedance/applog/IEventObserver;


# instance fields
.field public final a:Lcom/bytedance/applog/IEventObserver;

.field public final b:Lcom/bytedance/applog/IPresetEventObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;Lcom/bytedance/bdtracker/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    iput-object p2, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/bytedance/applog/IEventObserver;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IEventObserver;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public onLaunch(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onLaunch(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onPageEnter(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onPageEnter(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onPageLeave(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onPageLeave(Lorg/json/JSONObject;)V

    return-void
.end method
