.class final Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TapGatekeeper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt;->showGatekeeperError(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)Lkotlinx/coroutines/Job;
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
    c = "com.taptap.sdk.initializer.gate.TapGatekeeperKt$showGatekeeperError$1"
    f = "TapGatekeeper.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_showGatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

.field label:I


# direct methods
.method constructor <init>(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->$this_showGatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;

    iget-object v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->$this_showGatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    invoke-direct {p1, v0, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;-><init>(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 71
    iget v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->$this_showGatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;->getErrorToast()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u5f53\u524d\u5e94\u7528\u521d\u59cb\u5316\u4fe1\u606f\u9519\u8bef"

    :cond_0
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 72
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object p1, p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;->$this_showGatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    invoke-virtual {p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;->getErrorLog()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u5f53\u524d\u5e94\u7528\u521d\u59cb\u5316\u4fe1\u606f\u9519\u8bef, \u8bf7\u5728 TapTap \u5f00\u53d1\u8005\u4e2d\u5fc3\u68c0\u67e5[\u5f53\u524d\u5e94\u7528\u5305\u540d]\u4e0e[\u8c03\u7528\u521d\u59cb\u5316\u63a5\u53e3\u8bbe\u7f6e\u7684 clientId \u3001clientToken]\u662f\u5426\u5339\u914d"

    :cond_1
    const/4 v0, 0x4

    const-string v1, "TapInitializer"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 79
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
