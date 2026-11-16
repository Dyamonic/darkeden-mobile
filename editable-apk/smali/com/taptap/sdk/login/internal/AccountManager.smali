.class public final Lcom/taptap/sdk/login/internal/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountManager.kt\ncom/taptap/sdk/login/internal/AccountManager\n+ 2 TapJson.kt\ncom/taptap/sdk/kit/internal/json/TapJson\n+ 3 SerialFormat.kt\nkotlinx/serialization/SerialFormatKt\n+ 4 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 5 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 6 ServiceManagerComponent.kt\ncom/taptap/sdk/servicemanager/utils/ServiceManagerComponent\n*L\n1#1,48:1\n43#2,2:49\n45#2,4:54\n31#2,5:58\n36#2,4:66\n113#3:51\n123#3:63\n32#4:52\n32#4:64\n80#5:53\n80#5:65\n11#6:70\n*S KotlinDebug\n*F\n+ 1 AccountManager.kt\ncom/taptap/sdk/login/internal/AccountManager\n*L\n23#1:49,2\n23#1:54,4\n30#1:58,5\n30#1:66,4\n23#1:51\n30#1:63\n23#1:52\n30#1:64\n23#1:53\n30#1:65\n17#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/taptap/sdk/login/internal/AccountManager;",
        "",
        "()V",
        "SP_ACCOUNT_KEY",
        "",
        "SP_MIGRATION_PROFILE_KEY",
        "SP_MIGRATION_TOKEN_KEY",
        "SP_NAME",
        "value",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        "account",
        "getAccount",
        "()Lcom/taptap/sdk/login/TapTapAccount;",
        "setAccount",
        "(Lcom/taptap/sdk/login/TapTapAccount;)V",
        "openLogService",
        "Lcom/taptap/sdk/common/services/OpenLogService;",
        "getOpenLogService",
        "()Lcom/taptap/sdk/common/services/OpenLogService;",
        "openLogService$delegate",
        "Lkotlin/Lazy;",
        "clearCache",
        "",
        "init",
        "tap-login_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

.field private static final SP_ACCOUNT_KEY:Ljava/lang/String; = "taptap_account"

.field private static final SP_MIGRATION_PROFILE_KEY:Ljava/lang/String; = "profile"

.field private static final SP_MIGRATION_TOKEN_KEY:Ljava/lang/String; = "token_data"

.field private static final SP_NAME:Ljava/lang/String; = "taptap_sharepreference"

.field private static account:Lcom/taptap/sdk/login/TapTapAccount;

.field private static final openLogService$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/login/internal/AccountManager;

    invoke-direct {v0}, Lcom/taptap/sdk/login/internal/AccountManager;-><init>()V

    sput-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    .line 17
    sget-object v0, Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;->INSTANCE:Lcom/taptap/sdk/servicemanager/utils/ServiceManagerComponent;

    .line 70
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager$special$$inlined$inject$1;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager$special$$inlined$inject$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->openLogService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;
    .locals 1

    .line 17
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->openLogService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taptap/sdk/common/services/OpenLogService;

    return-object v0
.end method


# virtual methods
.method public final clearCache()V
    .locals 3

    .line 43
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v1, "taptap_account"

    const-string v2, "taptap_sharepreference"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v1, "token_data"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v1, "profile"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->remove(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/login/internal/AccountManager;->setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V

    return-void
.end method

.method public final getAccount()Lcom/taptap/sdk/login/TapTapAccount;
    .locals 1

    .line 19
    sget-object v0, Lcom/taptap/sdk/login/internal/AccountManager;->account:Lcom/taptap/sdk/login/TapTapAccount;

    return-object v0
.end method

.method public final init()V
    .locals 7

    .line 29
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v1, "taptap_account"

    const-string v2, "taptap_sharepreference"

    invoke-virtual {v0, v1, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 30
    sget-object v3, Lcom/taptap/sdk/login/internal/AccountManager;->INSTANCE:Lcom/taptap/sdk/login/internal/AccountManager;

    sget-object v4, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 58
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/StringFormat;

    .line 63
    invoke-interface {v4}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v5

    .line 64
    const-class v6, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 65
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    .line 63
    invoke-interface {v4, v5, v0}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 67
    check-cast v0, Ljava/lang/Throwable;

    const/4 v4, 0x2

    const-string v5, "TapJson"

    invoke-static {v5, v1, v0, v4, v1}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 69
    :goto_1
    check-cast v1, Lcom/taptap/sdk/login/TapTapAccount;

    .line 30
    invoke-virtual {v3, v1}, Lcom/taptap/sdk/login/internal/AccountManager;->setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V

    .line 29
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_2
    if-nez v1, :cond_3

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/taptap/sdk/login/internal/AccountManager;

    .line 32
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v3, "token_data"

    invoke-virtual {v1, v3, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    sget-object v3, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    const-string v4, "profile"

    invoke-virtual {v3, v4, v2}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 35
    sget-object v3, Lcom/taptap/sdk/login/internal/legacy/MigrationHelper;->INSTANCE:Lcom/taptap/sdk/login/internal/legacy/MigrationHelper;

    invoke-virtual {v3, v1, v2}, Lcom/taptap/sdk/login/internal/legacy/MigrationHelper;->migrate(Ljava/lang/String;Ljava/lang/String;)Lcom/taptap/sdk/login/TapTapAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0, v1}, Lcom/taptap/sdk/login/internal/AccountManager;->setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V

    :cond_3
    return-void
.end method

.method public final setAccount(Lcom/taptap/sdk/login/TapTapAccount;)V
    .locals 5

    .line 21
    sput-object p1, Lcom/taptap/sdk/login/internal/AccountManager;->account:Lcom/taptap/sdk/login/TapTapAccount;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 23
    sget-object v1, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/utils/KVUtil;

    sget-object v2, Lcom/taptap/sdk/kit/internal/json/TapJson;->INSTANCE:Lcom/taptap/sdk/kit/internal/json/TapJson;

    .line 50
    :try_start_0
    invoke-virtual {v2}, Lcom/taptap/sdk/kit/internal/json/TapJson;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/StringFormat;

    .line 51
    invoke-interface {v2}, Lkotlinx/serialization/StringFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v3

    .line 52
    const-class v4, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 53
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    .line 51
    invoke-interface {v2, v3, p1}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 55
    check-cast v2, Ljava/lang/Throwable;

    const/4 v3, 0x2

    const-string v4, "TapJson"

    invoke-static {v4, v0, v2, v3, v0}, Lcom/taptap/sdk/kit/internal/TapLogger;->loge$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v2, v0

    :goto_0
    const-string v3, "taptap_account"

    const-string v4, "taptap_sharepreference"

    .line 23
    invoke-virtual {v1, v3, v2, v4}, Lcom/taptap/sdk/kit/internal/utils/KVUtil;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/taptap/sdk/login/internal/AccountManager;->getOpenLogService()Lcom/taptap/sdk/common/services/OpenLogService;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/taptap/sdk/login/TapTapAccount;->getOpenId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v1, v0}, Lcom/taptap/sdk/common/services/OpenLogService;->setOpenId(Ljava/lang/String;)V

    return-void
.end method
