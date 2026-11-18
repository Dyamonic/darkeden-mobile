.class public Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "AndroidBug5497Workaround.java"


# instance fields
.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mChildOfContent:Landroid/view/View;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020002

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround$1;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround$2;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 40
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->possiblyResizeChildOfContent()V

    return-void
.end method

.method public static assistActivity(Landroid/app/Activity;)V
    .locals 1

    .line 12
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static assistActivity(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;

    invoke-direct {v0, p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;-><init>(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 2

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 61
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    return v1
.end method

.method private possiblyResizeChildOfContent()V
    .locals 4

    .line 44
    invoke-direct {p0}, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->computeUsableHeight()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v2, v1, v0

    .line 47
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 55
    iput v0, p0, Lcom/taptap/sdk/moment/legacy/widget/AndroidBug5497Workaround;->usableHeightPrevious:I

    return-void
.end method
