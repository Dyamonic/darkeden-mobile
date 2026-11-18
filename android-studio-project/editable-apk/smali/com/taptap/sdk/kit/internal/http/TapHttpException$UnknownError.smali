.class public final Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;
.super Lcom/taptap/sdk/kit/internal/exception/TapTapException;
.source "TapHttpException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/TapHttpException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnknownError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapHttpException$UnknownError;",
        "Lcom/taptap/sdk/kit/internal/exception/TapTapException;",
        "()V",
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
    .locals 1

    const-string v0, "TapHttpException.UnknownError"

    .line 31
    invoke-direct {p0, v0}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;-><init>(Ljava/lang/String;)V

    return-void
.end method
