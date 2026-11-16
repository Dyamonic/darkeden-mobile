.class public final Lcom/taptap/sdk/review/internal/TapReviewApi;
.super Ljava/lang/Object;
.source "TapReviewApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/review/internal/TapReviewApi;",
        "",
        "()V",
        "fetchCrossAppCode",
        "Lkotlinx/coroutines/Job;",
        "callback",
        "Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;",
        "tap-review_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/review/internal/TapReviewApi;

    invoke-direct {v0}, Lcom/taptap/sdk/review/internal/TapReviewApi;-><init>()V

    sput-object v0, Lcom/taptap/sdk/review/internal/TapReviewApi;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fetchCrossAppCode$default(Lcom/taptap/sdk/review/internal/TapReviewApi;Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/review/internal/TapReviewApi;->fetchCrossAppCode(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fetchCrossAppCode(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;)Lkotlinx/coroutines/Job;
    .locals 6

    .line 31
    invoke-static {}, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->getReviewScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/taptap/sdk/review/internal/TapReviewApi$fetchCrossAppCode$1;-><init>(Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method
