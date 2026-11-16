.class public final Lcom/taptap/sdk/review/internal/ReviewInitializeTask;
.super Ljava/lang/Object;
.source "ReviewInitializeTask.kt"

# interfaces
.implements Lcom/taptap/sdk/startup/task/InitializeTask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/review/internal/ReviewInitializeTask;",
        "Lcom/taptap/sdk/startup/task/InitializeTask;",
        "()V",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "options",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
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
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lcom/taptap/sdk/review/internal/ReviewTracker;->INSTANCE:Lcom/taptap/sdk/review/internal/ReviewTracker;

    invoke-virtual {p1}, Lcom/taptap/sdk/review/internal/ReviewTracker;->trackInit$tap_review_release()V

    return-void
.end method
