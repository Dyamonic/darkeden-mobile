.class Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;
.super Ljava/lang/Object;
.source "StatusBarKitKatCompact.java"


# static fields
.field private static final TAG_FAKE_STATUS_BAR_VIEW:Ljava/lang/String; = "statusBarView"

.field private static final TAG_MARGIN_ADDED:Ljava/lang/String; = "marginAdded"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFakeStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "statusBarColor",
            "statusBarHeight"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x30

    .line 81
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 82
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p0, "statusBarView"

    .line 84
    invoke-virtual {v1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private static addMarginTopToContentChild(Landroid/view/View;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContentChild",
            "statusBarHeight"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "marginAdded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const-string v0, "statusBarView"

    .line 69
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static removeMarginTopOfContentChild(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContentChild",
            "statusBarHeight"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "marginAdded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 117
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "statusColor"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x1020002

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 33
    invoke-static {p0}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 36
    invoke-static {p0}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V

    .line 38
    invoke-static {p0, p1, v2}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->addFakeStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    .line 40
    invoke-static {v0, v2}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->addMarginTopToContentChild(Landroid/view/View;I)V

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method

.method static translucentStatusBar(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x1020002

    .line 52
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-static {p0}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V

    .line 57
    invoke-static {p0}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yofi/sdk/utils/toolbar/StatusBarKitKatCompact;->removeMarginTopOfContentChild(Landroid/view/View;I)V

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_0
    return-void
.end method
