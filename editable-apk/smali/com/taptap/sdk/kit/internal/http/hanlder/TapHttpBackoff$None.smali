.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;
.super Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
.source "TapHttpBackoff.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "()V",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
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
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;-><init>()V

    const-string v0, "None"

    .line 24
    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public nextBackoffMillis()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$None;->getCanTimeDeltaRetry()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
