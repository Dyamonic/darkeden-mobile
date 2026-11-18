.class public final Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;
.super Ljava/lang/Object;
.source "TapEventParameterKit.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;",
        "",
        "()V",
        "fillingGeneralParameter",
        "",
        "context",
        "Landroid/content/Context;",
        "parameter",
        "Lorg/json/JSONObject;",
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
.field public static final INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;

    invoke-direct {v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;-><init>()V

    sput-object v0, Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventParameterKit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fillingGeneralParameter(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "os"

    const-string v1, "Android"

    .line 24
    invoke-static {p2, v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dv"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "md"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getInstallUUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_uuid"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceSize(Landroid/content/Context;)[I

    move-result-object v0

    const-string v1, "getDeviceSize(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 29
    aget v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-static {p2, v3, v2}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 30
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "height"

    invoke-static {p2, v3, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getOS()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sv"

    invoke-static {p2, v3, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "provider"

    invoke-static {p2, v3, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    .line 34
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    const-string v2, "app_version"

    if-eqz v1, :cond_2

    .line 35
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p2, v2, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "sdk_version"

    const-string v1, "4.5.4"

    .line 39
    invoke-static {p2, v0, v1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->getConnectedType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_type"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile_type"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCPUAbi()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpu"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getRemainingRomSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "rom"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getRemainingRamSize(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ram"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceTotalRom(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "total_rom"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getDeviceTotalRam(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "total_ram"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getCPUHardware()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hardWare"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lang_system"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getOSType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "os_type"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getCustomOS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mos"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getCustomOSVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mosv"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->INSTANCE:Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getUniqueDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id5"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->INSTANCE:Lcom/taptap/sdk/db/event/utils/TapEventLogger;

    invoke-virtual {v0}, Lcom/taptap/sdk/db/event/utils/TapEventLogger;->getSdkOptions()Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/initializer/api/option/TapTapSdkOptions;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/utils/DeviceUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id1"

    invoke-static {p2, v1, v0}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/identifier/TapIdentifierUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p2, v0, p1}, Lcom/taptap/sdk/db/event/utils/TapEventParameterKitKt;->putProperty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
