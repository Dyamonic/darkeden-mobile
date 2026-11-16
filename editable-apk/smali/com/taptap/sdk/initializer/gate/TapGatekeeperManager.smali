.class public final Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;
.super Ljava/lang/Object;
.source "TapGatekeeperManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTapGatekeeperManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TapGatekeeperManager.kt\ncom/taptap/sdk/initializer/gate/TapGatekeeperManager\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,167:1\n43#2,2:168\n45#2,4:173\n31#2,5:177\n36#2,4:185\n113#3:170\n123#3:182\n32#4:171\n32#4:183\n80#5:172\n80#5:184\n*S KotlinDebug\n*F\n+ 1 TapGatekeeperManager.kt\ncom/taptap/sdk/initializer/gate/TapGatekeeperManager\n*L\n87#1:168,2\n87#1:173,4\n99#1:177,5\n99#1:185,4\n87#1:170\n99#1:182\n87#1:171\n99#1:183\n87#1:172\n99#1:184\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0000\u00a2\u0006\u0002\u0008%J\u0006\u0010&\u001a\u00020\u0013J\u0006\u0010\'\u001a\u00020\u0013J\u0006\u0010(\u001a\u00020\u0013J\u001c\u0010)\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\"0+J\u0008\u0010,\u001a\u00020\"H\u0002J\u0008\u0010-\u001a\u00020\"H\u0002J\u0008\u0010.\u001a\u00020\"H\u0002J \u0010/\u001a\u00020\"*\u0002002\u0008\u00101\u001a\u0004\u0018\u00010\u00042\u0008\u00102\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u00063"
    }
    d2 = {
        "Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;",
        "",
        "()V",
        "GATEKEEPER_SP_NAME",
        "",
        "KEY_GATEKEEPER",
        "TAG",
        "URL_GATEKEEPER",
        "defaultGatekeeper",
        "Lcom/taptap/sdk/initializer/gate/TapGatekeeper;",
        "gatekeeperError",
        "Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;",
        "getGatekeeperError$tap_initializer_release",
        "()Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;",
        "setGatekeeperError$tap_initializer_release",
        "(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)V",
        "gatekeeperPref",
        "Landroid/content/SharedPreferences;",
        "isGatekeeperSuccess",
        "",
        "isInitialized",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "tapGatekeeper",
        "getTapGatekeeper$tap_initializer_release",
        "()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;",
        "setTapGatekeeper$tap_initializer_release",
        "(Lcom/taptap/sdk/initializer/gate/TapGatekeeper;)V",
        "tapHttp",
        "Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "getTapHttp",
        "()Lcom/taptap/sdk/kit/internal/http/TapHttp;",
        "tapHttp$delegate",
        "Lkotlin/Lazy;",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "initialize$tap_initializer_release",
        "isAutoEventEnable",
        "isHeartbeatEnable",
        "isSuccess",
        "queryGatekeeper",
        "runnable",
        "Lkotlin/Function0;",
        "readGatekeeperFromCache",
        "validateInitialized",
        "writeGatekeeperToCache",
        "putProperty",
        "Lorg/json/JSONObject;",
        "key",
        "value",
        "tap-initializer_release"
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
.field private static final GATEKEEPER_SP_NAME:Ljava/lang/String; = "com.taptap.sdk.GATEKEEPER_SETTING"

.field public static final INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

.field private static final KEY_GATEKEEPER:Ljava/lang/String; = "key_gatekeeper"

.field private static final TAG:Ljava/lang/String; = "TapGatekeeperManager"

.field private static final URL_GATEKEEPER:Ljava/lang/String; = "sdk-core/v1/gatekeeper"

.field private static defaultGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

.field private static gatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

.field private static gatekeeperPref:Landroid/content/SharedPreferences;

.field private static isGatekeeperSuccess:Z

.field private static final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

.field private static final tapHttp$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    invoke-direct {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 31
    sput-boolean v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isGatekeeperSuccess:Z

    .line 42
    new-instance v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    .line 43
    new-instance v3, Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;

    invoke-direct {v3, v1, v1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    .line 42
    invoke-direct/range {v2 .. v7}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;-><init>(Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;Lcom/taptap/sdk/initializer/gate/TapGateKeeperUrl;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->defaultGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    .line 51
    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    .line 53
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$tapHttp$2;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$tapHttp$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapHttp$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTapHttp(Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;)Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->getTapHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setGatekeeperSuccess$p(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isGatekeeperSuccess:Z

    return-void
.end method

.method public static final synthetic access$writeGatekeeperToCache(Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->writeGatekeeperToCache()V

    return-void
.end method

.method private final getTapHttp()Lcom/taptap/sdk/kit/internal/http/TapHttp;
    .locals 1

    .line 53
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapHttp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/kit/internal/http/TapHttp;

    return-object v0
.end method

.method private final putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 162
    move-object v0, p2

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
    if-eqz v0, :cond_2

    return-void

    .line 165
    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private final readGatekeeperFromCache()V
    .locals 7

    const-string v0, ""

    .line 95
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->validateInitialized()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 97
    :try_start_0
    sget-object v3, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->gatekeeperPref:Landroid/content/SharedPreferences;

    if-nez v3, :cond_0

    const-string v3, "gatekeeperPref"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_0
    const-string v4, "key_gatekeeper"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 98
    :goto_0
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eqz v3, :cond_5

    .line 99
    sget-object v3, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 177
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_4

    :goto_3
    move-object v0, v2

    goto :goto_4

    .line 181
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/StringFormat;

    .line 182
    invoke-interface {v3}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v4

    .line 183
    const-class v5, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 184
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    .line 182
    invoke-interface {v3, v4, v0}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "TapJson"

    .line 186
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3, v2, v0, v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3

    .line 99
    :goto_4
    check-cast v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    if-nez v0, :cond_6

    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->defaultGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    goto :goto_5

    .line 101
    :cond_5
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->defaultGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    .line 98
    :cond_6
    :goto_5
    sput-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    const-string v3, "TapGatekeeperManager"

    .line 104
    invoke-static {v3, v2, v0, v1, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_6
    return-void
.end method

.method private final validateInitialized()V
    .locals 2

    .line 77
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/taptap/sdk/kit/internal/exception/TapSdkNotInitializedException;

    const-string v1, "The TapGatekeeperManager has not been initialized successfully"

    invoke-direct {v0, v1}, Lcom/taptap/sdk/kit/internal/exception/TapSdkNotInitializedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeGatekeeperToCache()V
    .locals 8

    .line 85
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->validateInitialized()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 87
    :try_start_0
    sget-object v2, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->gatekeeperPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    const-string v2, "gatekeeperPref"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_gatekeeper"

    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    sget-object v5, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :try_start_1
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 170
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v6

    .line 171
    const-class v7, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 172
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    check-cast v6, Lkotlinx/serialization/SerializationStrategy;

    .line 170
    invoke-interface {v4, v6, v5}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "TapJson"

    .line 174
    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v5, v1, v4, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v4, v1

    .line 87
    :goto_0
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 90
    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "TapGatekeeperManager"

    invoke-static {v3, v1, v2, v0, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getGatekeeperError$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;
    .locals 1

    .line 49
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->gatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    return-object v0
.end method

.method public final getTapGatekeeper$tap_initializer_release()Lcom/taptap/sdk/initializer/gate/TapGatekeeper;
    .locals 1

    .line 51
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    return-object v0
.end method

.method public final initialize$tap_initializer_release(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TapTapSdk"

    const-string v2, "TapGatekeeper initialize start"

    .line 66
    invoke-static {v0, v2}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.taptap.sdk.GATEKEEPER_SETTING"

    .line 67
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->gatekeeperPref:Landroid/content/SharedPreferences;

    .line 69
    invoke-direct {p0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->readGatekeeperFromCache()V

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TapGatekeeper initialize end\nGatekeeperCache = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/taptap/sdk/kit/internal/TapLogger;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final isAutoEventEnable()Z
    .locals 2

    .line 154
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getSwitch()Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;->getAutoEvent()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isHeartbeatEnable()Z
    .locals 2

    .line 158
    sget-object v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeper;->getSwitch()Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperSwitch;->getHeartbeat()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->isGatekeeperSuccess:Z

    return v0
.end method

.method public final queryGatekeeper(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    sget-object v1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->INSTANCE:Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;

    const-string v2, "platform"

    const-string v3, "android"

    invoke-direct {v1, v0, v2, v3}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    invoke-direct {v1, v0, v3, v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    sget-object v2, Lcom/taptap/sdk/kit/internal/utils/TapSignKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/TapSignKit;

    invoke-virtual {v2, p1}, Lcom/taptap/sdk/kit/internal/utils/TapSignKit;->getSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "package_sign"

    invoke-direct {v1, v0, v2, p1}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sget-object p1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->getTapApplicationScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;

    const/4 v2, 0x0

    invoke-direct {p1, v0, p2, v2}, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager$queryGatekeeper$1;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setGatekeeperError$tap_initializer_release(Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;)V
    .locals 0

    .line 49
    sput-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->gatekeeperError:Lcom/taptap/sdk/initializer/gate/TapGatekeeperError;

    return-void
.end method

.method public final setTapGatekeeper$tap_initializer_release(Lcom/taptap/sdk/initializer/gate/TapGatekeeper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sput-object p1, Lcom/taptap/sdk/initializer/gate/TapGatekeeperManager;->tapGatekeeper:Lcom/taptap/sdk/initializer/gate/TapGatekeeper;

    return-void
.end method
