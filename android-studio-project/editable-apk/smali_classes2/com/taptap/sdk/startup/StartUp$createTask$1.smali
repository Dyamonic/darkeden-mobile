.class final Lcom/taptap/sdk/startup/StartUp$createTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp;->createTask(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)Lcom/taptap/sdk/startup/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/taptap/sdk/startup/task/Task;",
        "Lcom/taptap/sdk/startup/task/Task;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/taptap/sdk/startup/task/Task;",
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

.field final synthetic $task:Lcom/taptap/sdk/startup/task/Task;

.field final synthetic $this_createTask:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/taptap/sdk/startup/StartUp;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/taptap/sdk/startup/task/Task;Lcom/taptap/sdk/startup/StartUp;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$this_createTask:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    iput-object p3, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iput-object p4, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;
    .locals 11

    const-string v0, "$this$reduce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$this_createTask:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;

    iget-object v4, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    iget-object v5, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iget-object v6, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;-><init>(Lcom/taptap/sdk/startup/task/Task;Lcom/taptap/sdk/startup/StartUp;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x3f

    const/4 v10, 0x0

    move-object v1, p1

    .line 125
    invoke-static/range {v1 .. v10}, Lcom/taptap/sdk/startup/task/Task;->copy$default(Lcom/taptap/sdk/startup/task/Task;Ljava/lang/String;Ljava/lang/Class;ZILjava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {p0, p1}, Lcom/taptap/sdk/startup/StartUp$createTask$1;->invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object p1

    return-object p1
.end method
