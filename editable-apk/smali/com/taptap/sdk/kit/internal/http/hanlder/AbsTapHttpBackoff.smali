.class public abstract Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
.super Ljava/lang/Object;
.source "TapHttpBackoff.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0012H&R\u001a\u0010\u0003\u001a\u00020\u0004X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0012\u0010\t\u001a\u00020\nX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "",
        "()V",
        "canTimeDeltaRetry",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getCanTimeDeltaRetry",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setCanTimeDeltaRetry",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "canInvalidTimeRetry",
        "",
        "nextBackoffMillis",
        "",
        "reset",
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


# instance fields
.field private canTimeDeltaRetry:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->canTimeDeltaRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final canInvalidTimeRetry()Z
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->canTimeDeltaRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method protected final getCanTimeDeltaRetry()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->canTimeDeltaRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract nextBackoffMillis()J
.end method

.method public abstract reset()V
.end method

.method protected final setCanTimeDeltaRetry(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;->canTimeDeltaRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
