.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;
.super Ljava/lang/Object;
.source "TapHttpRetry.kt"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoneRetry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpRetry$NoneRetry;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/ITapHttpRetry;",
        "()V",
        "nextRetryMillis",
        "",
        "e",
        "",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextRetryMillis(Ljava/lang/Throwable;)J
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
