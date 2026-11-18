.class public final Lcom/taptap/sdk/update/internal/UpdateTracker;
.super Ljava/lang/Object;
.source "UpdateTracker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateTracker.kt\ncom/taptap/sdk/update/internal/UpdateTracker\n+ 2 JsonExt.kt\ncom/taptap/sdk/kit/internal/extensions/JsonExtKt\n+ 3 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 4 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 5 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 6 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 7 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,476:1\n6#2:477\n43#3,2:478\n45#3,4:483\n113#4:480\n32#5:481\n80#6:482\n11#7:487\n*S KotlinDebug\n*F\n+ 1 UpdateTracker.kt\ncom/taptap/sdk/update/internal/UpdateTracker\n*L\n441#1:477\n441#1:478,2\n441#1:483,4\n441#1:480\n441#1:481\n441#1:482\n33#1:487\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u001e\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0008\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001b\u001a\u00020\u0004H\u0002J\u0006\u0010\u001c\u001a\u00020\u0004J(\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00042\u0016\u0008\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040 H\u0002J\u0006\u0010!\u001a\u00020\u0019J\u0006\u0010\"\u001a\u00020\u0019J\u0016\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020\u0004J\u0006\u0010&\u001a\u00020\u0019J\u0006\u0010\'\u001a\u00020\u0019J\u0006\u0010(\u001a\u00020\u0019J\u001e\u0010)\u001a\u00020\u00192\u0006\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004J\u0006\u0010-\u001a\u00020\u0019J\u000e\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0019J\u0006\u00102\u001a\u00020\u0019J\u0006\u00103\u001a\u00020\u0019J\u000e\u00104\u001a\u00020\u00192\u0006\u00105\u001a\u000200J\u0006\u00106\u001a\u00020\u0019J\u000e\u00107\u001a\u00020\u00192\u0006\u00105\u001a\u000200J\u0006\u00108\u001a\u00020\u0019J\u0006\u00109\u001a\u00020\u0019J\u0006\u0010:\u001a\u00020\u0019J\u000e\u0010;\u001a\u00020\u00192\u0006\u0010<\u001a\u00020\u0004J\u0006\u0010=\u001a\u00020\u0019J\u0006\u0010>\u001a\u00020\u0019J\u0006\u0010?\u001a\u00020\u0019J\u0006\u0010@\u001a\u00020\u0019J\u0006\u0010A\u001a\u00020\u0019J\u0006\u0010B\u001a\u00020\u0019J\u0006\u0010C\u001a\u00020\u0019J\u0006\u0010D\u001a\u00020\u0019J\u0006\u0010E\u001a\u00020\u0019J\u0006\u0010F\u001a\u00020\u0019J\u0006\u0010G\u001a\u00020\u0019J\u0016\u0010H\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u00172\u0006\u0010J\u001a\u00020\u0004J\u0006\u0010K\u001a\u00020\u0019J\u0006\u0010L\u001a\u00020\u0019J\u0006\u0010M\u001a\u00020\u0019R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001d\u0010\u000b\u001a\u0004\u0018\u00010\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/taptap/sdk/update/internal/UpdateTracker;",
        "",
        "()V",
        "currentChainId",
        "",
        "currentSessionId",
        "gameId",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "loggerHelper",
        "Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "getLoggerHelper",
        "()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;",
        "loggerHelper$delegate",
        "Lkotlin/Lazy;",
        "openLogService",
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "getOpenLogService",
        "()Lcom/taptap/sdk/common/services/OpenLogService;",
        "openLogService$delegate",
        "speedCount",
        "",
        "clearChainId",
        "",
        "createSessionId",
        "getChainId",
        "getSessionId",
        "reportBizLog",
        "action",
        "paramMap",
        "",
        "trackDownloadComplete",
        "trackDownloadDialogVisible",
        "trackDownloadFailed",
        "code",
        "cause",
        "trackDownloadLinkButtonClick",
        "trackDownloadRetryButtonClick",
        "trackDownloadStart",
        "trackDownloadingSpeed",
        "apkSize",
        "currentSize",
        "speed",
        "trackInitialize",
        "trackInstall",
        "manualClick",
        "",
        "trackInstallCloseButtonClick",
        "trackInstallComplete",
        "trackInstallConfirmButtonClick",
        "trackInstallConfirmCancelButtonClick",
        "fromConfirm",
        "trackInstallConfirmDialogVisible",
        "trackInstallConfirmPositiveButtonClick",
        "trackInstallDialogVisible",
        "trackInstallLinkButtonClick",
        "trackNotInstallDialogVisible",
        "trackOpenTapClient",
        "objectType",
        "trackRequestFailDialogVisible",
        "trackRequestFailNegativeButtonClick",
        "trackRequestFailedPositiveButtonClick",
        "trackToTapUpdateButtonClick",
        "trackToTapUpdateCloseButtonClick",
        "trackUpdateCancelButtonClick",
        "trackUpdateCloseButtonClick",
        "trackUpdateConfirmButtonClick",
        "trackUpdateConfirmDialogVisible",
        "trackUpdateDialogVisible",
        "trackUpdateGameCancel",
        "trackUpdateGameFail",
        "errorCode",
        "errorMsg",
        "trackUpdateGameStart",
        "trackUpdateGameSuccess",
        "updateSessionId",
        "tap-update_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

.field private static currentChainId:Ljava/lang/String;

.field private static volatile currentSessionId:Ljava/lang/String;

.field private static volatile gameId:Ljava/lang/String;

.field private static final loggerHelper$delegate:Lkotlin/Lazy;

.field private static final openLogService$delegate:Lkotlin/Lazy;

.field private static speedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/update/internal/UpdateTracker;

    invoke-direct {v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;-><init>()V

    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker;

    .line 33
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 487
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->openLogService$delegate:Lkotlin/Lazy;

    .line 35
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker$loggerHelper$2;->INSTANCE:Lcom/taptap/sdk/update/internal/UpdateTracker$loggerHelper$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->loggerHelper$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 40
    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    .line 42
    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentChainId:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->gameId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOpenLogService(Lcom/taptap/sdk/update/internal/UpdateTracker;)Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object p0

    return-object p0
.end method

.method private final createSessionId()Ljava/lang/String;
    .locals 1

    .line 50
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method private final getChainId()Ljava/lang/String;
    .locals 2

    .line 55
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentChainId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentChainId:Ljava/lang/String;

    .line 58
    :cond_0
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentChainId:Ljava/lang/String;

    return-object v0
.end method

.method private final getLoggerHelper()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;
    .locals 1

    .line 35
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->loggerHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    return-object v0
.end method

.method private final getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 1

    .line 33
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->openLogService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/OpenLogService;

    return-object v0
.end method

.method private final reportBizLog(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 450
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "extra"

    .line 452
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 453
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 454
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2

    .line 456
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p2, v2

    .line 459
    :goto_2
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "update_id"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 462
    sget-object v3, Lcom/taptap/sdk/update/internal/UpdateTracker;->gameId:Ljava/lang/String;

    const-string v4, "game_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 466
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ctx"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportBizLog: action="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TapUpdateLog"

    invoke-static {v1, p2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getLoggerHelper()Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2, p1, v0}, Lcom/taptap/sdk/kit/internal/openlog/ITapOpenlog;->reportBusinessLog(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method static synthetic reportBizLog$default(Lcom/taptap/sdk/update/internal/UpdateTracker;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 448
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 446
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final clearChainId()V
    .locals 1

    const-string v0, ""

    .line 62
    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentChainId:Ljava/lang/String;

    return-void
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->createSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 68
    :cond_1
    sget-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sput-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->gameId:Ljava/lang/String;

    return-void
.end method

.method public final trackDownloadComplete()V
    .locals 3

    .line 225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 226
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chain_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "tapItkApkDownloadComplete"

    .line 227
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "tap_downloading_dialog"

    .line 145
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 143
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadFailed(ILjava/lang/String;)V
    .locals 3

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 152
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chain_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "failed_code"

    .line 153
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "failed_reason"

    .line 154
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "args"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 156
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "tapItkApkDownloadFailed"

    .line 155
    invoke-direct {p0, p2, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadLinkButtonClick()V
    .locals 4

    .line 174
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_downloading_dialog"

    .line 175
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_download_link_but"

    .line 178
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 177
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 176
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadRetryButtonClick()V
    .locals 4

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_downloading_dialog"

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "download_retry_but"

    .line 189
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 190
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 188
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 187
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadStart()V
    .locals 3

    const/4 v0, 0x0

    .line 196
    sput v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->speedCount:I

    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chain_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "tapItkApkDownload"

    .line 199
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackDownloadingSpeed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "apkSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "speed"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->speedCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->speedCount:I

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chain_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "apk_size"

    .line 213
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_size"

    .line 214
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_rate"

    .line 215
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "args"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 218
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "tapItkApkDownloading"

    .line 217
    invoke-direct {p0, p2, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInitialize()V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "func_name"

    const-string v2, "init"

    .line 436
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 435
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 477
    sget-object v1, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    const/4 v3, 0x0

    .line 479
    :try_start_0
    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/StringFormat;

    .line 480
    invoke-interface {v1}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 481
    const-class v5, Ljava/util/Map;

    sget-object v6, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/KTypeProjection;->Companion:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v8

    invoke-virtual {v7, v8}, Lkotlin/reflect/KTypeProjection$Companion;->invariant(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 482
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    .line 480
    invoke-interface {v1, v4, v0}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 484
    check-cast v0, Ljava/lang/Throwable;

    const/4 v1, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v3, v0, v1, v3}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_0
    if-nez v3, :cond_0

    const-string v3, "json convert error"

    :cond_0
    const-string v0, "args"

    .line 441
    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 439
    invoke-direct {p0, v2, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstall(Z)V
    .locals 4

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 369
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chain_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p1, "click_install"

    goto :goto_0

    :cond_0
    const-string p1, "auto_install"

    :goto_0
    const-string v2, "install_type"

    .line 370
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 374
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "args"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, p1, v2

    const/4 v1, 0x1

    .line 375
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v1

    .line 373
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "tapItkApkInstall"

    .line 372
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallCloseButtonClick()V
    .locals 4

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_install_dialog"

    .line 100
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_update_close_but"

    .line 104
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 103
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 102
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallComplete()V
    .locals 3

    .line 282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    invoke-direct {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getChainId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chain_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "tapItkApkInstallComplete"

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->clearChainId()V

    return-void
.end method

.method public final trackInstallConfirmButtonClick()V
    .locals 4

    .line 235
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_install_dialog"

    .line 236
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "gototap_install_but"

    .line 239
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 240
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 238
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 237
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallConfirmCancelButtonClick(Z)V
    .locals 4

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "install_confirm_dialog"

    goto :goto_0

    :cond_0
    const-string p1, "not_install_dialog"

    :goto_0
    const-string v1, "block"

    .line 255
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/Pair;

    const/4 v1, 0x0

    const-string v2, "object_type"

    const-string v3, "install_cancel_but"

    .line 261
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v1

    .line 260
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "click"

    .line 259
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallConfirmDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "install_confirm_dialog"

    .line 330
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 329
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 328
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallConfirmPositiveButtonClick(Z)V
    .locals 4

    .line 268
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "install_confirm_dialog"

    goto :goto_0

    :cond_0
    const-string v1, "not_install_dialog"

    :goto_0
    const-string v2, "block"

    .line 269
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string p1, "install_success_but"

    goto :goto_1

    :cond_1
    const-string p1, "reinstall_but"

    :goto_1
    const-string v3, "object_type"

    .line 275
    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 276
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, p1

    .line 274
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "click"

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "tap_install_dialog"

    .line 248
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 247
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 246
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackInstallLinkButtonClick()V
    .locals 4

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_install_dialog"

    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_install_link_but"

    .line 167
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 166
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 165
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackNotInstallDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "not_install_dialog"

    .line 338
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 337
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 336
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackOpenTapClient(Ljava/lang/String;)V
    .locals 1

    const-string v0, "objectType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "object_type"

    .line 125
    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "tapItkAppOpen"

    .line 123
    invoke-direct {p0, v0, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackRequestFailDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "request_failed_dialog"

    .line 314
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 313
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 312
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackRequestFailNegativeButtonClick()V
    .locals 4

    .line 344
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "request_failed_dialog"

    .line 345
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "install_cancel_but"

    .line 348
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 349
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 347
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 346
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackRequestFailedPositiveButtonClick()V
    .locals 4

    .line 355
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "request_failed_dialog"

    .line 356
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "install_retry_but"

    .line 359
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 358
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 357
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackToTapUpdateButtonClick()V
    .locals 4

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_update_dialog"

    .line 294
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "gototap_update_but"

    .line 297
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 298
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 296
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 295
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackToTapUpdateCloseButtonClick()V
    .locals 4

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_update_dialog"

    .line 112
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_update_close_but"

    .line 116
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 117
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 115
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 114
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateCancelButtonClick()V
    .locals 4

    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_update_confirm_dialog"

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_update_cancel_but"

    .line 81
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 80
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 79
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateCloseButtonClick()V
    .locals 4

    .line 88
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_downloading_dialog"

    .line 89
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_update_close_but"

    .line 92
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 91
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 90
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateConfirmButtonClick()V
    .locals 4

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "block"

    const-string v2, "tap_update_confirm_dialog"

    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {p0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "update_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "object_type"

    const-string v3, "tap_update_confirm_but"

    .line 136
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 135
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "click"

    .line 134
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateConfirmDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "tap_update_confirm_dialog"

    .line 322
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 320
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateDialogVisible()V
    .locals 2

    const-string v0, "object_type"

    const-string v1, "tap_update_dialog"

    .line 306
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "view"

    .line 304
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateGameCancel()V
    .locals 3

    .line 397
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "func_name"

    const-string v2, "updateGame"

    .line 398
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    .line 397
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "cancel"

    .line 394
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateGameFail(ILjava/lang/String;)V
    .locals 3

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "func_name"

    const-string v2, "updateGame"

    .line 411
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_code"

    .line 412
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 413
    sget-object p1, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "error_msg"

    .line 414
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 415
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "args"

    .line 410
    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    .line 409
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "fail"

    .line 407
    invoke-direct {p0, p2, p1}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateGameStart()V
    .locals 3

    .line 384
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "func_name"

    const-string v2, "updateGame"

    .line 385
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    .line 384
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "start"

    .line 381
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final trackUpdateGameSuccess()V
    .locals 3

    .line 425
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 426
    sget-object v1, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "func_name"

    const-string v2, "updateGame"

    .line 427
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "args"

    .line 425
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 424
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "success"

    .line 422
    invoke-direct {p0, v1, v0}, Lcom/taptap/sdk/update/internal/UpdateTracker;->reportBizLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final updateSessionId()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/taptap/sdk/kit/internal/extensions/StringExtKt;->generateSessionId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/update/internal/UpdateTracker;->currentSessionId:Ljava/lang/String;

    return-void
.end method
