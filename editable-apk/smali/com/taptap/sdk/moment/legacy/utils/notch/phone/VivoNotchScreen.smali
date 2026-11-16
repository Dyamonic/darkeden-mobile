.class public Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;
.super Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;
.source "VivoNotchScreen.java"


# instance fields
.field private final DEFAULT_NOTCH_WIDTH:I

.field private mClass:Ljava/lang/Class;

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/utils/notch/core/AbsNotchScreenSupport;-><init>()V

    const/16 v0, 0x64

    .line 17
    iput v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;->DEFAULT_NOTCH_WIDTH:I

    return-void
.end method


# virtual methods
.method public getNotchHeight(Landroid/view/Window;)I
    .locals 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    .line 42
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;->isNotchScreen(Landroid/view/Window;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/notch/helper/NotchStatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getNotchWidth(Landroid/view/Window;)I
    .locals 0

    const/high16 p1, 0x42c80000    # 100.0f

    .line 50
    invoke-static {p1}, Lcom/taptap/sdk/kit/internal/extensions/UIExtKt;->toPx(F)I

    move-result p1

    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 5

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :try_start_0
    const-string v0, "android.util.FtFeature"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;->mClass:Ljava/lang/Class;

    const-string v0, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 32
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;->mMethod:Ljava/lang/reflect/Method;

    .line 33
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/utils/notch/phone/VivoNotchScreen;->mClass:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method
