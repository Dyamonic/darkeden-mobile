.class public Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;
.super Ljava/lang/Object;
.source "TdsActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$Single;,
        Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;
    }
.end annotation


# static fields
.field private static final activityLock:Ljava/lang/Object;

.field private static final aliveActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile isBackground:Z


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private appLifecycleCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private rootActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->aliveActivityList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->activityLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;Landroid/app/Activity;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->handleAppActive(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Z)Z
    .locals 0

    .line 12
    invoke-static {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->checkActivityExist(Landroid/app/Activity;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 12
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->aliveActivityList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 12
    sput-boolean p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->notifyAppLifecycleCallback()V

    return-void
.end method

.method private static checkActivityExist(Landroid/app/Activity;Z)Z
    .locals 4

    const/4 v0, 0x0

    .line 110
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->activityLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    sget-object v2, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->aliveActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 114
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    if-eqz p1, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 p0, 0x1

    .line 116
    monitor-exit v1

    return p0

    .line 119
    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static getInstance()Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$Single;->INSTANCE:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$Single;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$Single;->manager:Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;

    return-object v0
.end method

.method private handleAppActive(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->activityLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->aliveActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 94
    sget-boolean v2, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    if-eqz v2, :cond_1

    .line 95
    sput-boolean v3, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    .line 96
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->notifyAppLifecycleCallback()V

    .line 99
    :cond_1
    invoke-static {p1, v3}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->checkActivityExist(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 100
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private notifyAppLifecycleCallback()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->appLifecycleCallbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;

    .line 143
    sget-boolean v2, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->isBackground:Z

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;->onEnterBackground()V

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {v1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;->onEnterForeground()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private registerCallback(Landroid/app/Application;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$1;-><init>(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;)V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 85
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 2

    .line 27
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->aliveActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->rootActivityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public registerAppLifecycleCallback(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->appLifecycleCallbackList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->appLifecycleCallbackList:Ljava/util/List;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->appLifecycleCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->registerCallback(Landroid/app/Application;)V

    :cond_0
    return-void
.end method

.method public unregisterAppLifecycleCallback(Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager$AppLifecycleCallback;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/TdsActivityManager;->appLifecycleCallbackList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
