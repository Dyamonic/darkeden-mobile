.class final Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp;->createTaskNode(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/TaskNode;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/TaskNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/taptap/sdk/startup/task/TaskNode$Real;",
        "Lcom/taptap/sdk/startup/task/TaskNode$Real;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/startup/task/TaskNode$Real;",
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

.field final synthetic $this_createTaskNode:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/taptap/sdk/startup/StartUp;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/StartUp;Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iput-object p2, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$this_createTaskNode:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/taptap/sdk/startup/task/TaskNode$Real;)Lcom/taptap/sdk/startup/task/TaskNode$Real;
    .locals 5

    const-string v0, "$this$taskNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$this_createTaskNode:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/TaskNode$Real;->getTask()Lcom/taptap/sdk/startup/task/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taptap/sdk/startup/StartUp;->createTask(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/taptap/sdk/startup/task/TaskNode$Real;->copy(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/TaskNode$Real;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Lcom/taptap/sdk/startup/task/TaskNode$Real;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/StartUp$createTaskNode$1;->invoke(Lcom/taptap/sdk/startup/task/TaskNode$Real;)Lcom/taptap/sdk/startup/task/TaskNode$Real;

    move-result-object p1

    return-object p1
.end method
