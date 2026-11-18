.class public final Lcom/taptap/sdk/db/event/utils/TapEventLogger;
.super Ljava/lang/Object;
.source "TapEventLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/db/event/utils/TapEventLogger$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapEventLogger.kt\ncom/taptap/sdk/db/event/utils/TapEventLogger\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,419:1\n13543#2,2:420\n32#3,2:422\n*S KotlinDebug\n*F\n+ 1 TapEventLogger.kt\ncom/taptap/sdk/db/event/utils/TapEventLogger\n*L\n178#1:420,2\n189#1:422,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0008\u001c\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0017\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0010H\u0000\u00a2\u0006\u0002\u0008%J\u001d\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008)J\u001a\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010\u0010H\u0002J6\u0010/\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u00100\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u0002022\u0008\u0010.\u001a\u0004\u0018\u00010\u0010H\u0003J$\u00103\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0008\u0010.\u001a\u0004\u0018\u00010\u0010H\u0003J\r\u00104\u001a\u00020#H\u0000\u00a2\u0006\u0002\u00085J#\u00106\u001a\u00020#2\u0012\u00107\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000608\"\u00020\u0006H\u0000\u00a2\u0006\u0004\u00089\u0010:J\r\u0010;\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008<J\r\u0010=\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008>J\u0010\u0010?\u001a\u00020#2\u0006\u0010@\u001a\u00020\u0008H\u0002J\u0008\u0010A\u001a\u00020#H\u0002J\u001d\u0010B\u001a\u00020#2\u0006\u0010@\u001a\u00020\u00082\u0006\u0010C\u001a\u00020\u0018H\u0001\u00a2\u0006\u0002\u0008DJ\u0008\u0010E\u001a\u000202H\u0002J=\u0010F\u001a\u00020#2\u0006\u0010,\u001a\u00020-2\u0008\u00100\u001a\u0004\u0018\u00010\u00062\u0006\u00101\u001a\u0002022\u0008\u0010$\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u0001\u00a2\u0006\u0002\u0008GJ\u0017\u0010H\u001a\u00020#2\u0008\u0010I\u001a\u0004\u0018\u00010\u0012H\u0000\u00a2\u0006\u0002\u0008JJ\u0015\u0010K\u001a\u00020#2\u0006\u0010L\u001a\u000202H\u0000\u00a2\u0006\u0002\u0008MJ\u0015\u0010N\u001a\u00020#2\u0006\u0010\u001f\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008OJ\u0008\u0010P\u001a\u00020#H\u0002J\r\u0010Q\u001a\u00020#H\u0000\u00a2\u0006\u0002\u0008RJ\u0015\u0010Q\u001a\u00020#2\u0006\u0010S\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008RR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006T"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/utils/TapEventLogger;",
        "",
        "()V",
        "LOCK",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "TAG",
        "",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext$tap_db_release",
        "()Landroid/content/Context;",
        "setApplicationContext$tap_db_release",
        "(Landroid/content/Context;)V",
        "autoEventEnable",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "commonProperties",
        "Lorg/json/JSONObject;",
        "dynamicProperties",
        "Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;",
        "eventIndex",
        "",
        "generalParameter",
        "initialized",
        "sdkOptions",
        "Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "getSdkOptions",
        "()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;",
        "setSdkOptions",
        "(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V",
        "sessionUUID",
        "<set-?>",
        "userId",
        "getUserId$tap_db_release",
        "()Ljava/lang/String;",
        "addCommonProperties",
        "",
        "properties",
        "addCommonProperties$tap_db_release",
        "addCommonProperty",
        "key",
        "value",
        "addCommonProperty$tap_db_release",
        "buildDeviceEventBean",
        "Lcom/taptap/sdk/db/event/model/TapEventBean;",
        "eventType",
        "Lcom/taptap/sdk/db/event/model/TapEventType;",
        "eventProperties",
        "buildTrackEventBean",
        "eventName",
        "isAutomatically",
        "",
        "buildUserEventBean",
        "clearAllCommonProperties",
        "clearAllCommonProperties$tap_db_release",
        "clearCommonProperties",
        "keys",
        "",
        "clearCommonProperties$tap_db_release",
        "([Ljava/lang/String;)V",
        "clearUser",
        "clearUser$tap_db_release",
        "flush",
        "flush$tap_db_release",
        "initGeneralParameter",
        "context",
        "initSecretParameter",
        "initialize",
        "option",
        "initialize$tap_db_release",
        "isInitialized",
        "logEventInner",
        "logEventInner$tap_db_release",
        "registerDynamicProperties",
        "eventDynamicProperties",
        "registerDynamicProperties$tap_db_release",
        "setAutoEventEnable",
        "enable",
        "setAutoEventEnable$tap_db_release",
        "setUserId",
        "setUserId$tap_db_release",
        "validateInitialized",
        "validateUserId",
        "validateUserId$tap_db_release",
        "methodName",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

.field private static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final TAG:Ljava/lang/String; = "TapEventLogger"

.field public static applicationContext:Landroid/content/Context;

.field private static final autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final commonProperties:Lorg/json/JSONObject;

.field private static dynamicProperties:Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;

.field private static eventIndex:J

.field private static final generalParameter:Lorg/json/JSONObject;

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sdkOptions:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

.field private static final sessionUUID:Ljava/lang/String;

.field private static userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->generalParameter:Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->sessionUUID:Ljava/lang/String;

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final buildDeviceEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Lorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;
    .locals 5

    .line 260
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 264
    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    .line 265
    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    .line 269
    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "properties"

    .line 276
    invoke-static {v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->obtainJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sdk_version"

    const-string v3, "4.5.4"

    .line 277
    invoke-static {v1, v2, v3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    sget-object v2, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceEvent["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] Properties Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v2, 0x1

    .line 283
    invoke-static {v1, p2, v2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 284
    new-instance p2, Lcom/taptap/sdk/db/event/model/TapEventBean;

    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Lcom/taptap/sdk/db/event/model/TapEventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p2
.end method

.method private final buildTrackEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;
    .locals 9

    .line 295
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 296
    invoke-static {p2}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertEventName(Ljava/lang/String;)V

    .line 297
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 300
    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "name"

    .line 301
    invoke-static {v0, v1, p2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    .line 302
    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    .line 306
    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "user_id"

    .line 310
    invoke-static {v0, v1, p3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "properties"

    .line 313
    invoke-static {v0, p3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->obtainJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    .line 314
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->generalParameter:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p3, v1, v2, v3, v4}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties$default(Lorg/json/JSONObject;Lorg/json/JSONObject;ZILjava/lang/Object;)V

    .line 316
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->queryGID()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    const-string v3, "gid"

    invoke-static {p3, v3, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getGAID()Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->getAndroidAdvertiserIdValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    const-string v5, "device_id2"

    .line 327
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 322
    :cond_3
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getOAID()Ljava/lang/String;

    move-result-object v1

    const-string v5, "oaid"

    .line 320
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :goto_1
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getOpenId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "open_id"

    .line 334
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getApplicationContext$tap_db_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "android_id"

    .line 339
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "t_log_id"

    .line 344
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->sessionUUID:Ljava/lang/String;

    const-string v5, "session_uuid"

    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "timestamp"

    .line 351
    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    sget-wide v5, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->eventIndex:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    sput-wide v5, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->eventIndex:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "event_index"

    invoke-static {p3, v5, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 359
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const-string v1, "is_automatically_log"

    invoke-static {p3, v1, p4}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
    :cond_4
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 363
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    invoke-static {p4, v1, v3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 365
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->dynamicProperties:Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;->getDynamicProperties()Lorg/json/JSONObject;

    move-result-object v4

    .line 366
    :cond_5
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] dynamicProperties Error"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 367
    invoke-static {p4, v4, v3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 369
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Properties Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, p5}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 370
    invoke-static {p4, p5, v3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 372
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object p5

    invoke-virtual {p5}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getOverrideBuiltInParameters()Z

    move-result p5

    if-eqz p5, :cond_6

    .line 373
    invoke-static {p3, p4, v3}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_2

    .line 375
    :cond_6
    invoke-static {p3, p4, v2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 377
    :goto_2
    new-instance p3, Lcom/taptap/sdk/db/event/model/TapEventBean;

    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2, v0}, Lcom/taptap/sdk/db/event/model/TapEventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3
.end method

.method private final buildUserEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;
    .locals 4

    .line 232
    invoke-static {}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->assertIsNotMainThread()V

    .line 233
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 236
    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getClientId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    .line 237
    invoke-static {v0, v2, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "user_id"

    .line 241
    invoke-static {v0, v1, p2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "properties"

    .line 245
    invoke-static {v0, p2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->obtainJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "sdk_version"

    const-string v2, "4.5.4"

    .line 246
    invoke-static {p2, v1, v2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserEvent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] Properties Error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x1

    .line 252
    invoke-static {p2, p3, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 253
    new-instance p2, Lcom/taptap/sdk/db/event/model/TapEventBean;

    invoke-virtual {p1}, Lcom/taptap/sdk/db/event/model/TapEventType;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcom/taptap/sdk/db/event/model/TapEventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p2
.end method

.method private final initGeneralParameter(Landroid/content/Context;)V
    .locals 2

    .line 204
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;

    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->generalParameter:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;->fillingGeneralParameter(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init generalParameter = \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapEventLogger"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initSecretParameter()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger$initSecretParameter$1;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger$initSecretParameter$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->queryGAID(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 219
    :cond_1
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger$initSecretParameter$2;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger$initSecretParameter$2;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->queryOAID(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public static final declared-synchronized initialize$tap_db_release(Landroid/content/Context;Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "option"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 61
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "TapTapSdk"

    const-string v2, "TapEvent initialize start"

    .line 63
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v1, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->setApplicationContext$tap_db_release(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v1, p1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->setSdkOptions(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V

    .line 69
    invoke-direct {v1, p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->initGeneralParameter(Landroid/content/Context;)V

    .line 70
    invoke-direct {v1}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->initSecretParameter()V

    .line 72
    sget-object p0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->initializeIfNotInitialized()V

    const-string p0, "TapTapSdk"

    const-string p1, "TapEvent initialize end"

    .line 73
    invoke-static {p0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final isInitialized()Z
    .locals 1

    .line 395
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$kMgsdnqjjWijeT3tYKY7GXMLrK4(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$lambda$0(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    return-void
.end method

.method private static final logEventInner$lambda$0(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 6

    const-string v0, "$eventType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/model/TapEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    goto/16 :goto_4

    :pswitch_0
    sget-object p3, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-direct {p3, p0, p2, p4}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->buildUserEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;

    move-result-object p2

    goto :goto_0

    .line 103
    :pswitch_1
    sget-object p2, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-direct {p2, p0, p4}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->buildDeviceEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Lorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;

    move-result-object p2

    goto :goto_0

    .line 93
    :pswitch_2
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->buildTrackEventBean(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Lcom/taptap/sdk/db/event/model/TapEventBean;

    move-result-object p2

    :goto_0
    const-string p3, "TapTapSdk"

    .line 112
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TapEvent insert event waiting to be send , eventType["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " eventName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    const-string p0, ""

    :goto_3
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {p3, p0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Lcom/taptap/sdk/db/event/TapEventQueue;->add(Lcom/taptap/sdk/db/event/model/TapEventBean;)V

    goto :goto_5

    .line 107
    :goto_4
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 116
    check-cast p0, Ljava/lang/Throwable;

    const/4 p1, 0x2

    const-string p2, "TapEventLogger"

    const/4 p3, 0x0

    invoke-static {p2, p3, p0, p1, p3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 82
    sget-object p5, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private final validateInitialized()V
    .locals 2

    .line 384
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapSdkNotInitializedException;

    const-string v1, "The TapEvent has not been initialized successfully, Please call TapTapSdk.init to initialize before calling."

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/exception/TapSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addCommonProperties$tap_db_release(Lorg/json/JSONObject;)V
    .locals 4

    .line 166
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 167
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCommonProperties = \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapCoreKit;

    const-string v2, "addCommonProperties Error"

    invoke-virtual {v1, v2, p1}, Lcom/taptap/sdk/db/event/utils/TapCoreKit;->filterProperties(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 170
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperties(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 171
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final addCommonProperty$tap_db_release(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 159
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCommonProperty key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final clearAllCommonProperties$tap_db_release()V
    .locals 3

    .line 185
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 186
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    const-string v2, "clearAllCommonProperties"

    .line 187
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys"

    .line 189
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 192
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final varargs clearCommonProperties$tap_db_release([Ljava/lang/String;)V
    .locals 5

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 176
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCommonProperty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 420
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 179
    sget-object v4, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->commonProperties:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final clearUser$tap_db_release()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 151
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    const-string v2, "clearUser"

    .line 152
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 153
    sput-object v1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    .line 154
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final flush$tap_db_release()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    const-string v0, "TapEventLogger"

    const-string v1, "flush"

    .line 123
    invoke-static {v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/taptap/sdk/db/event/TapEventQueue;->INSTANCE:Lcom/taptap/sdk/db/event/TapEventQueue;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/TapEventQueue;->flush$tap_db_release()V

    return-void
.end method

.method public final getApplicationContext$tap_db_release()Landroid/content/Context;
    .locals 1

    .line 52
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "applicationContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;
    .locals 1

    .line 50
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->sdkOptions:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sdkOptions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserId$tap_db_release()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final logEventInner$tap_db_release(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;)V
    .locals 9

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->logEventInner$tap_db_release$default(Lcom/taptap/sdk/db/event/utils/TapEventLogger;Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final logEventInner$tap_db_release(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8

    const-string v0, "eventType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logEventInner eventType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , eventName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , properties = \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapEventLogger"

    .line 85
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/taptap/sdk/db/event/TapEventQueue;->getSingleThreadExecutor$tap_db_release()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v7, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/taptap/sdk/db/event/utils/-$$Lambda$TapEventLogger$kMgsdnqjjWijeT3tYKY7GXMLrK4;-><init>(Lcom/taptap/sdk/db/event/model/TapEventType;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerDynamicProperties$tap_db_release(Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;)V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 197
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    const-string v2, "registerDynamicProperties"

    .line 198
    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sput-object p1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->dynamicProperties:Lcom/taptap/sdk/core/TapTapEvent$TapEventDynamicProperties;

    .line 200
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final setApplicationContext$tap_db_release(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sput-object p1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public final setAutoEventEnable$tap_db_release(Z)V
    .locals 3

    .line 128
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->autoEventEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoEventEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapEventLogger"

    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->INSTANCE:Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/db/event/playgame/TapPlayGameDurationTracker;->setAutoEventEnable(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getRegion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getAutoIAPEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "InAppPurchaseManager setEnable true"

    .line 135
    invoke-static {v1, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v2}, Lcom/taptap/sdk/db/event/iap/InAppPurchaseManager;->setEnableAutoLogging(Z)V

    .line 138
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapEvent setAutoEventEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapTapSdk"

    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSdkOptions(Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sput-object p1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->sdkOptions:Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    return-void
.end method

.method public final setUserId$tap_db_release(Ljava/lang/String;)V
    .locals 4

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->validateInitialized()V

    .line 143
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v1, "TapEventLogger"

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sput-object p1, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    .line 146
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final validateUserId$tap_db_release()V
    .locals 2

    .line 402
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 403
    :cond_2
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;

    const-string v1, "TapTapEvent setUser method not called, please call setUser method first"

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final validateUserId$tap_db_release(Ljava/lang/String;)V
    .locals 2

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->userId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 414
    :cond_2
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " method called error, TapEvent.setUser method not called, please call setUser method first."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-direct {v0, p1}, Lcom/taptap/sdk/kit/internal/exception/TapSdkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
