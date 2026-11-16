.class public Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;
.super Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;
.source "MiuiNotchScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;-><init>()V

    return-void
.end method

.method private getRealNotchHeight(Landroid/content/Context;)I
    .locals 4

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getRealNotchWidth(Landroid/content/Context;)I
    .locals 4

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_width"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isHideNotch(Landroid/content/Context;)Z
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "force_black"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .locals 3

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->isHideNotch(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 35
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 37
    :cond_3
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->getRealNotchHeight(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getNotchWidth(Landroid/view/Window;)I
    .locals 3

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->isHideNotch(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 55
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 57
    :cond_3
    invoke-direct {p0, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;->getRealNotchWidth(Landroid/content/Context;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 1

    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_0
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;

    move-result-object p1

    const-string v0, "ro.miui.notch"

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
