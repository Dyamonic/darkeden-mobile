.class public final Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "TapActivityLifecycleTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapActivityLifecycleTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapActivityLifecycleTracker.kt\ncom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,375:1\n37#2,2:376\n*S KotlinDebug\n*F\n+ 1 TapActivityLifecycleTracker.kt\ncom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker\n*L\n363#1:376,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000fH\u0002\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012H\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0012H\u0002J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0005H\u0007J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\nJ\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u000e\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\rJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0005H\u0002J\u000e\u0010$\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\rR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;",
        "",
        "()V",
        "activityList",
        "Ljava/util/LinkedList;",
        "Landroid/app/Activity;",
        "configCount",
        "",
        "foregroundCount",
        "isBackground",
        "",
        "mActivityLifecycleCallbacks",
        "",
        "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "collectActivityLifecycleCallbacks",
        "",
        "()[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
        "getActivitiesByReflect",
        "",
        "getActivityList",
        "getActivityThread",
        "getActivityThreadInActivityThreadStaticField",
        "getActivityThreadInActivityThreadStaticMethod",
        "getTopActivity",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "isAppForeground",
        "log",
        "msg",
        "",
        "registerActivityLifecycleCallbacks",
        "callback",
        "setTopActivity",
        "activity",
        "unregisterActivityLifecycleCallbacks",
        "tap-kit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

.field private static final activityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static configCount:I

.field private static foregroundCount:I

.field private static isBackground:Z

.field private static final mActivityLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->mActivityLifecycleCallbacks:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->activityList:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$collectActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;)[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->collectActivityLifecycleCallbacks()[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActivityList$p()Ljava/util/LinkedList;
    .locals 1

    .line 24
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->activityList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final synthetic access$getConfigCount$p()I
    .locals 1

    .line 24
    sget v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->configCount:I

    return v0
.end method

.method public static final synthetic access$getForegroundCount$p()I
    .locals 1

    .line 24
    sget v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->foregroundCount:I

    return v0
.end method

.method public static final synthetic access$isBackground$p()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->isBackground:Z

    return v0
.end method

.method public static final synthetic access$log(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setBackground$p(Z)V
    .locals 0

    .line 24
    sput-boolean p0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->isBackground:Z

    return-void
.end method

.method public static final synthetic access$setConfigCount$p(I)V
    .locals 0

    .line 24
    sput p0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->configCount:I

    return-void
.end method

.method public static final synthetic access$setForegroundCount$p(I)V
    .locals 0

    .line 24
    sput p0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->foregroundCount:I

    return-void
.end method

.method public static final synthetic access$setTopActivity(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;Landroid/app/Activity;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->setTopActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private final collectActivityLifecycleCallbacks()[Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;
    .locals 3

    .line 361
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->mActivityLifecycleCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 363
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    .line 377
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 365
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    monitor-exit v0

    .line 366
    check-cast v1, [Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    return-object v1

    :catchall_0
    move-exception v1

    .line 361
    monitor-exit v0

    throw v1
.end method

.method private final getActivitiesByReflect()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 301
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "activityThread.javaClass\u2026laredField(\"mActivities\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 302
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 303
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 305
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v1

    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 306
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "activity"

    .line 307
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-string v8, "activityClientRecordClas\u2026DeclaredField(\"activity\")"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroid/app/Activity;

    if-eqz v8, :cond_3

    check-cast v7, Landroid/app/Activity;

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    if-nez v3, :cond_5

    const-string v8, "paused"

    .line 311
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string v8, "activityClientRecordClas\u2026etDeclaredField(\"paused\")"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 313
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v7

    goto :goto_1

    .line 316
    :cond_4
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 319
    :cond_5
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v1, v3

    goto :goto_3

    :catch_1
    move-exception v2

    .line 323
    :goto_3
    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "TapActivityLifecycleTracker"

    const-string v4, "getActivitiesByReflect"

    invoke-static {v3, v4, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    :cond_6
    if-eqz v3, :cond_7

    .line 326
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 328
    :cond_7
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getActivityList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->activityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getActivitiesByReflect()Ljava/util/List;

    move-result-object v1

    .line 291
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 292
    new-instance v1, Ljava/util/LinkedList;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final getActivityThread()Ljava/lang/Object;
    .locals 1

    .line 332
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 339
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sCurrentActivityThread"

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 344
    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "TapActivityLifecycleTracker"

    const-string v3, "getActivityThreadInActivityThreadStaticField: "

    invoke-static {v2, v3, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 351
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 352
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 354
    check-cast v1, Ljava/lang/Throwable;

    const-string v2, "TapActivityLifecycleTracker"

    const-string v3, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-static {v2, v3, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final getTopActivity()Landroid/app/Activity;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 45
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 47
    sget-object v2, Lcom/taptap/sdk/kit/internal/utils/TapActivityUtils;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityUtils;

    invoke-virtual {v2, v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final setTopActivity(Landroid/app/Activity;)V
    .locals 2

    .line 276
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->activityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Application;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker$init$1;-><init>()V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public final isAppForeground()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->isBackground:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final registerActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->mActivityLifecycleCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->mActivityLifecycleCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
