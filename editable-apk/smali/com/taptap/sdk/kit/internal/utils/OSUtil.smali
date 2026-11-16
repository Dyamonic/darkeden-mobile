.class public Lcom/taptap/sdk/kit/internal/utils/OSUtil;
.super Ljava/lang/Object;
.source "OSUtil.java"


# static fields
.field private static final KEY_COLOROS_VERSION_NAME:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_EMUI_VERSION_NAME:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_FLYME_VERSION_NAME:Ljava/lang/String; = "ro.build.display.id"

.field private static final KEY_HARMONYOS_VERSION_NAME:Ljava/lang/String; = "hw_sc.build.platform.version"

.field private static final KEY_MAGICUI_VERSION:Ljava/lang/String; = "ro.build.version.magic"

.field private static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_NUBIA_VERSION_CODE:Ljava/lang/String; = "ro.build.nubia.rom.code"

.field private static final KEY_NUBIA_VERSION_NAME:Ljava/lang/String; = "ro.build.nubia.rom.name"

.field private static final KEY_ONEPLUS_VERSION_NAME:Ljava/lang/String; = "ro.rom.version"

.field private static final KEY_VIVO_VERSION:Ljava/lang/String; = "ro.vivo.os.version"

.field private static final KEY_VIVO_VERSION_NAME:Ljava/lang/String; = "ro.vivo.os.name"

.field private static customOS:Ljava/lang/String; = ""

.field private static customOSVersion:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, " "

    .line 150
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomOS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->setCustomOSInfo(Ljava/lang/String;)V

    .line 124
    :cond_0
    sget-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomOSVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 134
    sget-object v0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->setCustomOSInfo(Ljava/lang/String;)V

    .line 137
    :cond_0
    sget-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 87
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 88
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 89
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isHarmonyOS()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.huawei.system.BuildEx"

    .line 104
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOsBrand"

    new-array v3, v0, [Ljava/lang/Class;

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private static setCustomOSInfo(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ro.build.version.magic"

    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->deleteSpaceAndToUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "HUAWEI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "REDMI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "NUBIA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_3
    const-string v2, "MEIZU"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_4
    const-string v2, "HONOR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "VIVO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "OPPO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "ONEPLUS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v2, "XIAOMI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "REALME"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    :cond_0
    :goto_0
    const-string p0, "ro.build.version.emui"

    const-string v2, "HarmonyOS"

    const-string v3, "EMUI"

    const-string v4, "hw_sc.build.platform.version"

    packed-switch v1, :pswitch_data_0

    :try_start_1
    const-string p0, "Android"

    goto/16 :goto_1

    :pswitch_0
    const-string p0, "ro.build.nubia.rom.name"

    .line 211
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.nubia.rom.code"

    .line 212
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_1
    const-string p0, "Flyme"

    .line 206
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.display.id"

    .line 207
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_2
    const-string p0, "HydrogenOS"

    .line 201
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.rom.version"

    .line 202
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_3
    const-string p0, "Funtouch"

    .line 196
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.vivo.os.version"

    .line 197
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_4
    const-string p0, "ColorOS"

    .line 191
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.build.version.opporom"

    .line 192
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    const-string p0, "MIUI"

    .line 185
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    const-string p0, "ro.miui.ui.version.name"

    .line 186
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    .line 166
    :pswitch_6
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->isHarmonyOS()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    sput-object v2, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    .line 168
    invoke-static {v4}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 169
    invoke-static {v4}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string p0, ""

    .line 171
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    .line 173
    :cond_2
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "MagicUI"

    .line 174
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    .line 175
    invoke-static {v0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    .line 178
    :cond_3
    sput-object v3, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    .line 179
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    .line 157
    :pswitch_7
    invoke-static {}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->isHarmonyOS()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    invoke-static {v4}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    .line 159
    sput-object v2, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_4
    sput-object v3, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    .line 162
    invoke-static {p0}, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->getSystemPropertyValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;

    goto :goto_2

    .line 215
    :goto_1
    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOS:Ljava/lang/String;

    .line 216
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object p0, Lcom/taptap/sdk/kit/internal/utils/OSUtil;->customOSVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7027944a -> :sswitch_9
        -0x65b21745 -> :sswitch_8
        -0x23e7db20 -> :sswitch_7
        0x251fa0 -> :sswitch_6
        0x2834ac -> :sswitch_5
        0x41bb44a -> :sswitch_4
        0x45d8cac -> :sswitch_3
        0x472cdb3 -> :sswitch_2
        0x4a3edcd -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
