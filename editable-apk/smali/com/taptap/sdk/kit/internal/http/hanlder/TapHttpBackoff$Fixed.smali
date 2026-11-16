.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;
.super Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
.source "TapHttpBackoff.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fixed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "maxCount",
        "",
        "(I)V",
        "currentCount",
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
.field private currentCount:I

.field private final maxCount:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;-><init>()V

    iput p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->maxCount:I

    const-string p1, "Fixed"

    .line 37
    iput-object p1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->tag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public nextBackoffMillis()J
    .locals 2

    .line 42
    iget v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->currentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->currentCount:I

    iget v1, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->maxCount:I

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->currentCount:I

    .line 51
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Fixed;->getCanTimeDeltaRetry()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
