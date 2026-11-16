.class public Lcom/taptap/sdk/moment/legacy/utils/notch/phone/OppoNotchScreen;
.super Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;
.source "OppoNotchScreen.java"


# instance fields
.field private final DEFAULT_NOTCH_WIDTH:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;-><init>()V

    const/16 v0, 0x144

    .line 12
    iput v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/OppoNotchScreen;->DEFAULT_NOTCH_WIDTH:I

    return-void
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
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/OppoNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getNotchWidth(Landroid/view/Window;)I
    .locals 0

    const/16 p1, 0x144

    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 3

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 19
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
