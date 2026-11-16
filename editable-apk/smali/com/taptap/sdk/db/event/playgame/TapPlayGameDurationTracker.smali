.class public final Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;
.super Ljava/lang/Object;
.source "TapPlayGameDurationTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0002\u0014\u001b\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\tH\u0003J\u0008\u0010#\u001a\u00020!H\u0002J\u0008\u0010$\u001a\u00020!H\u0002J\u0008\u0010%\u001a\u00020!H\u0002J\u0008\u0010&\u001a\u00020!H\u0002J\u0008\u0010\'\u001a\u00020!H\u0002J\u001c\u0010(\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010)\u001a\u00020*H\u0002J\u0006\u0010+\u001a\u00020!J\u0008\u0010,\u001a\u00020!H\u0003J\u0008\u0010-\u001a\u00020!H\u0003J\u000e\u0010.\u001a\u00020!2\u0006\u0010/\u001a\u00020*J\u0010\u00100\u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0019\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;",
        "",
        "()V",
        "MESSAGE_CODE_START",
        "",
        "MESSAGE_CODE_STOP",
        "MESSAGE_CODE_TIMER",
        "MESSAGE_CODE_TRACK",
        "MESSAGE_DATA_ONLY_USER",
        "",
        "MESSAGE_DATA_TIME",
        "MESSAGE_DATA_USERID",
        "MESSAGE_TIME_INTERVAL",
        "",
        "TAG",
        "autoEventEnable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "currentUserId",
        "deviceStartTime",
        "handler",
        "com/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1",
        "getHandler",
        "()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;",
        "handler$delegate",
        "Lkotlin/Lazy;",
        "isInitialized",
        "lifecycleCallbacks",
        "com/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1",
        "Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;",
        "playGameDurationStore",
        "Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;",
        "userStartTime",
        "appendDurationToStore",
        "",
        "userId",
        "handleAppOnBackground",
        "handleAppOnForeground",
        "handlerSendStartMessage",
        "handlerSendStopMessage",
        "handlerSendTimerMessage",
        "handlerSendTrackMessage",
        "onlyUser",
        "",
        "initializeIfNotInitialized",
        "sendDeviceDuration",
        "sendUserDuration",
        "setAutoEventEnable",
        "enable",
        "setUserId",
        "tap-db_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

.field private static final MESSAGE_CODE_START:I = 0x12

.field private static final MESSAGE_CODE_STOP:I = 0x13

.field private static final MESSAGE_CODE_TIMER:I = 0x11

.field private static final MESSAGE_CODE_TRACK:I = 0x14

.field private static final MESSAGE_DATA_ONLY_USER:Ljava/lang/String; = "only_user"

.field private static final MESSAGE_DATA_TIME:Ljava/lang/String; = "time"

.field private static final MESSAGE_DATA_USERID:Ljava/lang/String; = "userId"

.field private static final MESSAGE_TIME_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "TapEventPlayGameTracker"

.field private static final autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static currentUserId:Ljava/lang/String;

.field private static volatile deviceStartTime:J

.field private static final handler$delegate:Lkotlin/Lazy;

.field private static final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final lifecycleCallbacks:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;

.field private static playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

.field private static volatile userStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    .line 49
    sput-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    .line 52
    sput-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    .line 139
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handler$delegate:Lkotlin/Lazy;

    .line 221
    new-instance v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->lifecycleCallbacks:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$appendDurationToStore(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->appendDurationToStore(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCurrentUserId$p()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDeviceStartTime$p()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$getUserStartTime$p()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    return-wide v0
.end method

.method public static final synthetic access$handleAppOnBackground(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handleAppOnBackground()V

    return-void
.end method

.method public static final synthetic access$handleAppOnForeground(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handleAppOnForeground()V

    return-void
.end method

.method public static final synthetic access$sendDeviceDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->sendDeviceDuration()V

    return-void
.end method

.method public static final synthetic access$sendUserDuration(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->sendUserDuration()V

    return-void
.end method

.method public static final synthetic access$setDeviceStartTime$p(J)V
    .locals 0

    .line 27
    sput-wide p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    return-void
.end method

.method public static final synthetic access$setUserStartTime$p(J)V
    .locals 0

    .line 27
    sput-wide p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    return-void
.end method

.method private final appendDurationToStore(Ljava/lang/String;)V
    .locals 11

    .line 205
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 207
    sget-wide v2, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    sub-long v2, v0, v2

    .line 208
    sget-wide v4, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 209
    sput-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->deviceStartTime:J

    .line 210
    sget-object v4, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v2, v3}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->appendDeviceDuration(J)V

    .line 212
    :cond_0
    sget-wide v2, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    sub-long v2, v0, v2

    .line 214
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v8

    :goto_1
    if-nez v4, :cond_3

    sget-wide v9, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    cmp-long v4, v9, v6

    if-lez v4, :cond_3

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 215
    sput-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    .line 216
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, v2, v3}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->appendUserDuration(Ljava/lang/String;J)V

    .line 218
    :cond_3
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-static {p1, v5, v8, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore$default(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;ZILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;
    .locals 1

    .line 139
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    return-object v0
.end method

.method private final handleAppOnBackground()V
    .locals 2

    const-string v0, "TapEventPlayGameTracker"

    const-string v1, "handleAppOnBackground"

    .line 133
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendStopMessage()V

    .line 135
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->removeMessages(I)V

    return-void
.end method

.method private final handleAppOnForeground()V
    .locals 2

    const-string v0, "TapEventPlayGameTracker"

    const-string v1, "handleAppOnForeground"

    .line 127
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendStartMessage()V

    .line 129
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendTimerMessage()V

    return-void
.end method

.method private final handlerSendStartMessage()V
    .locals 5

    .line 93
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "handler.obtainMessage()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x12

    .line 94
    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final handlerSendStopMessage()V
    .locals 5

    .line 102
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "handler.obtainMessage()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x13

    .line 103
    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final handlerSendTimerMessage()V
    .locals 4

    .line 122
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->removeMessages(I)V

    .line 123
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private final handlerSendTrackMessage(Ljava/lang/String;Z)V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "handler.obtainMessage()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x14

    .line 112
    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "only_user"

    .line 115
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic handlerSendTrackMessage$default(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 110
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendTrackMessage(Ljava/lang/String;Z)V

    return-void
.end method

.method private final sendDeviceDuration()V
    .locals 2

    .line 183
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 184
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getDeviceDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackDevicePlayGame(J)V

    .line 186
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->resetDeviceStore()V

    goto :goto_1

    .line 188
    :cond_1
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final sendUserDuration()V
    .locals 2

    .line 194
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 195
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->getPlayGameDurationBean$tap_db_release()Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapPlayGameDurationBean;->getUserDuration()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackUserPlayGame(Ljava/util/List;)V

    .line 197
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->resetUserStore()V

    goto :goto_1

    .line 199
    :cond_1
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;->syncStore(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final initializeIfNotInitialized()V
    .locals 3

    .line 57
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TapEventPlayGameTracker"

    const-string v1, "initialize start"

    .line 60
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    invoke-direct {v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;-><init>()V

    sput-object v1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->playGameDurationStore:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationStore;

    .line 62
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    sget-object v2, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->lifecycleCallbacks:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$lifecycleCallbacks$1;

    check-cast v2, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->registerActivityLifecycleCallbacks(Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleCallbacks;)V

    .line 63
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/utils/TapActivityLifecycleTracker;->isAppForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendStartMessage()V

    :cond_1
    const-string v1, "initialize end"

    .line 66
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setAutoEventEnable(Z)V
    .locals 3

    .line 81
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    .line 84
    sget-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->currentUserId:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendTrackMessage$default(Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendTimerMessage()V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendStopMessage()V

    .line 88
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->getHandler()Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker$handler$2$1;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 2

    .line 70
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->currentUserId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p1, v1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->handlerSendTrackMessage(Ljava/lang/String;Z)V

    .line 74
    :cond_0
    sput-object p1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->currentUserId:Ljava/lang/String;

    .line 75
    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->userStartTime:J

    :cond_3
    return-void
.end method
