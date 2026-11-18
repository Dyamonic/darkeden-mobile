.class public final Lcom/taptap/sdk/review/TapTapReview;
.super Ljava/lang/Object;
.source "TapTapReview.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/taptap/sdk/review/TapTapReview;",
        "",
        "()V",
        "openReview",
        "",
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
.field public static final INSTANCE:Lcom/taptap/sdk/review/TapTapReview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/review/TapTapReview;

    invoke-direct {v0}, Lcom/taptap/sdk/review/TapTapReview;-><init>()V

    sput-object v0, Lcom/taptap/sdk/review/TapTapReview;->INSTANCE:Lcom/taptap/sdk/review/TapTapReview;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final openReview()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->openReview()V

    return-void
.end method
