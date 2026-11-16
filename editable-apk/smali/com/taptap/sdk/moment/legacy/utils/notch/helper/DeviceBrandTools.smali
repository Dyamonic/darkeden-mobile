.class public Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;
.super Ljava/lang/Object;
.source "DeviceBrandTools.java"


# static fields
.field private static sDeviceBrandTools:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;
    .locals 2

    .line 11
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    if-nez v0, :cond_1

    .line 12
    const-class v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    monitor-enter v0

    .line 13
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    invoke-direct {v1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;-><init>()V

    sput-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    .line 16
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 18
    :cond_1
    :goto_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->sDeviceBrandTools:Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    return-object v0
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 54
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final isHuaWei()Z
    .locals 2

    .line 22
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HUAWEI"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isMiui()Z
    .locals 1

    const-string v0, "ro.miui.ui.version.name"

    .line 30
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isOppo()Z
    .locals 1

    const-string v0, "ro.product.brand"

    .line 38
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isVivo()Z
    .locals 1

    const-string v0, "ro.vivo.os.name"

    .line 46
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
