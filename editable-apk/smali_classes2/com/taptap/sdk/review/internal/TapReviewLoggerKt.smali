.class public final Lcom/taptap/sdk/review/internal/TapReviewLoggerKt;
.super Ljava/lang/Object;
.source "TapReviewLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\u001a\u001c\u0010\u0005\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0000\u001a\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "LOGGER_TAG",
        "",
        "logDebug",
        "",
        "msg",
        "logError",
        "t",
        "",
        "logInfo",
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
.field public static final LOGGER_TAG:Ljava/lang/String; = "TapReviewLog"


# direct methods
.method public static final logDebug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TapReviewLog"

    .line 7
    invoke-static {v0, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "TapReviewLog"

    .line 11
    invoke-static {v0, p0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final logInfo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "TapReviewLog"

    .line 9
    invoke-static {v0, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
