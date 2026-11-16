.class public Lcom/yofi/sdk/notchlib/NotchScreenManager;
.super Ljava/lang/Object;
.source "NotchScreenManager.java"


# static fields
.field private static final instance:Lcom/yofi/sdk/notchlib/NotchScreenManager;


# instance fields
.field private final notchScreen:Lcom/yofi/sdk/notchlib/INotchScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/yofi/sdk/notchlib/NotchScreenManager;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;-><init>()V

    sput-object v0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->instance:Lcom/yofi/sdk/notchlib/NotchScreenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/yofi/sdk/notchlib/NotchScreenManager;->getNotchScreen()Lcom/yofi/sdk/notchlib/INotchScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->notchScreen:Lcom/yofi/sdk/notchlib/INotchScreen;

    return-void
.end method

.method public static getInstance()Lcom/yofi/sdk/notchlib/NotchScreenManager;
    .locals 1

    .line 26
    sget-object v0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->instance:Lcom/yofi/sdk/notchlib/NotchScreenManager;

    return-object v0
.end method

.method private getNotchScreen()Lcom/yofi/sdk/notchlib/INotchScreen;
    .locals 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Lcom/yofi/sdk/notchlib/impl/AndroidPNotchScreen;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/impl/AndroidPNotchScreen;-><init>()V

    goto :goto_0

    .line 56
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 57
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lcom/yofi/sdk/notchlib/impl/HuaweiNotchScreen;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/impl/HuaweiNotchScreen;-><init>()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isOppo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lcom/yofi/sdk/notchlib/impl/OppoNotchScreen;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/impl/OppoNotchScreen;-><init>()V

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Lcom/yofi/sdk/notchlib/impl/VivoNotchScreen;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/impl/VivoNotchScreen;-><init>()V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {}, Lcom/yofi/sdk/notchlib/utils/RomUtils;->isXiaomi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    new-instance v0, Lcom/yofi/sdk/notchlib/impl/MiNotchScreen;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/impl/MiNotchScreen;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getNotchInfo(Landroid/app/Activity;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "notchScreenCallback"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;

    invoke-direct {v0}, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->notchScreen:Lcom/yofi/sdk/notchlib/INotchScreen;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/yofi/sdk/notchlib/INotchScreen;->hasNotch(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->notchScreen:Lcom/yofi/sdk/notchlib/INotchScreen;

    new-instance v2, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/yofi/sdk/notchlib/NotchScreenManager$1;-><init>(Lcom/yofi/sdk/notchlib/NotchScreenManager;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/yofi/sdk/notchlib/INotchScreen;->getNotchRect(Landroid/app/Activity;Lcom/yofi/sdk/notchlib/INotchScreen$NotchSizeCallback;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p2, v0}, Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenCallback;->onResult(Lcom/yofi/sdk/notchlib/INotchScreen$NotchScreenInfo;)V

    :goto_0
    return-void
.end method

.method public setDisplayInNotch(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/notchlib/NotchScreenManager;->notchScreen:Lcom/yofi/sdk/notchlib/INotchScreen;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Lcom/yofi/sdk/notchlib/INotchScreen;->setDisplayInNotch(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
