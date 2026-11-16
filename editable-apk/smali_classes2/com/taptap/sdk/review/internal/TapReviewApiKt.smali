.class public final Lcom/taptap/sdk/review/internal/TapReviewApiKt;
.super Ljava/lang/Object;
.source "TapReviewApi.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001b\u0010\u0002\u001a\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0004\u0010\u0005\"\u001b\u0010\u0008\u001a\u00020\t8@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "URL_GET_CROSS_CODE",
        "",
        "reviewHttp",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getReviewHttp",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "reviewHttp$delegate",
        "Lkotlin/Lazy;",
        "reviewScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getReviewScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "reviewScope$delegate",
        "tap-review_release"
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
.field private static final URL_GET_CROSS_CODE:Ljava/lang/String; = "/sdk-core/v1/cross-app-code"

.field private static final reviewHttp$delegate:Lkotlin/Lazy;

.field private static final reviewScope$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt$reviewScope$2;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApiKt$reviewScope$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->reviewScope$delegate:Lkotlin/Lazy;

    .line 23
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt$reviewHttp$2;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewApiKt$reviewHttp$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->reviewHttp$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getReviewHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 1
    invoke-static {}, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->getReviewHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object v0

    return-object v0
.end method

.method private static final getReviewHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 23
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->reviewHttp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method public static final getReviewScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 16
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewApiKt;->reviewScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method
