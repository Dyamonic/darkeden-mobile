.class public final Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutomaticAnalyticsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutomaticAnalyticsLogger.kt\ncom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J \u0010\n\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u0004*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;",
        "",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "generateTapPurchasedEvent",
        "Lcom/taptap/sdk/core/TapTapPurchasedEvent;",
        "purchase",
        "skuDetails",
        "logPurchase",
        "",
        "isSubscription",
        "",
        "getLongValue",
        "",
        "Lorg/json/JSONObject;",
        "key",
        "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;",
        "getStringValue",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->INSTANCE:Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;

    .line 11
    const-class v0, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final generateTapPurchasedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/core/TapTapPurchasedEvent;
    .locals 11

    const-string v0, "description"

    const-string v1, "productId"

    const/4 v2, 0x0

    .line 27
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, v3, v1}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v4, p2

    const-string p2, "name"

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "title"

    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v5, p2

    const-string p2, "price_amount_micros"

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    move-object v6, p2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_4

    .line 36
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    const/16 p2, 0x2710

    int-to-double v8, p2

    div-double/2addr v6, v8

    goto :goto_2

    :cond_4
    const-wide/16 v6, 0x0

    :goto_2
    const-string p2, "price_currency_code"

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    :cond_6
    :goto_3
    if-nez v1, :cond_7

    .line 44
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 45
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v10, p2

    goto :goto_4

    :cond_7
    move-object v10, v2

    .line 47
    :goto_4
    new-instance p1, Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    const-string v9, "google"

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/taptap/sdk/core/TapTapPurchasedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 56
    sget-object p2, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error parsing in-app subscription data."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-object v2
.end method

.method private final getLongValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 69
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final logPurchase(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "purchase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skuDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 16
    sget-object p2, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->INSTANCE:Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;

    invoke-direct {p2, p0, p1}, Lcom/taptap/sdk/db/event/iap/common/AutomaticAnalyticsLogger;->generateTapPurchasedEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/core/TapTapPurchasedEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    sget-object p1, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->INSTANCE:Lcom/taptap/sdk/db/event/TapPredefinedEvents;

    invoke-virtual {p1, p0}, Lcom/taptap/sdk/db/event/TapPredefinedEvents;->trackGoogleIAPPurchase(Lcom/taptap/sdk/core/TapTapPurchasedEvent;)V

    :cond_0
    return-void
.end method
