.class public final Lcom/taptap/sdk/startup/StartUp;
.super Ljava/lang/Object;
.source "StartUp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/startup/StartUp$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartUp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartUp.kt\ncom/taptap/sdk/startup/StartUp\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,222:1\n1549#2:223\n1620#2,3:224\n1785#2,2:240\n1851#2,2:242\n1787#2:244\n1#3:227\n79#4,5:228\n113#4,7:233\n*S KotlinDebug\n*F\n+ 1 StartUp.kt\ncom/taptap/sdk/startup/StartUp\n*L\n52#1:223\n52#1:224,3\n175#1:240,2\n179#1:242,2\n175#1:244\n165#1:228,5\n165#1:233,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001!B\u000f\u0008\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B#\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0006\u0010\u0015\u001a\u00020\u000eJ\u001c\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0019\u001a\u00020\u0011J&\u0010\u001a\u001a\u0004\u0018\u00010\u000b*\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\"\u0010\u001d\u001a\u00020\u0011*\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001c\u0010\u001e\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u000c\u0010\u001f\u001a\u00020\u000e*\u00020\u001bH\u0002J&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00110\u0017*\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/taptap/sdk/startup/StartUp;",
        "",
        "builder",
        "Lcom/taptap/sdk/startup/StartUp$Builder;",
        "(Lcom/taptap/sdk/startup/StartUp$Builder;)V",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "tasks",
        "",
        "Lcom/taptap/sdk/startup/task/Task;",
        "(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Ljava/util/List;)V",
        "__inject",
        "",
        "buildGraph",
        "Lcom/taptap/sdk/startup/grpah/Graph;",
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        "findTask",
        "clazz",
        "",
        "initialize",
        "validate",
        "Lkotlin/Function1;",
        "",
        "taskNode",
        "createTask",
        "Lkotlinx/coroutines/CoroutineScope;",
        "task",
        "createTaskNode",
        "execute",
        "start",
        "updateTaskWhenSort",
        "Builder",
        "tap-initializer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tasks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/taptap/sdk/startup/StartUp;->options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    .line 34
    iput-object p3, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/taptap/sdk/startup/StartUp$Builder;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/StartUp$Builder;->getContext$tap_initializer_release()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/StartUp$Builder;->getOptions$tap_initializer_release()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/StartUp$Builder;->getTasks$tap_initializer_release()Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/taptap/sdk/startup/StartUp;-><init>(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Ljava/util/List;)V

    .line 45
    invoke-direct {p0}, Lcom/taptap/sdk/startup/StartUp;->__inject()V

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/taptap/sdk/startup/StartUp$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taptap/sdk/startup/StartUp;-><init>(Lcom/taptap/sdk/startup/StartUp$Builder;)V

    return-void
.end method

.method private final __inject()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Lcom/taptap/sdk/startup/utils/TaskFactoryCollector;

    invoke-direct {v1}, Lcom/taptap/sdk/startup/utils/TaskFactoryCollector;-><init>()V

    invoke-virtual {v1}, Lcom/taptap/sdk/startup/utils/TaskFactoryCollector;->collect()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 224
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 225
    check-cast v3, Lcom/taptap/sdk/startup/task/Task;

    .line 53
    sget-object v4, Lcom/taptap/sdk/startup/StartUp$__inject$1$1;->INSTANCE:Lcom/taptap/sdk/startup/StartUp$__inject$1$1;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v4}, Lcom/taptap/sdk/startup/task/Task;->reduce(Lkotlin/jvm/functions/Function1;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object v3

    .line 225
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 223
    check-cast v2, Ljava/lang/Iterable;

    .line 52
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$execute(Lcom/taptap/sdk/startup/StartUp;Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/taptap/sdk/startup/StartUp;->execute(Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    return-void
.end method

.method public static final synthetic access$findTask(Lcom/taptap/sdk/startup/StartUp;Ljava/lang/String;)Lcom/taptap/sdk/startup/task/Task;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/taptap/sdk/startup/StartUp;->findTask(Ljava/lang/String;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTasks$p(Lcom/taptap/sdk/startup/StartUp;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setTasks$p(Lcom/taptap/sdk/startup/StartUp;Ljava/util/List;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$start(Lcom/taptap/sdk/startup/StartUp;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/taptap/sdk/startup/StartUp;->start(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private final buildGraph(Ljava/util/List;)Lcom/taptap/sdk/startup/grpah/Graph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/startup/task/Task;",
            ">;)",
            "Lcom/taptap/sdk/startup/grpah/Graph<",
            "Lcom/taptap/sdk/startup/task/TaskNode;",
            ">;"
        }
    .end annotation

    .line 175
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/taptap/sdk/startup/grpah/Graph$Builder;

    invoke-direct {v0}, Lcom/taptap/sdk/startup/grpah/Graph$Builder;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/startup/task/Task;

    .line 178
    invoke-virtual {v1}, Lcom/taptap/sdk/startup/task/Task;->getDependsOn()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v1}, Lcom/taptap/sdk/startup/task/Task;->getDependsOn()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 242
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    new-instance v4, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    invoke-direct {v4, v1}, Lcom/taptap/sdk/startup/task/TaskNode$Real;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    check-cast v4, Lcom/taptap/sdk/startup/grpah/Node;

    new-instance v5, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    invoke-direct {p0, v3}, Lcom/taptap/sdk/startup/StartUp;->findTask(Ljava/lang/String;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/taptap/sdk/startup/task/TaskNode$Real;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    check-cast v5, Lcom/taptap/sdk/startup/grpah/Node;

    invoke-virtual {v0, v4, v5}, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->putEdge(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;

    goto :goto_1

    .line 184
    :cond_1
    new-instance v2, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    invoke-direct {v2, v1}, Lcom/taptap/sdk/startup/task/TaskNode$Real;-><init>(Lcom/taptap/sdk/startup/task/Task;)V

    check-cast v2, Lcom/taptap/sdk/startup/grpah/Node;

    new-instance v1, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v4}, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;-><init>(Lcom/taptap/sdk/startup/task/Task;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/taptap/sdk/startup/grpah/Node;

    invoke-virtual {v0, v2, v1}, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->putEdge(Lcom/taptap/sdk/startup/grpah/Node;Lcom/taptap/sdk/startup/grpah/Node;)Lcom/taptap/sdk/startup/grpah/Graph$Builder;

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v0}, Lcom/taptap/sdk/startup/grpah/Graph$Builder;->build()Lcom/taptap/sdk/startup/grpah/Graph;

    move-result-object p1

    return-object p1
.end method

.method private final execute(Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    .line 237
    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    .line 165
    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/Task;->getAction()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 239
    new-instance p3, Lkotlin/time/TimedValue;

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p3, p2, v0, v1, v2}, Lkotlin/time/TimedValue;-><init>(Ljava/lang/Object;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 165
    invoke-virtual {p3}, Lkotlin/time/TimedValue;->component1()Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p3}, Lkotlin/time/TimedValue;->component2-UwyO8pc()J

    move-result-wide p2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/Task;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thread: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cost: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TapStartUp"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final findTask(Ljava/lang/String;)Lcom/taptap/sdk/startup/task/Task;
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {v2}, Lcom/taptap/sdk/startup/task/Task;->getClazz()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/taptap/sdk/startup/task/Task;

    if-nez v1, :cond_2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not found task: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapStartUp"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private final start(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp;->tasks:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/taptap/sdk/startup/StartUp;->buildGraph(Ljava/util/List;)Lcom/taptap/sdk/startup/grpah/Graph;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/taptap/sdk/startup/StartUp;->options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    invoke-virtual {p0, p1, v1, v2}, Lcom/taptap/sdk/startup/StartUp;->updateTaskWhenSort(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/startup/grpah/Graph;->sort(Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final createTask(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/Task;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 124
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$createTask$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/startup/StartUp$createTask$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/Task;Lcom/taptap/sdk/startup/StartUp;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/startup/task/Task;->reduce(Lkotlin/jvm/functions/Function1;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final createTaskNode(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/TaskNode;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/TaskNode;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    instance-of v0, p2, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    if-eqz v0, :cond_0

    .line 100
    check-cast p2, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    new-instance v0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;-><init>(Lcom/taptap/sdk/startup/StartUp;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v0}, Lcom/taptap/sdk/startup/task/TaskNode$Real;->reduce(Lkotlin/jvm/functions/Function1;)Lcom/taptap/sdk/startup/task/TaskNode$Real;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/taptap/sdk/startup/task/TaskNode;

    goto :goto_0

    .line 106
    :cond_0
    instance-of p1, p2, Lcom/taptap/sdk/startup/task/TaskNode$Virtual;

    if-eqz p1, :cond_1

    :goto_0
    return-object p2

    .line 107
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final initialize()V
    .locals 3

    .line 66
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$initialize$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taptap/sdk/startup/StartUp$initialize$1;-><init>(Lcom/taptap/sdk/startup/StartUp;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final updateTaskWhenSort(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroid/content/Context;",
            "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/taptap/sdk/startup/task/TaskNode;",
            "Lcom/taptap/sdk/startup/task/TaskNode;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;-><init>(Lcom/taptap/sdk/startup/StartUp;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final validate(Lcom/taptap/sdk/startup/task/TaskNode;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/startup/task/TaskNode;",
            ")",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/taptap/sdk/startup/task/Task;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "taskNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/taptap/sdk/startup/StartUp$validate$1;

    invoke-direct {v0, p1}, Lcom/taptap/sdk/startup/StartUp$validate$1;-><init>(Lcom/taptap/sdk/startup/task/TaskNode;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
