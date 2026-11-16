.class public Lcom/yofi/sdk/utils/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->activity:Landroid/app/Activity;

    const v0, 0x1020002

    .line 37
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/utils/AndroidBug5497Workaround$1;-><init>(Lcom/yofi/sdk/utils/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    iget-object p1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/utils/AndroidBug5497Workaround;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 4

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 85
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 88
    iget-object v2, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 91
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 92
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    .line 95
    :cond_0
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 50
    invoke-direct {p0}, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 51
    iget v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    if-eq v0, v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 57
    iget-object v3, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 58
    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    :cond_0
    sub-int v2, v1, v0

    .line 62
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_2

    .line 64
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLandSpace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x32

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 66
    iget-object v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, -0x32

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 74
    iget-object v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 77
    iput v0, p0, Lcom/yofi/sdk/utils/AndroidBug5497Workaround;->usableHeightPrevious:I

    :cond_3
    return-void
.end method
