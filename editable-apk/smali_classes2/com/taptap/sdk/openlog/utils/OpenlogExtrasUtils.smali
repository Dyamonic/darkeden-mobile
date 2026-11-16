.class public final Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;
.super Ljava/lang/Object;
.source "OpenlogExtrasUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenlogExtrasUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenlogExtrasUtils.kt\ncom/taptap/sdk/openlog/utils/OpenlogExtrasUtils\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,344:1\n481#2,7:345\n481#2,7:352\n*S KotlinDebug\n*F\n+ 1 OpenlogExtrasUtils.kt\ncom/taptap/sdk/openlog/utils/OpenlogExtrasUtils\n*L\n282#1:345,7\n302#1:352,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008)\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010.H\u0002J\u001c\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010.2\u0006\u00100\u001a\u000201J\u0018\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0004H\u0002J\u0014\u00106\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010.J\u0008\u00107\u001a\u00020\u0004H\u0002J\u0016\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u000409H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;",
        "",
        "()V",
        "PARAM_ANDROID_ID",
        "",
        "PARAM_APP_PACKAGE_NAME",
        "PARAM_APP_VERSION",
        "PARAM_APP_VERSION_CODE",
        "PARAM_CLIENT_ID",
        "PARAM_CLIENT_TOKEN",
        "PARAM_COMMON_OPEN_ID",
        "PARAM_CPU",
        "PARAM_CPU_ABIS",
        "PARAM_DATA_DIR",
        "PARAM_DEVICE_ID",
        "PARAM_DV",
        "PARAM_ENV",
        "PARAM_GAID",
        "PARAM_GAME_USER_ID",
        "PARAM_GID",
        "PARAM_HARDWARE",
        "PARAM_HEIGHT",
        "PARAM_INSTALL_UUID",
        "PARAM_LOG_LEVEL",
        "PARAM_LOG_TO_CONSOLE",
        "PARAM_MD",
        "PARAM_MOBILE_TYPE",
        "PARAM_NETWORK_TYPE",
        "PARAM_OAID",
        "PARAM_OPEN_ID",
        "PARAM_OS",
        "PARAM_PLATFORM",
        "PARAM_PN",
        "PARAM_RAM",
        "PARAM_REGION",
        "PARAM_ROM",
        "PARAM_SDK_LOCALE",
        "PARAM_SV",
        "PARAM_TAPSDK_ARTIFACT",
        "PARAM_TIMEZONE",
        "PARAM_TOTAL_RAM",
        "PARAM_TOTAL_ROM",
        "PARAM_UA",
        "PARAM_WIDTH",
        "PATH_DATA_DIR",
        "getCommonExtras",
        "",
        "getConfig",
        "context",
        "Landroid/content/Context;",
        "getDataDir",
        "filesDir",
        "Ljava/io/File;",
        "path",
        "getDynamicExtras",
        "getEnvironment",
        "getOaidOrGaid",
        "Lkotlin/Pair;",
        "tap-openlog_release"
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
.field public static final INSTANCE:Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;

.field private static final PARAM_ANDROID_ID:Ljava/lang/String; = "android_id"

.field private static final PARAM_APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field private static final PARAM_APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final PARAM_APP_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field private static final PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field private static final PARAM_CLIENT_TOKEN:Ljava/lang/String; = "client_token"

.field public static final PARAM_COMMON_OPEN_ID:Ljava/lang/String; = "open_id"

.field private static final PARAM_CPU:Ljava/lang/String; = "cpu"

.field private static final PARAM_CPU_ABIS:Ljava/lang/String; = "cpu_abis"

.field private static final PARAM_DATA_DIR:Ljava/lang/String; = "data_dir"

.field private static final PARAM_DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final PARAM_DV:Ljava/lang/String; = "dv"

.field private static final PARAM_ENV:Ljava/lang/String; = "env"

.field private static final PARAM_GAID:Ljava/lang/String; = "gaid"

.field private static final PARAM_GAME_USER_ID:Ljava/lang/String; = "game_user_id"

.field private static final PARAM_GID:Ljava/lang/String; = "gid"

.field private static final PARAM_HARDWARE:Ljava/lang/String; = "hardware"

.field private static final PARAM_HEIGHT:Ljava/lang/String; = "height"

.field private static final PARAM_INSTALL_UUID:Ljava/lang/String; = "install_uuid"

.field private static final PARAM_LOG_LEVEL:Ljava/lang/String; = "log_level"

.field private static final PARAM_LOG_TO_CONSOLE:Ljava/lang/String; = "log_to_console"

.field private static final PARAM_MD:Ljava/lang/String; = "md"

.field private static final PARAM_MOBILE_TYPE:Ljava/lang/String; = "mobile_type"

.field private static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final PARAM_OAID:Ljava/lang/String; = "oaid"

.field private static final PARAM_OPEN_ID:Ljava/lang/String; = "open_id"

.field private static final PARAM_OS:Ljava/lang/String; = "os"

.field private static final PARAM_PLATFORM:Ljava/lang/String; = "platform"

.field private static final PARAM_PN:Ljava/lang/String; = "pn"

.field private static final PARAM_RAM:Ljava/lang/String; = "ram"

.field private static final PARAM_REGION:Ljava/lang/String; = "region"

.field private static final PARAM_ROM:Ljava/lang/String; = "rom"

.field private static final PARAM_SDK_LOCALE:Ljava/lang/String; = "sdk_locale"

.field private static final PARAM_SV:Ljava/lang/String; = "sv"

.field private static final PARAM_TAPSDK_ARTIFACT:Ljava/lang/String; = "tapsdk_artifact"

.field private static final PARAM_TIMEZONE:Ljava/lang/String; = "timezone"

.field private static final PARAM_TOTAL_RAM:Ljava/lang/String; = "total_ram"

.field private static final PARAM_TOTAL_ROM:Ljava/lang/String; = "total_rom"

.field private static final PARAM_UA:Ljava/lang/String; = "ua"

.field private static final PARAM_WIDTH:Ljava/lang/String; = "width"

.field private static final PATH_DATA_DIR:Ljava/lang/String; = "tapsdk"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;

    invoke-direct {v0}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;-><init>()V

    sput-object v0, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->INSTANCE:Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCommonExtras()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x15

    new-array v0, v0, [Lkotlin/Pair;

    .line 260
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_package_name"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 261
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "app_version"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 262
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getPackageVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "app_version_code"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "pn"

    const-string v4, "TapSDK"

    .line 263
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "platform"

    const-string v4, "Android"

    .line 264
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 265
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    sget-object v4, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v4}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "device_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 266
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v1

    const-string v4, "install_uuid"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 267
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 268
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dv"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 269
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v1

    const-string v4, "md"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 270
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cpu"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    .line 271
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCpuABIS()Ljava/lang/String;

    move-result-object v1

    const-string v4, "cpu_abis"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    .line 272
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getPlatform()Ljava/lang/String;

    move-result-object v1

    const-string v4, "os"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    .line 273
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getOS()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sv"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    .line 274
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "width"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    .line 275
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "height"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    .line 276
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceTotalRom(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "total_rom"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    .line 277
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceTotalRam(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "total_ram"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    .line 278
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCPUHardware()Ljava/lang/String;

    move-result-object v1

    const-string v4, "hardware"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    .line 279
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sdk_locale"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    .line 280
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getOpenId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "open_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    .line 259
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_0

    .line 348
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 351
    :cond_2
    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private final getDataDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dir.absolutePath"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getEnvironment()Ljava/lang/String;
    .locals 1

    .line 339
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->isRunInSandbox()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sandbox"

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->isRunInCloud()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cloud"

    goto :goto_0

    :cond_1
    const-string v0, "local"

    :goto_0
    return-object v0
.end method

.method private final getOaidOrGaid()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v0}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getRegion$tap_openlog_release()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 314
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getGAID()Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil$GAID;->getAndroidAdvertiserIdValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "gaid"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_1

    .line 317
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do not support region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :cond_2
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getOAID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaid"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final getConfig(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Pair;

    .line 239
    sget-object v1, Lcom/taptap/sdk/kit/internal/TapTapKit;->INSTANCE:Lcom/taptap/sdk/kit/internal/TapTapKit;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/TapTapKit;->isRND()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getRegion$tap_openlog_release()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "region"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "log_to_console"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "log_level"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x3

    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v2, "context.filesDir"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tapsdk"

    invoke-direct {p0, p1, v2}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->getDataDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "data_dir"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x4

    .line 243
    invoke-direct {p0}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    const-string v2, "env"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x5

    const-string v1, "platform"

    const-string v2, "Android"

    .line 244
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x6

    .line 245
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackUA()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ua"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/4 p1, 0x7

    .line 246
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getClientId$tap_openlog_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/16 p1, 0x8

    .line 247
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getClientToken$tap_openlog_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_token"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/16 p1, 0x9

    .line 248
    invoke-direct {p0}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->getCommonExtras()Ljava/util/Map;

    move-result-object v1

    const-string v2, "common"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    const/16 p1, 0xa

    const-string v1, "tapsdk_version"

    const-string v2, "4.5.4"

    .line 250
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 249
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "app_duration"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, p1

    .line 238
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getDynamicExtras()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/Pair;

    .line 290
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timezone"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 291
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/PlatformXUA;->getTrackSDKArtifact()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tapsdk_artifact"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 292
    invoke-direct {p0}, Lcom/taptap/sdk/openlog/utils/OpenlogExtrasUtils;->getOaidOrGaid()Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 293
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getGameUserId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "game_user_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 294
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getOpenId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "open_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 295
    sget-object v1, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->queryGID()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gid"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 296
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getRemainingRomSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "rom"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 297
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getRemainingRamSize(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "ram"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 298
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->getConnectedType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "network_type"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 299
    sget-object v1, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->INSTANCE:Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;

    invoke-virtual {v1}, Lcom/taptap/sdk/openlog/TapTapOpenlogSdk;->getContext$tap_openlog_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "mobile_type"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 300
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getPreferredLanguage()Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLanguageInternal;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sdk_locale"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    .line 289
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 353
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_0

    .line 355
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :cond_2
    check-cast v1, Ljava/util/Map;

    return-object v1
.end method
