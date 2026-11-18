.class public final Lcom/taptap/sdk/core/TapTapEvent;
.super Ljava/lang/Object;
.source "TapTapEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001!B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0007J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0008\u0010\n\u001a\u00020\u0004H\u0007J!\u0010\u000b\u001a\u00020\u00042\u0012\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\r\"\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0004H\u0007J\u0012\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u0007J\u001c\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\u0012\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0007J\u001c\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u001e\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u001f\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010 \u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007\u00a8\u0006\""
    }
    d2 = {
        "Lcom/taptap/sdk/core/TapTapEvent;",
        "",
        "()V",
        "addCommon",
        "",
        "key",
        "",
        "value",
        "properties",
        "Lorg/json/JSONObject;",
        "clearAllCommonProperties",
        "clearCommonProperties",
        "keys",
        "",
        "([Ljava/lang/String;)V",
        "clearUser",
        "deviceAdd",
        "deviceInitialize",
        "deviceUpdate",
        "getDeviceId",
        "logEvent",
        "name",
        "logPurchasedEvent",
        "purchasedEvent",
        "Lcom/taptap/sdk/core/TapTapPurchasedEvent;",
        "registerDynamicProperties",
        "dynamic",
        "Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;",
        "setUserId",
        "userId",
        "userAdd",
        "userInitialize",
        "userUpdate",
        "TapEventDynamicProperties",
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
.field public static final INSTANCE:Lcom/taptap/sdk/core/TapTapEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/core/TapTapEvent;

    invoke-direct {v0}, Lcom/taptap/sdk/core/TapTapEvent;-><init>()V

    sput-object v0, Lcom/taptap/sdk/core/TapTapEvent;->INSTANCE:Lcom/taptap/sdk/core/TapTapEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addCommon(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "addCommonProperty Error"

    const-string v1, "key"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 208
    :cond_0
    :try_start_0
    invoke-static {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->checkKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    invoke-virtual {v1, v0, p0, p1}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->checkValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0, p0, p1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->addCommonProperty$tap_db_release(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final addCommon(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 223
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->addCommonProperties$tap_db_release(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final clearAllCommonProperties()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 253
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->clearAllCommonProperties$tap_db_release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 259
    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final varargs clearCommonProperties([Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "keys"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->clearCommonProperties$tap_db_release([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 244
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final clearUser()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 81
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 85
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->clearUser$tap_db_release()V

    .line 86
    sget-object v1, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->setUserId(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1, v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->setGameUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 89
    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x3

    invoke-static {v0, v0, v1, v2, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final deviceAdd(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 144
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->deviceAdd(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final deviceInitialize(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 114
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->deviceInitialise(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final deviceUpdate(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 129
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->deviceUpdate(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final getDeviceId()Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 98
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 102
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v2, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v2}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    check-cast v0, Ljava/lang/Throwable;

    const/4 v2, 0x3

    invoke-static {v1, v1, v0, v2, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method public static final logEvent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/taptap/sdk/core/TapTapEvent;->logEvent$default(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    return-void
.end method

.method public static final logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertEventName(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v2, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic logEvent$default(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lcom/taptap/sdk/core/TapTapEvent;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final logPurchasedEvent(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "purchasedEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateUserId$tap_db_release()V

    .line 42
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackPurchasedEvent(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final registerDynamicProperties(Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 268
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->registerDynamicProperties$tap_db_release(Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 274
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final setUserId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/taptap/sdk/core/TapTapEvent;->setUserId$default(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V

    return-void
.end method

.method public static final setUserId(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertUserId(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->setUserId$tap_db_release(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {v0, p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->setUserId(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackUserLogin(Lorg/json/JSONObject;)V

    .line 67
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "has_user"

    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    invoke-static {p1}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->deviceUpdate(Lorg/json/JSONObject;)V

    .line 70
    sget-object p1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->setGameUserId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic setUserId$default(Ljava/lang/String;Lorg/json/JSONObject;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 55
    :cond_0
    invoke-static {p0, p1}, Lcom/taptap/sdk/core/TapTapEvent;->setUserId(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static final userAdd(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 189
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->userAdd(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final userInitialize(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 159
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->userInitialise(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 165
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final userUpdate(Lorg/json/JSONObject;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 174
    sget-object v0, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->INSTANCE:Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/check/TapSdkChecker;->checkInitialize()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->userUpdate(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    check-cast p0, Ljava/lang/Throwable;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
