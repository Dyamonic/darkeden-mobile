.class public final Lcom/taptap/sdk/db/event/TapPredefinedEvents;
.super Ljava/lang/Object;
.source "TapPredefinedEvents.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapPredefinedEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapPredefinedEvents.kt\ncom/taptap/sdk/db/event/TapPredefinedEvents\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n1851#2,2:159\n*S KotlinDebug\n*F\n+ 1 TapPredefinedEvents.kt\ncom/taptap/sdk/db/event/TapPredefinedEvents\n*L\n108#1:159,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\t\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0012\u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0018\u0010\u0015\u001a\u00020\u00062\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0007J\u0012\u0010\u0019\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/TapPredefinedEvents;",
        "",
        "()V",
        "TAG",
        "",
        "deviceAdd",
        "",
        "properties",
        "Lorg/json/JSONObject;",
        "deviceInitialise",
        "deviceUpdate",
        "trackDeviceLogin",
        "trackDevicePlayGame",
        "deviceDuration",
        "",
        "trackGoogleIAPPurchase",
        "purchasedEvent",
        "Lcom/taptap/sdk/core/TapTapPurchasedEvent;",
        "trackPaymentPurchase",
        "trackPurchasedEvent",
        "trackUserLogin",
        "trackUserPlayGame",
        "userDuration",
        "",
        "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
        "userAdd",
        "userInitialise",
        "userUpdate",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/TapPredefinedEvents;

.field private static final TAG:Ljava/lang/String; = "TapPredefinedEvents"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/TapPredefinedEvents;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->INSTANCE:Lcom/taptap/sdk/db/event/TapPredefinedEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deviceAdd(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v1, Lcom/taptap/sdk/db/event/model/TapEventType;->DEVICE_ADD:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v7}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final deviceInitialise(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 32
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v1, Lcom/taptap/sdk/db/event/model/TapEventType;->DEVICE_INITIALISE:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v7}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final deviceUpdate(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 37
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v1, Lcom/taptap/sdk/db/event/model/TapEventType;->DEVICE_UPDATE:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v7}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final trackDeviceLogin(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 98
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    .line 99
    sget-object v1, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const-string v2, "device_login"

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v4, p0

    .line 98
    invoke-static/range {v0 .. v7}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final trackDevicePlayGame(J)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 126
    div-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 128
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "duration"

    .line 129
    invoke-virtual {v5, v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    .line 131
    sget-object v2, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v3, "device_play_game"

    .line 130
    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final trackPurchasedEvent(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "purchasedEvent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    move-object v5, v0

    .line 78
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_id"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "amount"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getCurrencyType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency_type"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getPaymentMethod()Ljava/lang/String;

    move-result-object p0

    const-string v0, "payment"

    invoke-static {v5, v0, p0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v2, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v3, "charge"

    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final trackUserLogin(Lorg/json/JSONObject;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 88
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    .line 89
    sget-object v1, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const-string v2, "user_login"

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v4, p0

    .line 88
    invoke-static/range {v0 .. v7}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final trackUserPlayGame(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taptap/sdk/db/event/model/TapUserDurationBean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_1

    .line 108
    check-cast p0, Ljava/lang/Iterable;

    .line 159
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;

    .line 109
    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->getDuration()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 111
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "duration"

    .line 112
    invoke-virtual {v8, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 113
    sget-object v4, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    .line 114
    sget-object v5, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v7, 0x1

    .line 118
    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/model/TapUserDurationBean;->getUserId()Ljava/lang/String;

    move-result-object v9

    const-string v6, "play_game"

    .line 113
    invoke-virtual/range {v4 .. v9}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final userAdd(Lorg/json/JSONObject;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 66
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    const-string v1, "userAdd"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateUserId$tap_db_release(Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v3, Lcom/taptap/sdk/db/event/model/TapEventType;->USER_ADD:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v2 .. v9}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final userInitialise(Lorg/json/JSONObject;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 54
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    const-string v1, "userInitialise"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateUserId$tap_db_release(Ljava/lang/String;)V

    .line 55
    sget-object v2, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v3, Lcom/taptap/sdk/db/event/model/TapEventType;->USER_INITIALISE:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v2 .. v9}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final userUpdate(Lorg/json/JSONObject;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 60
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    const-string v1, "userUpdate"

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateUserId$tap_db_release(Ljava/lang/String;)V

    .line 61
    sget-object v2, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v3, Lcom/taptap/sdk/db/event/model/TapEventType;->USER_UPDATE:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v2 .. v9}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final trackGoogleIAPPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    .locals 9

    const-string v0, "purchasedEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    move-object v5, v0

    .line 141
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_id"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "amount"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getCurrencyType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency_type"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getPaymentMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "payment"

    invoke-static {v5, v0, p1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v2, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v3, "charge"

    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final trackPaymentPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V
    .locals 9

    const-string v0, "purchasedEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProperties()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    move-object v5, v0

    .line 151
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getOrderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "order_id"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "product"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "amount"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getCurrencyType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency_type"

    invoke-static {v5, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;->getPaymentMethod()Ljava/lang/String;

    move-result-object p1

    const-string v0, "payment"

    invoke-static {v5, v0, p1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    sget-object v2, Lcom/taptap/sdk/db/event/model/TapEventType;->TRACK:Lcom/taptap/sdk/db/event/model/TapEventType;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v3, "charge"

    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
