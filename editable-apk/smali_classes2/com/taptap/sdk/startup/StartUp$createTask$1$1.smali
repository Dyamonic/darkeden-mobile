.class final Lcom/taptap/sdk/startup/StartUp$createTask$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartUp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/startup/StartUp$createTask$1;->invoke(Lcom/taptap/sdk/startup/task/Task;)Lcom/taptap/sdk/startup/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStartUp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StartUp.kt\ncom/taptap/sdk/startup/StartUp$createTask$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n1851#2,2:223\n*S KotlinDebug\n*F\n+ 1 StartUp.kt\ncom/taptap/sdk/startup/StartUp$createTask$1$1\n*L\n127#1:223,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.taptap.sdk.startup.StartUp$createTask$1$1"
    f = "StartUp.kt"
    i = {}
    l = {
        0x82
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

.field final synthetic $task:Lcom/taptap/sdk/startup/task/Task;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/taptap/sdk/startup/StartUp;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/startup/task/Task;Lcom/taptap/sdk/startup/StartUp;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/startup/task/Task;",
            "Lcom/taptap/sdk/startup/StartUp;",
            "Landroid/content/Context;",
            "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/startup/StartUp$createTask$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    iput-object p2, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iput-object p3, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;

    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    iget-object v2, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iget-object v3, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;-><init>(Lcom/taptap/sdk/startup/task/Task;Lcom/taptap/sdk/startup/StartUp;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 126
    iget v1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/taptap/sdk/startup/StartUp;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    invoke-virtual {p1}, Lcom/taptap/sdk/startup/task/Task;->getDependsOn()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    .line 223
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    move-object v1, p1

    :goto_0
    move-object p1, p0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 128
    invoke-static {v3, v4}, Lcom/taptap/sdk/startup/StartUp;->access$findTask(Lcom/taptap/sdk/startup/StartUp;Ljava/lang/String;)Lcom/taptap/sdk/startup/task/Task;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 129
    invoke-virtual {v4}, Lcom/taptap/sdk/startup/task/Task;->getJob()Lkotlinx/coroutines/Job;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 130
    iput-object v3, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->label:I

    invoke-interface {v4, p1}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    .line 134
    :cond_3
    iget-object v0, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->this$0:Lcom/taptap/sdk/startup/StartUp;

    iget-object v1, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$task:Lcom/taptap/sdk/startup/task/Task;

    iget-object v2, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$context:Landroid/content/Context;

    iget-object p1, p1, Lcom/taptap/sdk/startup/StartUp$createTask$1$1;->$options:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    invoke-static {v0, v1, v2, p1}, Lcom/taptap/sdk/startup/StartUp;->access$execute(Lcom/taptap/sdk/startup/StartUp;Lcom/taptap/sdk/startup/task/Task;Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    .line 135
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
