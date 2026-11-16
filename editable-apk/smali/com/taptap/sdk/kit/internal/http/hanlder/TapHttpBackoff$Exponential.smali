.class public final Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;
.super Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;
.source "TapHttpBackoff.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Exponential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;",
        "Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;",
        "()V",
        "mCurrentIntervalMillis",
        "",
        "tag",
        "",
        "getTag",
        "()Ljava/lang/String;",
        "nextBackoffMillis",
        "reset",
        "",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential$Companion;

.field private static final INIT_INTERVAL_MILLIS:J = 0x7d0L

.field private static final MAX_INTERVAL_MILLIS:J = 0x927c0L

.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->Companion:Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/AbsTapHttpBackoff;-><init>()V

    const-string v0, "Exponential"

    .line 61
    iput-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->tag:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 69
    iput-wide v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->mCurrentIntervalMillis:J

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public nextBackoffMillis()J
    .locals 8

    .line 76
    iget-wide v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->mCurrentIntervalMillis:J

    const/4 v2, 0x2

    int-to-long v2, v2

    mul-long v4, v0, v2

    const-wide/32 v6, 0x927c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    return-wide v6

    :cond_0
    mul-long/2addr v0, v2

    .line 79
    iput-wide v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->mCurrentIntervalMillis:J

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 84
    iput-wide v0, p0, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->mCurrentIntervalMillis:J

    .line 85
    invoke-virtual {p0}, Lcom/taptap/sdk/kit/internal/http/hanlder/TapHttpBackoff$Exponential;->getCanTimeDeltaRetry()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Exponential"

    return-object v0
.end method
