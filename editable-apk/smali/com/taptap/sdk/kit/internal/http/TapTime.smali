.class public final Lcom/taptap/sdk/kit/internal/http/TapTime;
.super Ljava/lang/Object;
.source "TapTime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/taptap/sdk/kit/internal/http/TapTime;",
        "",
        "()V",
        "TAG",
        "",
        "currentTimeInMillis",
        "",
        "getCurrentTimeInMillis",
        "()J",
        "isServerTime",
        "",
        "timeDiff",
        "calibrateServerTime",
        "",
        "serverNow",
        "",
        "(Ljava/lang/Integer;)V",
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
.field public static final INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

.field private static final TAG:Ljava/lang/String; = "TapTime"

.field private static isServerTime:Z

.field private static timeDiff:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/kit/internal/http/TapTime;

    invoke-direct {v0}, Lcom/taptap/sdk/kit/internal/http/TapTime;-><init>()V

    sput-object v0, Lcom/taptap/sdk/kit/internal/http/TapTime;->INSTANCE:Lcom/taptap/sdk/kit/internal/http/TapTime;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized calibrateServerTime(Ljava/lang/Integer;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 19
    :try_start_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/taptap/sdk/kit/internal/http/TapTime;->timeDiff:J

    const-string p1, "TapTime"

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calibrateServerTime: system elapsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", time difference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taptap/sdk/kit/internal/http/TapTime;->timeDiff:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 25
    sput-boolean p1, Lcom/taptap/sdk/kit/internal/http/TapTime;->isServerTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final getCurrentTimeInMillis()J
    .locals 4

    .line 13
    sget-boolean v0, Lcom/taptap/sdk/kit/internal/http/TapTime;->isServerTime:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/taptap/sdk/kit/internal/http/TapTime;->timeDiff:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
