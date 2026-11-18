.class public final Lcom/taptap/sdk/review/internal/TapReviewInternal$openReview$1;
.super Ljava/lang/Object;
.source "TapReviewInternal.kt"

# interfaces
.implements Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/review/internal/TapReviewInternal;->openReview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/taptap/sdk/review/internal/TapReviewInternal$openReview$1",
        "Lcom/taptap/sdk/review/ReviewCrossAppCodeCallback;",
        "onCodeResult",
        "",
        "crossAppCode",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodeResult(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 34
    sget-object v0, Lcom/taptap/sdk/review/internal/TapReviewInternal;->INSTANCE:Lcom/taptap/sdk/review/internal/TapReviewInternal;

    invoke-static {v0, p1}, Lcom/taptap/sdk/review/internal/TapReviewInternal;->access$handleReviewAction-IoAF18A(Lcom/taptap/sdk/review/internal/TapReviewInternal;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_0
    return-void
.end method
