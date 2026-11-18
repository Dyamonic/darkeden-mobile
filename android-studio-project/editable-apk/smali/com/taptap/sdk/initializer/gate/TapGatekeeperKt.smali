.class public final Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt;
.super Ljava/lang/Object;
.source "TapGatekeeper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "DEFAULT_GATEKEEPER_ERROR_LOG",
        "",
        "DEFAULT_GATEKEEPER_ERROR_TOAST",
        "showGatekeeperError",
        "Lkotlinx/coroutines/Job;",
        "Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;",
        "tap-initializer_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_GATEKEEPER_ERROR_LOG:Ljava/lang/String; = "\u5f53\u524d\u5e94\u7528\u521d\u59cb\u5316\u4fe1\u606f\u9519\u8bef, \u8bf7\u5728 TapTap \u5f00\u53d1\u8005\u4e2d\u5fc3\u68c0\u67e5[\u5f53\u524d\u5e94\u7528\u5305\u540d]\u4e0e[\u8c03\u7528\u521d\u59cb\u5316\u63a5\u53e3\u8bbe\u7f6e\u7684 clientId \u3001clientToken]\u662f\u5426\u5339\u914d"

.field private static final DEFAULT_GATEKEEPER_ERROR_TOAST:Ljava/lang/String; = "\u5f53\u524d\u5e94\u7528\u521d\u59cb\u5316\u4fe1\u606f\u9519\u8bef"


# direct methods
.method public static final showGatekeeperError(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)Lkotlinx/coroutines/Job;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperKt$showGatekeeperError$1;-><init>(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
