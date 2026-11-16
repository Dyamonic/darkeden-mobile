.class public final Lcom/taptap/sdk/moment/TapTapMoment;
.super Ljava/lang/Object;
.source "TapTapMoment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;,
        Lcom/taptap/sdk/moment/TapTapMoment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/TapTapMoment;",
        "",
        "()V",
        "Companion",
        "TapTapMomentCallback",
        "tap-moment_release"
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
.field public static final Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

.field private static final PERIOD:J = 0xea60L

.field private static final event:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSuccess:Z

.field private static lastTime:J

.field private static noticeInfo:Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;

.field private static tapMomentCallback:Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 49
    invoke-static {v0, v2, v1, v3, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->event:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 72
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1;

    invoke-direct {v0, v1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEvent$cp()Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->event:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object v0
.end method

.method public static final synthetic access$getLastSuccess$cp()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/taptap/sdk/moment/TapTapMoment;->lastSuccess:Z

    return v0
.end method

.method public static final synthetic access$getLastTime$cp()J
    .locals 2

    .line 25
    sget-wide v0, Lcom/taptap/sdk/moment/TapTapMoment;->lastTime:J

    return-wide v0
.end method

.method public static final synthetic access$getNoticeInfo$cp()Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->noticeInfo:Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;

    return-object v0
.end method

.method public static final synthetic access$getTapMomentCallback$cp()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;
    .locals 1

    .line 25
    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->tapMomentCallback:Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    return-object v0
.end method

.method public static final synthetic access$setLastSuccess$cp(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/taptap/sdk/moment/TapTapMoment;->lastSuccess:Z

    return-void
.end method

.method public static final synthetic access$setLastTime$cp(J)V
    .locals 0

    .line 25
    sput-wide p0, Lcom/taptap/sdk/moment/TapTapMoment;->lastTime:J

    return-void
.end method

.method public static final synthetic access$setNoticeInfo$cp(Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/taptap/sdk/moment/TapTapMoment;->noticeInfo:Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;

    return-void
.end method

.method public static final synthetic access$setTapMomentCallback$cp(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/taptap/sdk/moment/TapTapMoment;->tapMomentCallback:Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    return-void
.end method

.method public static final close()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->close()V

    return-void
.end method

.method public static final closeWithTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->closeWithTitle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final fetchNotification()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->fetchNotification()V

    return-void
.end method

.method public static final open()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->open()V

    return-void
.end method

.method public static final openScene(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->openScene(Ljava/lang/String;)V

    return-void
.end method

.method public static final publish(Lcom/taptap/sdk/moment/model/PublishMetaData;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->publish(Lcom/taptap/sdk/moment/model/PublishMetaData;)V

    return-void
.end method

.method public static final setCallback(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/taptap/sdk/moment/TapTapMoment;->Companion:Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->setCallback(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V

    return-void
.end method
