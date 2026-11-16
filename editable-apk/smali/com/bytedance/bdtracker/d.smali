.class public final Lcom/bytedance/bdtracker/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IAppLogInstance;


# static fields
.field public static final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final L:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

.field public volatile B:Lcom/bytedance/bdtracker/r;

.field public C:Lcom/bytedance/applog/event/IEventHandler;

.field public final D:Lcom/bytedance/applog/log/IAppLogLogger;

.field public volatile E:Z

.field public F:J

.field public volatile G:Z

.field public final H:Lcom/bytedance/bdtracker/y4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/y4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Lcom/bytedance/bdtracker/y4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/y4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final J:Ljava/lang/Object;

.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/bdtracker/k1;

.field public final c:Lcom/bytedance/bdtracker/j1;

.field public final d:Lcom/bytedance/bdtracker/z1;

.field public final e:Lcom/bytedance/bdtracker/o1;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/bytedance/bdtracker/u3;

.field public final k:Lcom/bytedance/bdtracker/s3;

.field public l:I

.field public m:Ljava/lang/String;

.field public volatile n:Landroid/app/Application;

.field public volatile o:Lcom/bytedance/bdtracker/v1;

.field public volatile p:Lcom/bytedance/bdtracker/x1;

.field public volatile q:Lcom/bytedance/bdtracker/d0;

.field public volatile r:Lcom/bytedance/bdtracker/v;

.field public volatile s:Lcom/bytedance/applog/exposure/ViewExposureManager;

.field public volatile t:Lcom/bytedance/applog/network/INetworkClient;

.field public volatile u:Z

.field public volatile v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

.field public volatile w:Lcom/bytedance/bdtracker/f1;

.field public volatile x:Z

.field public y:Lcom/bytedance/bdtracker/i1;

.field public z:Lcom/bytedance/applog/alink/IALinkListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/bdtracker/d;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/bytedance/bdtracker/k1;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/k1;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/k1;

    new-instance v0, Lcom/bytedance/bdtracker/j1;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/j1;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    new-instance v0, Lcom/bytedance/bdtracker/z1;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/z1;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->d:Lcom/bytedance/bdtracker/z1;

    new-instance v0, Lcom/bytedance/bdtracker/o1;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/o1;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/o1;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/bdtracker/d;->l:I

    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->x:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/bdtracker/d;->E:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/bdtracker/d;->F:J

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->G:Z

    new-instance v0, Lcom/bytedance/bdtracker/y4;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/y4;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    new-instance v0, Lcom/bytedance/bdtracker/y4;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/y4;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/y4;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->J:Ljava/lang/Object;

    sget-object v0, Lcom/bytedance/bdtracker/d;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Lcom/bytedance/applog/log/LoggerImpl;

    invoke-direct {v0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-instance v0, Lcom/bytedance/bdtracker/u3;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/u3;-><init>(Lcom/bytedance/bdtracker/d;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    new-instance v0, Lcom/bytedance/bdtracker/s3;

    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/s3;-><init>(Lcom/bytedance/bdtracker/d;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/bdtracker/z1;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->d:Lcom/bytedance/bdtracker/z1;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/e4;

    const-string v1, "bav2b_page"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/bdtracker/e4;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1
    sget-object v4, Lcom/bytedance/bdtracker/b5;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "getActivity"

    :try_start_1
    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    :catchall_0
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    move v6, v2

    :cond_4
    :try_start_2
    const-string v4, "page_key"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_fragment"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "duration"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "page_title"

    :try_start_3
    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "page_path"

    :try_start_4
    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_custom"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p2, v1}, Lcom/bytedance/bdtracker/k0;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 3
    :goto_1
    iput-object v1, v0, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before please initialize first"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public activateALink(Landroid/net/Uri;)V
    .locals 7

    const-string v0, "activateALink"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->B:Lcom/bytedance/bdtracker/j;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->c()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->b()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x3

    const-string v6, "Activate deep link with url: {}..."

    invoke-interface {v1, v4, v6, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->a()Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/bytedance/applog/alink/util/LinkUtils;->INSTANCE:Lcom/bytedance/applog/alink/util/LinkUtils;

    invoke-virtual {v3, p1}, Lcom/bytedance/applog/alink/util/LinkUtils;->getParamFromLink(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p1

    sget-object v3, Lcom/bytedance/bdtracker/p;->a:Lcom/bytedance/bdtracker/p$a;

    const-class v4, Lcom/bytedance/bdtracker/l;

    invoke-virtual {v3, p1, v4}, Lcom/bytedance/bdtracker/p$a;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/bytedance/bdtracker/p;

    move-result-object p1

    check-cast p1, Lcom/bytedance/bdtracker/l;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/l;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    iput v5, v0, Lcom/bytedance/bdtracker/j;->e:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method

.method public declared-synchronized addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/i1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/i1;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/i1;-><init>()V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/i1;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/i1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/i1;->a(Lcom/bytedance/applog/IDataObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/k0;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->a(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public addEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/k0;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->a(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/k1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k1;->a(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->G:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before please initialize first"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bind(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "bind"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez p1, :cond_1

    .line 1
    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 2
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "BindID identities is null"

    .line 3
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->G:Lcom/bytedance/bdtracker/k3;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/bdtracker/k3;->a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    .line 1
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/y4;->b:Z

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "postSetUuidAfterDm uuid -> "

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/v1;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    .line 4
    iget-object v1, v1, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->h(Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 7
    invoke-static {v4}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    .line 8
    iget-object v5, v5, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 9
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/x1;->g(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/y4;

    .line 10
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/y4;->b:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v1}, Lcom/bytedance/bdtracker/v1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/y4;

    .line 13
    iget-object v1, v1, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 14
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->i(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 16
    invoke-static {v4}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/y4;

    .line 17
    iget-object v4, v4, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    .line 18
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/x1;->g(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public clearAbTestConfigsCache()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Please initialize first"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/bdtracker/m0;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/m0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->e(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/x1;->f(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/x1;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public clearDb()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "clearDb before init"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/bytedance/bdtracker/m0;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/m0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Start to clear db data..."

    .line 2
    invoke-interface {v2, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d0;->c()Lcom/bytedance/bdtracker/d4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d4;->a()V

    .line 3
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Db data cleared"

    .line 4
    invoke-interface {v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object v2

    const-string v3, "api_usage"

    const-string v4, "clearDb"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public flush()V
    .locals 6

    const-string v0, "flush"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/bdtracker/d0;->a([Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object v3

    const-string v4, "api_usage"

    invoke-static {v3, v4, v0, v1, v2}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public getALinkListener()Lcom/bytedance/applog/alink/IALinkListener;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    return-object v0
.end method

.method public getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "getAbConfig"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v5, v1, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v5}, Lcom/bytedance/bdtracker/v1;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v5, "vid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "val"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v5}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "ab_sdk_version"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/bytedance/bdtracker/x1;->i:Lcom/bytedance/bdtracker/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "abtest_exposure"

    .line 2
    :try_start_1
    invoke-virtual {v5, v8, v7, v6}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/x1;->i:Lcom/bytedance/bdtracker/d;

    .line 4
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v7, "DeviceManager"

    .line 5
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, "JSON handle failed"

    invoke-interface {v1, v7, v8, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_1

    move-object v2, p1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object p1

    const-string v1, "api_usage"

    invoke-static {p1, v1, v0, v3, v4}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p2
.end method

.method public getAbSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getAbSdkVersion"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getAllAbTestConfigs()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->a()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAppContext()Lcom/bytedance/bdtracker/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUdid()Ljava/lang/String;
    .locals 3

    const-string v0, "getClientUdid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->d:Lorg/json/JSONObject;

    const-string v2, "clientudid"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    return-object v0
.end method

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->B:Lcom/bytedance/bdtracker/j;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 3

    const-string v0, "getDid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->d:Lorg/json/JSONObject;

    const-string v2, "device_id"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptAndCompress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->E:Z

    return v0
.end method

.method public getEventFilterByClient()Lcom/bytedance/bdtracker/f1;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/f1;

    return-object v0
.end method

.method public getEventHandler()Lcom/bytedance/applog/event/IEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    return-object v0
.end method

.method public getExternalAbVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "setExternalAbVersion"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/v1;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 1

    const-string v0, "getHeader"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "getHeaderValue"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIid()Ljava/lang/String;
    .locals 1

    const-string v0, "getIid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitConfig()Lcom/bytedance/applog/InitConfig;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLaunchFrom()I
    .locals 1

    iget v0, p0, Lcom/bytedance/bdtracker/d;->l:I

    return v0
.end method

.method public getMonitor()Lcom/bytedance/bdtracker/m2;
    .locals 1

    const-string v0, "getMonitor"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->q:Lcom/bytedance/bdtracker/m2;

    return-object v0
.end method

.method public getNetClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;

    move-result-object v0

    return-object v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    if-nez v0, :cond_2

    new-instance v0, Lcom/bytedance/bdtracker/h3;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/s3;

    invoke-direct {v0, v1}, Lcom/bytedance/bdtracker/h3;-><init>(Lcom/bytedance/bdtracker/s3;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getOpenUdid()Ljava/lang/String;
    .locals 1

    const-string v0, "getOpenUdid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "device_token"

    const-string v2, ""

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const-string v0, "x-tt-dt"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "6.16.9"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    const-string v0, "getSsid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSsidGroup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "device_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getIid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "install_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getOpenUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "openudid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getClientUdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "clientudid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    const-string v0, "getUdid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriRuntime()Lcom/bytedance/applog/UriConfig;
    .locals 1

    const-string v0, "getUriRuntime"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->e()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    const-string v0, "getUserID"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 2
    iget-wide v0, v0, Lcom/bytedance/bdtracker/i0;->a:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 1

    const-string v0, "getUserUniqueID"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewExposureManager()Lcom/bytedance/applog/exposure/ViewExposureManager;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->s:Lcom/bytedance/applog/exposure/ViewExposureManager;

    return-object v0
.end method

.method public getViewProperties(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    return v0
.end method

.method public ignoreAutoTrackClick(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs ignoreAutoTrackClickByViewType([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs ignoreAutoTrackPage([Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    if-nez v3, :cond_1

    goto :goto_3

    .line 1
    :cond_1
    sget-object v4, Lcom/bytedance/bdtracker/b5;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/bytedance/bdtracker/b5;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    if-nez v4, :cond_6

    .line 2
    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v3, "{} is not a page class"

    .line 3
    invoke-interface {v4, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 9

    const-class v0, Lcom/bytedance/bdtracker/d;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/k0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "AppLog"

    const-string p2, "Init failed. App id must not be empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/k0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "AppLog"

    const-string p2, "Channel must not be empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/b;->b(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    const-string p1, "AppLog"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has initialized already"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    .line 1
    :cond_2
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isLogEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/bdtracker/m1;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bytedance/bdtracker/m1;-><init>(Lcom/bytedance/applog/ILogger;)V

    :goto_0
    invoke-static {v3, v4}, Lcom/bytedance/applog/log/LogProcessorHolder;->setProcessor(Ljava/lang/String;Lcom/bytedance/applog/log/ILogProcessor;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/bdtracker/l1;

    invoke-direct {v4, p0}, Lcom/bytedance/bdtracker/l1;-><init>(Lcom/bytedance/bdtracker/d;)V

    goto :goto_0

    .line 3
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "AppLog init begin..."

    const/4 v5, 0x0

    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    invoke-interface {v3, v4, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    invoke-static {p2}, Lcom/bytedance/bdtracker/o2;->a(Lcom/bytedance/applog/InitConfig;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p2, v4}, Lcom/bytedance/applog/InitConfig;->setMonitorEnabled(Z)V

    .line 6
    :cond_5
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->initMetaSec(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "applog_stats"

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/applog/InitConfig;->setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;

    :cond_6
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->J:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Lcom/bytedance/bdtracker/v1;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-direct {v3, p0, v6, p2}, Lcom/bytedance/bdtracker/v1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    new-instance v3, Lcom/bytedance/bdtracker/x1;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    iget-object v7, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    invoke-direct {v3, p0, v6, v7}, Lcom/bytedance/bdtracker/x1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/v1;)V

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->c()V

    new-instance v3, Lcom/bytedance/bdtracker/d0;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    iget-object v7, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    iget-object v8, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/o1;

    invoke-direct {v3, p0, v6, v7, v8}, Lcom/bytedance/bdtracker/d0;-><init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/v1;Lcom/bytedance/bdtracker/x1;Lcom/bytedance/bdtracker/o1;)V

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/bytedance/bdtracker/e;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/bdtracker/e;-><init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/applog/InitConfig;)V

    const-string v3, "init_begin"

    invoke-static {v3, p1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 8
    :goto_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-static {p1}, Lcom/bytedance/bdtracker/v;->a(Landroid/app/Application;)Lcom/bytedance/bdtracker/v;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    new-instance p1, Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;-><init>(Lcom/bytedance/bdtracker/d;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->s:Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getTrackCrashType()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/applog/exception/AppCrashType;->hasJavaCrashType(I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-static {}, Lcom/bytedance/bdtracker/n0;->a()V

    :cond_9
    iput v4, p0, Lcom/bytedance/bdtracker/d;->l:I

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->u:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string p1, "init_end"

    :try_start_5
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/applog/log/LogUtils;->sendString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string p2, "AppLog init end"

    :try_start_6
    new-array v3, v5, [Ljava/lang/Object;

    .line 10
    invoke-interface {p1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 13
    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/bytedance/bdtracker/v3;->a(Lcom/bytedance/bdtracker/d;)V

    :cond_a
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/v1;->l()V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string p2, "sdk_init"

    :try_start_7
    const-string v3, "metricsName"

    .line 14
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/bdtracker/v;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    invoke-virtual {p1, p3}, Lcom/bytedance/bdtracker/v;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public initH5Bridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const-string v0, "com.bytedance.applog.tracker.WebViewUtil"

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "No WebViewUtil class, and will not initialize h5 bridge"

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "injectWebViewBridges"

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Initialize h5 bridge failed"

    .line 4
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initMetaSec(Landroid/content/Context;)V
    .locals 7

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMetaSecEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.bytedance.applog.metasec.AppLogSecHelper"

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "No AppLogSecHelper class, and will not init"

    .line 2
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v2, "init"

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/bytedance/applog/IAppLogInstance;

    aput-object v5, v4, v1

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    aput-object p1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initialize AppLogSecHelper failed"

    .line 4
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public initWebViewBridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const-string v0, "com.bytedance.applog.tracker.WebViewUtil"

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "injectWebViewBridges"

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v3

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Init webview bridge failed"

    .line 2
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isAutoTrackClickIgnored(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v0
.end method

.method public isAutoTrackPageIgnored(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isBavEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isH5BridgeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isH5CollectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewUser()Z
    .locals 1

    const-string v0, "isNewUser"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/x1;->e:Z

    return v0
.end method

.method public isPrivacyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->x:Z

    return v0
.end method

.method public manualActivate()Z
    .locals 6

    const-string v0, "manualActivate"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/d0;->a(Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object v2

    const-string v5, "api_usage"

    invoke-static {v2, v5, v0, v3, v4}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    return v1
.end method

.method public newEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 1

    new-instance v0, Lcom/bytedance/applog/event/EventBuilder;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/event/EventBuilder;-><init>(Lcom/bytedance/bdtracker/d;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/event/EventBuilder;->setEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;

    move-result-object p1

    return-object p1
.end method

.method public onActivityPause()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/v;->onActivityPaused(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/v;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/bdtracker/v;->a(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public onEventV3(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Parse event params failed"

    .line 3
    invoke-interface {v1, v3, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    invoke-virtual {p0, p1, v0, p3}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "event name is empty"

    .line 5
    invoke-interface {p1, p3, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "customEvent"

    const-string v3, "eventV3"

    .line 7
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    aput-object v5, v3, v1

    const-string v1, "event:{} type:{} params:{} "

    invoke-interface {v0, v2, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    invoke-static {v2, p1, p2}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/bytedance/bdtracker/e4;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    move-object v9, v4

    move-object v5, v2

    move-object v7, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/bytedance/bdtracker/e4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getSessionId()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance p3, Lcom/bytedance/bdtracker/a3;

    invoke-direct {p3}, Lcom/bytedance/bdtracker/a3;-><init>()V

    const-string v4, "onEventV3"

    .line 11
    iput-object v4, p3, Lcom/bytedance/bdtracker/a3;->a:Ljava/lang/String;

    sub-long/2addr v2, v0

    .line 12
    iput-wide v2, p3, Lcom/bytedance/bdtracker/a3;->b:J

    if-eqz p1, :cond_3

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {v0, p3}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_3
    if-eqz p1, :cond_5

    new-instance p3, Lcom/bytedance/bdtracker/y2;

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, ""

    :goto_1
    move-object v4, p2

    const-wide/16 v5, 0x1

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/bdtracker/y2;-><init>(JLjava/lang/String;J)V

    check-cast p1, Lcom/bytedance/bdtracker/r2;

    invoke-virtual {p1, p3}, Lcom/bytedance/bdtracker/r2;->a(Lcom/bytedance/bdtracker/u2;)V

    :cond_5
    return-void
.end method

.method public onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v2, "customEvent"

    const-string v3, "miscEvent"

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "logType:{} params:{} "

    invoke-interface {v0, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "log_type"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lcom/bytedance/bdtracker/a4;

    const-string v0, "log_data"

    invoke-direct {p1, v0, p2}, Lcom/bytedance/bdtracker/a4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "call onMiscEvent error"

    .line 4
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "call onMiscEvent with invalid params"

    .line 6
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/d;->onActivityResumed(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public pauseDurationEvent(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Event name must not empty!"

    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/k0;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/j0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No duration event with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/j0;->a(J)V

    return-void
.end method

.method public profileAppend(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "profileAppend"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "only support String\u3001Int\u3001String Array\uff01"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 4
    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->b(Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public profileIncrement(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "profileIncrement"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/bytedance/bdtracker/k0;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "only support Int param"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 4
    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->c(Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public profileSet(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "profileSet"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->d(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public profileSetOnce(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "profileSetOnce"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->e(Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 4

    const-string v0, "profileUnset"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 2
    invoke-interface {v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/d0;->f(Lorg/json/JSONObject;)V

    return-void
.end method

.method public pullAbTestConfigs()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bdtracker/d;->pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V

    return-void
.end method

.method public pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Please initialize first"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/bytedance/bdtracker/m0;

    invoke-direct {p2}, Lcom/bytedance/bdtracker/m0;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-wide v4, v4, Lcom/bytedance/bdtracker/d0;->a:J

    .line 2
    iget-wide v6, p0, Lcom/bytedance/bdtracker/d;->F:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    iput-wide v2, p0, Lcom/bytedance/bdtracker/d;->F:J

    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/16 v3, 0x12

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2, v4, v5}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onThrottle(J)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "Pull ABTest config too frequently"

    .line 6
    invoke-interface {p1, v2, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object p1

    const-string p2, "api_usage"

    const-string v2, "pullAbTestConfigs"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->e()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p3, p2, p4}, Lcom/bytedance/bdtracker/u3;->a(Lorg/json/JSONObject;ZLjava/util/Map;Lcom/bytedance/applog/Level;)V

    return-void
.end method

.method public receive(Lcom/bytedance/bdtracker/x3;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/bytedance/bdtracker/x3;->m:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/o1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/o1;->a(Lcom/bytedance/bdtracker/x3;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/x3;)V

    :goto_0
    const-string v0, "event_receive"

    invoke-static {v0, p1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public receive([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/o1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/o1;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 4
    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method

.method public registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    return-void
.end method

.method public removeAllDataObserver()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/i1;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/i1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    :cond_0
    return-void
.end method

.method public removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/i1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/i1;->b(Lcom/bytedance/applog/IDataObserver;)V

    :cond_0
    return-void
.end method

.method public removeEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/k0;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->b(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public removeEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/j1;

    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/k0;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->b(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public removeHeaderInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "removeHeaderInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/x1;->d(Ljava/lang/String;)V

    return-void
.end method

.method public removeOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/bdtracker/o5;->b(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/k1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/k1;->b(Lcom/bytedance/applog/ISessionObserver;)V

    return-void
.end method

.method public reportPhoneDetailInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resumeDurationEvent(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Event name must not empty!"

    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/k0;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/j0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No duration event with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/j0;->b(J)V

    return-void
.end method

.method public setALinkListener(Lcom/bytedance/applog/alink/IALinkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 2

    const-string v0, "setAccount"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->i:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->a()Lcom/bytedance/bdtracker/z1;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    instance-of v1, v1, Lcom/bytedance/bdtracker/u4;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/bdtracker/z1;->a:Lcom/bytedance/bdtracker/u4;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/u4;->c:Lcom/bytedance/bdtracker/w3;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/w3;->a(Landroid/accounts/Account;)V

    goto :goto_0

    .line 4
    :cond_1
    iput-object p1, v0, Lcom/bytedance/bdtracker/z1;->b:Landroid/accounts/Account;

    :cond_2
    :goto_0
    return-void
.end method

.method public setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    return-void
.end method

.method public setAppContext(Lcom/bytedance/bdtracker/f;)V
    .locals 0

    return-void
.end method

.method public setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "setAppLanguageAndRegion"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const-string v2, "app_language"

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v1, v1, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    .line 3
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v1, v2, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    .line 4
    :goto_0
    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->i:Lcom/bytedance/bdtracker/x1;

    const-string v2, "app_region"

    .line 5
    invoke-virtual {v1, v2, p2}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    .line 6
    iget-object v1, v1, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v1, v2, p2}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    or-int/2addr p1, v4

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->f:Lcom/bytedance/bdtracker/c0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    :cond_3
    return-void
.end method

.method public setAppTrack(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "setAppTrack"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    const-string v1, "app_track"

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->d:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_2
    return-void
.end method

.method public setClipboardEnabled(Z)V
    .locals 1

    const-string v0, "setClipboardEnabled"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->B:Lcom/bytedance/bdtracker/j;

    .line 2
    iput-boolean p1, v0, Lcom/bytedance/bdtracker/j;->a:Z

    .line 3
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/bdtracker/d$c;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$c;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    const-string p1, "update_config"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_1
    return-void
.end method

.method public setEncryptAndCompress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->E:Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/d$a;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$a;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    const-string p1, "update_config"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_0
    return-void
.end method

.method public setEventFilterByClient(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    new-instance p1, Lcom/bytedance/bdtracker/h1;

    invoke-direct {p1, v1, v0}, Lcom/bytedance/bdtracker/h1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/bytedance/bdtracker/g1;

    invoke-direct {p1, v1, v0}, Lcom/bytedance/bdtracker/g1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    :goto_1
    move-object v0, p1

    .line 2
    :cond_3
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/f1;

    return-void
.end method

.method public setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "setExternalAbVersion"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/x1;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/u3;

    .line 1
    iput-object p1, v0, Lcom/bytedance/bdtracker/u3;->a:Lcom/bytedance/applog/IExtraParams;

    return-void
.end method

.method public setForbidReportPhoneDetailInfo(Z)V
    .locals 3

    const-string v0, "setForbidReportPhoneDetailInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    .line 1
    iput-boolean p1, v0, Lcom/bytedance/bdtracker/x1;->l:Z

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->r()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "sim_serial_number"

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2
    :cond_1
    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/bytedance/bdtracker/d$b;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$b;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    const-string p1, "update_config"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_2
    return-void
.end method

.method public setGPSLocation(FFLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-nez v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Please initialize first"

    .line 2
    invoke-interface {p1, p3, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/r;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/bdtracker/r;-><init>(FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->B:Lcom/bytedance/bdtracker/r;

    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setGoogleAid"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    const-string v1, "google_aid"

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_1
    return-void
.end method

.method public setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setHeaderInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/x1;->a(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setHeaderInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/j5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public setLaunchFrom(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/bdtracker/d;->l:I

    return-void
.end method

.method public setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/bdtracker/o5;->a(Lcom/bytedance/applog/IOaidObserver;)V

    return-void
.end method

.method public setPrivacyMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->x:Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/bdtracker/k0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/applog/log/LogUtils;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/bdtracker/d$d;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$d;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    const-string p1, "update_config"

    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    :cond_0
    return-void
.end method

.method public setPullAbTestConfigsThrottleMills(Ljava/lang/Long;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Please initialize first"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/bytedance/bdtracker/m0;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/m0;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public setRangersEventVerifyEnable(ZLjava/lang/String;)V
    .locals 4

    const-string v0, "setRangersEventVerifyEnable"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTouchPoint(Ljava/lang/String;)V
    .locals 1

    const-string v0, "touch_point"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/d;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTracerData(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "setTracerData"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    const-string v1, "tracer_data"

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setUriRuntime(Lcom/bytedance/applog/UriConfig;)V
    .locals 1

    const-string v0, "setUriRuntime"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iput-object p1, v0, Lcom/bytedance/bdtracker/d0;->o:Lcom/bytedance/applog/UriConfig;

    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->k:Lcom/bytedance/bdtracker/g0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Lcom/bytedance/bdtracker/b0;)V

    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->e:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-object p1, p1, Lcom/bytedance/bdtracker/v1;->c:Lcom/bytedance/applog/InitConfig;

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d0;->a(Z)Z

    :cond_1
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setUserAgent"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    const-string v1, "user_agent"

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/x1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/bytedance/bdtracker/x1;->c:Lcom/bytedance/bdtracker/v1;

    .line 2
    iget-object v0, v0, Lcom/bytedance/bdtracker/v1;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    invoke-interface {v0, v1, p1}, Lcom/bytedance/applog/store/kv/IKVStore;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/applog/store/kv/IKVStore;

    :cond_1
    return-void
.end method

.method public setUserID(J)V
    .locals 1

    const-string v0, "setUserID"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->n:Lcom/bytedance/bdtracker/i0;

    .line 2
    iput-wide p1, v0, Lcom/bytedance/bdtracker/i0;->a:J

    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    .line 1
    iput-object p1, v0, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/bdtracker/y4;->b:Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const-string v1, "cache uuid before init id -> "

    .line 3
    invoke-static {v1, p1}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/x1;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->J:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/x1;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/y4;

    .line 4
    iput-object p1, v1, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/bytedance/bdtracker/y4;->b:Z

    .line 5
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache uuid before init id -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/y4;

    .line 7
    iput-object p2, p1, Lcom/bytedance/bdtracker/y4;->a:Ljava/lang/Object;

    iput-boolean v2, p1, Lcom/bytedance/bdtracker/y4;->b:Z

    .line 8
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache uuid before init type -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    invoke-virtual {v3, p1, p2}, Lcom/bytedance/bdtracker/d0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/m2;

    move-result-object p1

    const-string p2, "api_usage"

    const-string v3, "setUserUniqueID"

    invoke-static {p1, p2, v3, v1, v2}, Lcom/bytedance/bdtracker/p2;->a(Lcom/bytedance/bdtracker/m2;Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setViewId(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setViewId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.support.v7.app.AlertDialog"

    const-string v1, "androidx.appcompat.app.AlertDialog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Only support AlertDialog view"

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getWindow"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot set viewId for alertDialog"

    .line 4
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Not found getWindow method in alertDialog"

    .line 6
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/bytedance/bdtracker/k0;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/d0;->r:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d0;->i()V

    :cond_1
    return-void
.end method

.method public startDurationEvent(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Event name must not empty!"

    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/k0;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/j0;

    if-nez v2, :cond_1

    new-instance v2, Lcom/bytedance/bdtracker/j0;

    .line 3
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    invoke-direct {v2, v3, p1}, Lcom/bytedance/bdtracker/j0;-><init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/j0;->c(J)V

    return-void
.end method

.method public startSimulator(Ljava/lang/String;)V
    .locals 7

    const-string v0, "startSimulator"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    .line 1
    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->s:Lcom/bytedance/bdtracker/b0;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    iput-boolean v2, v1, Lcom/bytedance/bdtracker/b0;->d:Z

    :cond_1
    const-string v1, "com.bytedance.applog.picker.DomSender"

    .line 3
    invoke-static {v1}, Lcom/bytedance/bdtracker/k0;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Lcom/bytedance/bdtracker/d0;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/bdtracker/b0;

    iput-object p1, v0, Lcom/bytedance/bdtracker/d0;->s:Lcom/bytedance/bdtracker/b0;

    iget-object p1, v0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    iget-object v1, v0, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/16 v2, 0x9

    iget-object v3, v0, Lcom/bytedance/bdtracker/d0;->s:Lcom/bytedance/bdtracker/b0;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iget-object v0, v0, Lcom/bytedance/bdtracker/d0;->d:Lcom/bytedance/bdtracker/d;

    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Start simulator failed."

    .line 6
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Event name must not empty!"

    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/k0;->a(ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/bdtracker/j0;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No duration event with name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/k0;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-gtz v5, :cond_2

    .line 3
    iget-object v2, v2, Lcom/bytedance/bdtracker/j0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End at illegal time: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/j0;->a(J)V

    iget-object v3, v2, Lcom/bytedance/bdtracker/j0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    if-eqz v3, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/bytedance/bdtracker/j0;->b:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    iget-wide v0, v2, Lcom/bytedance/bdtracker/j0;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string v0, "[DurationEvent:{}] End[ at:{} and duration is {}ms"

    invoke-interface {v3, v6, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-wide v3, v2, Lcom/bytedance/bdtracker/j0;->d:J

    .line 4
    :cond_4
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p2, v0}, Lcom/bytedance/bdtracker/k0;->c(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :try_start_0
    const-string p2, "$event_duration"

    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 5
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "JSON handle failed"

    .line 6
    invoke-interface {v1, v3, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1
    new-instance p2, Lcom/bytedance/bdtracker/e4;

    invoke-direct {p2, p1, v0}, Lcom/bytedance/bdtracker/e4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V

    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AppLogInstance{id:"

    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bytedance/bdtracker/d;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackClick(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/k0;->a(Landroid/view/View;Z)Lcom/bytedance/bdtracker/z3;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p1, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/x3;)V

    return-void
.end method

.method public trackPage(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 7

    const-string v0, "userProfileSetOnce"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    const/4 v2, 0x0

    .line 1
    iget-object v0, v1, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v5, v1, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/bdtracker/o3;->a(Lcom/bytedance/bdtracker/d0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    :cond_1
    return-void
.end method

.method public userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 7

    const-string v0, "userProfileSync"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/d0;

    const/4 v2, 0x1

    .line 1
    iget-object v0, v1, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v5, v1, Lcom/bytedance/bdtracker/d0;->j:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/bytedance/bdtracker/o3;->a(Lcom/bytedance/bdtracker/d0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    :cond_1
    return-void
.end method
