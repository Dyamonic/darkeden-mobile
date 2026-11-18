.class public Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;
.super Ljava/lang/Object;
.source "NotchTools.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;


# static fields
.field private static final CURRENT_SDK:I

.field private static final VERSION_P:I = 0x1c

.field private static sFullScreenTolls:Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;


# instance fields
.field private mHasJudge:Z

.field private mIsNotchScreen:Z

.field private notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->CURRENT_SDK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    return-void
.end method

.method private checkScreenSupportInit(Landroid/view/Window;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-eqz p1, :cond_0

    return-void

    .line 107
    :cond_0
    sget p1, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->CURRENT_SDK:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    .line 108
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/CommonScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/CommonScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    return-void

    :cond_1
    const/16 v0, 0x1c

    if-gt p1, v0, :cond_6

    .line 115
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->isHuaWei()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/HuaWeiNotchScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/HuaWeiNotchScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/MiuiNotchScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/DeviceBrandTools;->isOppo()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 123
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/OppoNotchScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/OppoNotchScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    goto :goto_0

    .line 125
    :cond_5
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/CommonScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/CommonScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    :goto_0
    return-void

    .line 130
    :cond_6
    new-instance p1, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/PVersionNotchScreen;

    invoke-direct {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/PVersionNotchScreen;-><init>()V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    return-void
.end method

.method public static getFullScreenTools()Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;
    .locals 2

    .line 29
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->sFullScreenTolls:Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->sFullScreenTolls:Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    invoke-direct {v1}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;-><init>()V

    sput-object v1, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->sFullScreenTolls:Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->sFullScreenTolls:Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    return-object v0
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->checkScreenSupportInit(Landroid/view/Window;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_1
    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result p1

    return p1
.end method

.method public getNotchRectList(Landroid/view/Window;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Window;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getNotchWidth(Landroid/view/Window;)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->checkScreenSupportInit(Landroid/view/Window;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 78
    :cond_1
    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;->getNotchWidth(Landroid/view/Window;)I

    move-result p1

    return p1
.end method

.method public getStatusHeight(Landroid/view/Window;)I
    .locals 0

    .line 83
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->mHasJudge:Z

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->checkScreenSupportInit(Landroid/view/Window;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->notchScreenSupport:Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->mHasJudge:Z

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->mIsNotchScreen:Z

    goto :goto_0

    .line 53
    :cond_1
    invoke-interface {v0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/INotchSupport;->isNotchScreen(Landroid/view/Window;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->mIsNotchScreen:Z

    .line 56
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->mIsNotchScreen:Z

    return p1
.end method
