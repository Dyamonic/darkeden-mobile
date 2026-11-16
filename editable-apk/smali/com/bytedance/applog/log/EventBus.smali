.class public final Lcom/bytedance/applog/log/EventBus;
.super Ljava/lang/Thread;
.source "EventBus.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/log/EventBus$MessageEvent;,
        Lcom/bytedance/applog/log/EventBus$DataFetcher;,
        Lcom/bytedance/applog/log/EventBus$Subscription;
    }
.end annotation


# static fields
.field private static final EMIT_EVENT_MSG:I = 0x1

.field public static global:Lcom/bytedance/applog/log/AbsSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/log/AbsSingleton<",
            "Lcom/bytedance/applog/log/EventBus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private final subscriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/applog/log/EventBus$Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/bytedance/applog/log/EventBus$1;

    invoke-direct {v0}, Lcom/bytedance/applog/log/EventBus$1;-><init>()V

    sput-object v0, Lcom/bytedance/applog/log/EventBus;->global:Lcom/bytedance/applog/log/AbsSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/applog/log/EventBus;->start()V

    return-void
.end method

.method private emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/applog/log/EventBus;->emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :goto_0
    return-void
.end method

.method private emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "applog_event_upload_eid"

    .line 175
    iget-object v4, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "responseByte"

    const-string v5, "$$EVENT_LOCAL_IDS"

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 178
    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_2

    .line 180
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const-string v3, "applog_do_request_end"

    .line 182
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    instance-of v3, v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    iget-object v3, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 185
    instance-of v6, v3, [B

    if-eqz v6, :cond_2

    .line 186
    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 189
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/applog/log/EventBus$Subscription;

    .line 190
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    instance-of v6, v6, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_5

    .line 192
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 195
    invoke-virtual {v6, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    if-eqz v2, :cond_4

    .line 199
    invoke-virtual {v6, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    :cond_4
    invoke-interface {v3, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 203
    :catch_0
    :try_start_3
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    invoke-interface {v3, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object v6, p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    invoke-interface {v3, v6}, Lcom/bytedance/applog/log/EventBus$Subscription;->sub(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p2}, Lcom/bytedance/applog/log/EventBus$DataFetcher;->fetch()Ljava/lang/Object;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/log/EventBus$MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/EventBus;->emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public emit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/applog/log/EventBus$MessageEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bytedance/applog/log/EventBus;->emit(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 141
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/applog/log/EventBus$MessageEvent;

    invoke-direct {p0, p1}, Lcom/bytedance/applog/log/EventBus;->emitEvent(Lcom/bytedance/applog/log/EventBus$MessageEvent;)V

    :cond_0
    return v1
.end method

.method public declared-synchronized listen(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$Subscription;)V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$Subscription;)V
    .locals 2

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 119
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 126
    :cond_1
    iget-object p2, p0, Lcom/bytedance/applog/log/EventBus;->subscriptionMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 132
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 134
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/applog/log/EventBus;->eventHandler:Landroid/os/Handler;

    .line 136
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
