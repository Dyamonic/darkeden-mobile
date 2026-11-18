.class final Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp;->updateTaskWhenSort(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/startup/task/TaskNode;",
        "taskNode",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

.field final synthetic $this_updateTaskWhenSort:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/taptap/sdk/startup/StartUp;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/StartUp;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iput-object p2, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$this_updateTaskWhenSort:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/taptap/sdk/startup/task/TaskNode;)Lcom/taptap/sdk/startup/task/TaskNode;
    .locals 5

    const-string v0, "taskNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$this_updateTaskWhenSort:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/taptap/sdk/startup/StartUp;->createTaskNode(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/TaskNode;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/TaskNode;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    sget-object v1, Lcom/taptap/sdk/startup/utils/ListUtils;->INSTANCE:Lcom/taptap/sdk/startup/utils/ListUtils;

    iget-object v2, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    invoke-static {v2}, Lcom/taptap/sdk/startup/StartUp;->access$getTasks$p(Lcom/taptap/sdk/startup/StartUp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/taptap/sdk/startup/task/TaskNode;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v3

    iget-object v4, p0, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    invoke-virtual {v4, p1}, Lcom/taptap/sdk/startup/StartUp;->validate(Lcom/taptap/sdk/startup/task/TaskNode;)Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/taptap/sdk/startup/utils/ListUtils;->updateOrInsert(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taptap/sdk/startup/StartUp;->access$setTasks$p(Lcom/taptap/sdk/startup/StartUp;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Lcom/taptap/sdk/startup/task/TaskNode;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/StartUp$updateTaskWhenSort$1;->invoke(Lcom/taptap/sdk/startup/task/TaskNode;)Lcom/taptap/sdk/startup/task/TaskNode;

    move-result-object p1

    return-object p1
.end method
