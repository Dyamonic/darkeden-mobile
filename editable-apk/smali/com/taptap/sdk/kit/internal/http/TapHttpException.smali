.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpException;
.super Ljava/lang/Object;
.source "TapHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/http/TapHttpException$ServerError;,
        Lcom/taptap/sdk/kit/internal/http/TapHttpException$NoServerError;,
        Lcom/taptap/sdk/kit/internal/http/TapHttpException$ParseDataError;,
        Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttpException;",
        "",
        "()V",
        "NoServerError",
        "ParseDataError",
        "ServerError",
        "UnknownError",
        "tap-kit_release"
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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
