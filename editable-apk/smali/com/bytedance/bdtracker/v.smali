.class public Lcom/bytedance/bdtracker/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/v$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/bdtracker/j0;

.field public static b:Z

.field public static c:I

.field public static d:Lcom/bytedance/bdtracker/h4;

.field public static e:Lcom/bytedance/bdtracker/h4;

.field public static f:J

.field public static g:Ljava/lang/String;

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/h4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/bdtracker/v$a;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Lcom/bytedance/bdtracker/h4;

.field public static final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile l:Lcom/bytedance/bdtracker/v;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/bytedance/bdtracker/j0;

    const/4 v1, 0x0

    const-string v2, "@APPLOG_APP_USE"

    invoke-direct {v0, v1, v2}, Lcom/bytedance/bdtracker/j0;-><init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/j0;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/bdtracker/v;->b:Z

    const-string v2, "android.arch.lifecycle.ReportFragment"

    const-string v3, "androidx.lifecycle.ReportFragment"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const-string v2, "com.bumptech.glide.manager.SupportRequestManagerFragment"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    sput v0, Lcom/bytedance/bdtracker/v;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/v;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/bdtracker/v;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/bytedance/bdtracker/v;->k:Ljava/util/HashSet;

    sput-object v1, Lcom/bytedance/bdtracker/v;->l:Lcom/bytedance/bdtracker/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/bdtracker/h4;
    .locals 2

    sget-object v0, Lcom/bytedance/bdtracker/v;->d:Lcom/bytedance/bdtracker/h4;

    sget-object v1, Lcom/bytedance/bdtracker/v;->e:Lcom/bytedance/bdtracker/h4;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/h4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/bdtracker/h4;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/bdtracker/h4;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/h4;-><init>()V

    iput-object p0, v0, Lcom/bytedance/bdtracker/h4;->E:Ljava/lang/Class;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p6, p7}, Lcom/bytedance/bdtracker/x3;->a(J)V

    iput-wide p6, v0, Lcom/bytedance/bdtracker/h4;->z:J

    const-wide/16 p2, -0x1

    iput-wide p2, v0, Lcom/bytedance/bdtracker/h4;->s:J

    sget-object p0, Lcom/bytedance/bdtracker/v;->j:Lcom/bytedance/bdtracker/h4;

    const-string p2, ""

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    iput-object p0, v0, Lcom/bytedance/bdtracker/h4;->t:Ljava/lang/String;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p2

    :goto_2
    iput-object p4, v0, Lcom/bytedance/bdtracker/h4;->v:Ljava/lang/String;

    sget-object p0, Lcom/bytedance/bdtracker/v;->j:Lcom/bytedance/bdtracker/h4;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/bytedance/bdtracker/h4;->v:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p0, p2

    :goto_3
    iput-object p0, v0, Lcom/bytedance/bdtracker/h4;->w:Ljava/lang/String;

    if-eqz p5, :cond_4

    goto :goto_4

    :cond_4
    move-object p5, p2

    :goto_4
    iput-object p5, v0, Lcom/bytedance/bdtracker/h4;->x:Ljava/lang/String;

    sget-object p0, Lcom/bytedance/bdtracker/v;->j:Lcom/bytedance/bdtracker/h4;

    if-eqz p0, :cond_5

    iget-object p2, p0, Lcom/bytedance/bdtracker/h4;->x:Ljava/lang/String;

    :cond_5
    iput-object p2, v0, Lcom/bytedance/bdtracker/h4;->y:Ljava/lang/String;

    iput-object p8, v0, Lcom/bytedance/bdtracker/x3;->o:Lorg/json/JSONObject;

    iput-boolean p1, v0, Lcom/bytedance/bdtracker/h4;->D:Z

    .line 4
    new-instance p0, Lcom/bytedance/bdtracker/u;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/u;-><init>(Lcom/bytedance/bdtracker/h4;)V

    invoke-static {v0, p0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/x3;Lcom/bytedance/bdtracker/b$e;)V

    .line 5
    sput-object v0, Lcom/bytedance/bdtracker/v;->j:Lcom/bytedance/bdtracker/h4;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, v0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "[Navigator] resumePage page.name\uff1a{}"

    invoke-interface {p0, p2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(ZLcom/bytedance/bdtracker/h4;J)Lcom/bytedance/bdtracker/h4;
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/x3;->clone()Lcom/bytedance/bdtracker/x3;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/bdtracker/x3;->a(J)V

    iget-wide v1, p1, Lcom/bytedance/bdtracker/x3;->c:J

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    const-wide/16 p2, 0x3e8

    :cond_0
    iput-wide p2, v0, Lcom/bytedance/bdtracker/h4;->s:J

    iput-boolean p0, v0, Lcom/bytedance/bdtracker/h4;->D:Z

    .line 1
    new-instance p0, Lcom/bytedance/bdtracker/u;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/u;-><init>(Lcom/bytedance/bdtracker/h4;)V

    invoke-static {v0, p0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/x3;Lcom/bytedance/bdtracker/b$e;)V

    .line 2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, v0, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-wide p2, v0, Lcom/bytedance/bdtracker/h4;->s:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const-string p2, "[Navigator] pausePage page.name\uff1a{}, duration\uff1a{}"

    invoke-interface {p0, p2, p1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p0, Lcom/bytedance/bdtracker/s;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/s;-><init>(Lcom/bytedance/bdtracker/h4;)V

    new-instance p1, Lcom/bytedance/bdtracker/t;

    invoke-direct {p1}, Lcom/bytedance/bdtracker/t;-><init>()V

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$f;Lcom/bytedance/bdtracker/b$e;)V

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/app/Application;)Lcom/bytedance/bdtracker/v;
    .locals 2

    const-class v0, Lcom/bytedance/bdtracker/v;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/v;->l:Lcom/bytedance/bdtracker/v;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/v;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/v;-><init>()V

    sput-object v1, Lcom/bytedance/bdtracker/v;->l:Lcom/bytedance/bdtracker/v;

    sget-object v1, Lcom/bytedance/bdtracker/v;->l:Lcom/bytedance/bdtracker/v;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    sget-object p0, Lcom/bytedance/bdtracker/v;->l:Lcom/bytedance/bdtracker/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v1, 0x0

    const-string v3, ""

    invoke-static/range {v0 .. v8}, Lcom/bytedance/bdtracker/v;->a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/h4;

    move-result-object p1

    sput-object p1, Lcom/bytedance/bdtracker/v;->d:Lcom/bytedance/bdtracker/h4;

    sget-object v0, Lcom/bytedance/bdtracker/v;->k:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/bytedance/bdtracker/h4;->A:I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lcom/bytedance/bdtracker/v;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/bytedance/bdtracker/v;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/j0;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/j0;->a(J)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/bytedance/bdtracker/v;->b:Z

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    aput-object v6, v5, v2

    const-string v6, "[Navigator] onActivityPaused:{}"

    invoke-interface {v3, v6, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    sget-object v3, Lcom/bytedance/bdtracker/v;->i:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/bdtracker/v$a;

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/bytedance/bdtracker/v$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v5, v8, v2

    const-string v9, "[Navigator] onFragPause:frag\uff1a{}"

    invoke-interface {v7, v9, v8}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    sget-object v7, Lcom/bytedance/bdtracker/v;->i:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/bdtracker/v$a;

    iget-object v9, v8, Lcom/bytedance/bdtracker/v$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v7

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v5, v9, v2

    const-string v10, "[Navigator] inFragmentCache frag already recycle\uff1a{}"

    invoke-interface {v7, v10, v9}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v7, v8, Lcom/bytedance/bdtracker/v$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    :goto_2
    move v7, v2

    :goto_3
    if-eqz v7, :cond_8

    .line 4
    sget-object v7, Lcom/bytedance/bdtracker/v;->i:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/bdtracker/v$a;

    iget-object v8, v8, Lcom/bytedance/bdtracker/v$a;->a:Lcom/bytedance/bdtracker/h4;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v8, v7, v2

    const-string v9, "[Navigator] onFragPause:page\uff1a{}"

    invoke-interface {v5, v9, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v4, v8, v9, v10}, Lcom/bytedance/bdtracker/v;->a(ZLcom/bytedance/bdtracker/h4;J)Lcom/bytedance/bdtracker/h4;

    :cond_7
    sput-object v6, Lcom/bytedance/bdtracker/v;->e:Lcom/bytedance/bdtracker/h4;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v2

    const-string v5, "[Navigator] onFragPause not in cache\uff1a{}"

    invoke-interface {v6, v5, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_9
    sget-object v3, Lcom/bytedance/bdtracker/v;->i:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 6
    sget-object v3, Lcom/bytedance/bdtracker/v;->d:Lcom/bytedance/bdtracker/h4;

    if-eqz v3, :cond_a

    iget-object v4, v3, Lcom/bytedance/bdtracker/h4;->u:Ljava/lang/String;

    sput-object v4, Lcom/bytedance/bdtracker/v;->g:Ljava/lang/String;

    sput-wide v0, Lcom/bytedance/bdtracker/v;->f:J

    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/bdtracker/v;->a(ZLcom/bytedance/bdtracker/h4;J)Lcom/bytedance/bdtracker/h4;

    sput-object v6, Lcom/bytedance/bdtracker/v;->d:Lcom/bytedance/bdtracker/h4;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    :cond_a
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Lcom/bytedance/bdtracker/v;->a:Lcom/bytedance/bdtracker/j0;

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/bdtracker/j0;->c(J)V

    const/4 v9, 0x1

    sput-boolean v9, Lcom/bytedance/bdtracker/v;->b:Z

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v4, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "[Navigator] onActivityResumed:{} {}"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/bytedance/bdtracker/b5;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v1, 0x0

    const-string v3, ""

    invoke-static/range {v0 .. v8}, Lcom/bytedance/bdtracker/v;->a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/h4;

    move-result-object v0

    sput-object v0, Lcom/bytedance/bdtracker/v;->d:Lcom/bytedance/bdtracker/h4;

    sget-object v1, Lcom/bytedance/bdtracker/v;->k:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v9

    iput v1, v0, Lcom/bytedance/bdtracker/h4;->A:I

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    sget p1, Lcom/bytedance/bdtracker/v;->c:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/bytedance/bdtracker/v;->c:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    sget-object p1, Lcom/bytedance/bdtracker/v;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget p1, Lcom/bytedance/bdtracker/v;->c:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/bytedance/bdtracker/v;->c:I

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    sput-object p1, Lcom/bytedance/bdtracker/v;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/bdtracker/v;->f:J

    .line 2
    new-instance p1, Lcom/bytedance/bdtracker/c;

    invoke-direct {p1}, Lcom/bytedance/bdtracker/c;-><init>()V

    invoke-static {p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$d;)V

    :cond_0
    return-void
.end method
