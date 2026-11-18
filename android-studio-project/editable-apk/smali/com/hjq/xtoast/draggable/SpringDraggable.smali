.class public Lcom/hjq/xtoast/draggable/SpringDraggable;
.super Lcom/hjq/xtoast/draggable/BaseDraggable;
.source "SpringDraggable.java"


# instance fields
.field private mViewDownX:F

.field private mViewDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/hjq/xtoast/draggable/BaseDraggable;-><init>()V

    return-void
.end method

.method private getScreenWidth()I
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/hjq/xtoast/draggable/SpringDraggable;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 72
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private startAnimation(FFF)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 84
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    new-instance p2, Lcom/hjq/xtoast/draggable/SpringDraggable$1;

    invoke-direct {p2, p0, p3}, Lcom/hjq/xtoast/draggable/SpringDraggable$1;-><init>(Lcom/hjq/xtoast/draggable/SpringDraggable;F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0}, Lcom/hjq/xtoast/draggable/SpringDraggable;->getStatusBarHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 39
    iget v0, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownY:F

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/draggable/SpringDraggable;->updateLocation(FF)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Lcom/hjq/xtoast/draggable/SpringDraggable;->getStatusBarHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 46
    invoke-direct {p0}, Lcom/hjq/xtoast/draggable/SpringDraggable;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v1, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/4 v1, 0x0

    .line 57
    :cond_2
    iget v2, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownX:F

    sub-float/2addr p1, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownY:F

    sub-float/2addr v0, v2

    invoke-direct {p0, p1, v1, v0}, Lcom/hjq/xtoast/draggable/SpringDraggable;->startAnimation(FFF)V

    .line 59
    iget p1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/hjq/xtoast/draggable/SpringDraggable;->isTouchMove(FFFF)Z

    move-result p1

    return p1

    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownX:F

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable;->mViewDownY:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
