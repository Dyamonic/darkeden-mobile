.class public final Lcom/taptap/sdk/moment/TapTapMoment$Companion;
.super Ljava/lang/Object;
.source "TapTapMoment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/TapTapMoment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u0013\u001a\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0007H\u0007J\u001c\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0007J\u0008\u0010\u001a\u001a\u00020\u0007H\u0007J\u0008\u0010\u001b\u001a\u00020\u0007H\u0007J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0018H\u0007J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 H\u0007J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/taptap/sdk/moment/TapTapMoment$Companion;",
        "",
        "()V",
        "PERIOD",
        "",
        "event",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "lastSuccess",
        "",
        "lastTime",
        "noticeInfo",
        "Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;",
        "tapMomentCallback",
        "Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;",
        "getTapMomentCallback$tap_moment_release",
        "()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;",
        "setTapMomentCallback$tap_moment_release",
        "(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V",
        "_fetchNotification",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "close",
        "closeWithTitle",
        "title",
        "",
        "content",
        "fetchNotification",
        "open",
        "openScene",
        "sceneId",
        "publish",
        "publishMetaData",
        "Lcom/taptap/sdk/moment/model/PublishMetaData;",
        "setCallback",
        "callback",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;-><init>()V

    return-void
.end method

.method private final _fetchNotification(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;

    iget v1, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;-><init>(Lcom/taptap/sdk/moment/TapTapMoment$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 236
    iget v2, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 238
    :try_start_1
    sget-object p1, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    iput-object p0, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/taptap/sdk/moment/TapTapMoment$Companion$_fetchNotification$1;->label:I

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/Moment;->getNoticeData-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;

    .line 239
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 v2, 0x4e20

    .line 241
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;->getUnreadCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-interface {v1, v2, v4}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    .line 243
    :cond_4
    invoke-static {p1}, Lcom/taptap/sdk/moment/TapTapMoment;->access$setNoticeInfo$cp(Lcom/taptap/sdk/moment/legacy/entity/NoticeInfo;)V

    .line 244
    invoke-static {v3}, Lcom/taptap/sdk/moment/TapTapMoment;->access$setLastSuccess$cp(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, p0

    .line 246
    :goto_2
    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x4e84

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-interface {v0, v1, p1}, Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;->onCallback(ILjava/lang/String;)V

    :cond_5
    const/4 p1, 0x0

    .line 250
    invoke-static {p1}, Lcom/taptap/sdk/moment/TapTapMoment;->access$setLastSuccess$cp(Z)V

    .line 252
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public static final synthetic access$_fetchNotification(Lcom/taptap/sdk/moment/TapTapMoment$Companion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->_fetchNotification(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 168
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "close"

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackStart$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/Moment;->closeMomentWithConfirmDialog()V

    .line 174
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const-string v2, "close"

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackSuccess$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final closeWithTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 183
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    .line 187
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "close"

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackStart$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 188
    sget-object v1, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    new-instance v2, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;

    invoke-direct {v2, p1, p2, v0}, Lcom/taptap/sdk/moment/TapTapMoment$Companion$closeWithTitle$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/moment/Moment;->closeMomentWithConfirmDialog(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final fetchNotification()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 227
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->access$getEvent$cp()Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getTapMomentCallback$tap_moment_release()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;
    .locals 1

    .line 44
    invoke-static {}, Lcom/taptap/sdk/moment/TapTapMoment;->access$getTapMomentCallback$cp()Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;

    move-result-object v0

    return-object v0
.end method

.method public final open()V
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 132
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "open"

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackStart$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 137
    sget-object v7, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/taptap/sdk/moment/Moment;->openTapMoment$default(Lcom/taptap/sdk/moment/Moment;ILorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 141
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const-string v2, "open"

    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/MomentTracker;->trackSuccess$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final openScene(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    const-string v2, "scene_id"

    .line 111
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 110
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "openScene"

    .line 109
    invoke-virtual {v1, v4, v0, v3}, Lcom/taptap/sdk/moment/MomentTracker;->trackStart$tap_moment_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    sget-object v5, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 116
    sget-object v1, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    invoke-virtual {v1, p1}, Lcom/taptap/sdk/moment/Moment;->idToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 114
    invoke-static/range {v5 .. v10}, Lcom/taptap/sdk/moment/Moment;->openTapMoment$default(Lcom/taptap/sdk/moment/Moment;ILorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/Object;)V

    .line 120
    sget-object v1, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    .line 122
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 120
    invoke-virtual {v1, v4, v0, p1}, Lcom/taptap/sdk/moment/MomentTracker;->trackSuccess$tap_moment_release(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final publish(Lcom/taptap/sdk/moment/model/PublishMetaData;)V
    .locals 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "publishMetaData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/TapMomentInternal;->setCurrentPublishSessionId(Ljava/lang/String;)V

    .line 153
    sget-object v2, Lcom/taptap/sdk/moment/MomentTracker;->INSTANCE:Lcom/taptap/sdk/moment/MomentTracker;

    sget-object v0, Lcom/taptap/sdk/moment/TapMomentInternal;->INSTANCE:Lcom/taptap/sdk/moment/TapMomentInternal;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/TapMomentInternal;->getCurrentPublishSessionId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "publish"

    invoke-static/range {v2 .. v7}, Lcom/taptap/sdk/moment/MomentTracker;->trackStart$tap_moment_release$default(Lcom/taptap/sdk/moment/MomentTracker;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 154
    sget-object v8, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    .line 156
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/model/PublishMetaData;->getVideoPaths()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v1

    .line 159
    :goto_0
    sget-object v0, Lcom/taptap/sdk/moment/Moment;->INSTANCE:Lcom/taptap/sdk/moment/Moment;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/moment/Moment;->videoMetaDataToJSONObject(Lcom/taptap/sdk/moment/model/PublishMetaData;)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 154
    invoke-static/range {v8 .. v13}, Lcom/taptap/sdk/moment/Moment;->openTapMoment$default(Lcom/taptap/sdk/moment/Moment;ILorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/Object;)V

    return-void
.end method

.method public final setCallback(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/TapTapMoment$Companion;->setTapMomentCallback$tap_moment_release(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V

    return-void
.end method

.method public final setTapMomentCallback$tap_moment_release(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V
    .locals 0

    .line 44
    invoke-static {p1}, Lcom/taptap/sdk/moment/TapTapMoment;->access$setTapMomentCallback$cp(Lcom/taptap/sdk/moment/TapTapMoment$TapTapMomentCallback;)V

    return-void
.end method
