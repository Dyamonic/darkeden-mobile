.class public Lcom/hjq/xtoast/draggable/MovingDraggable;
.super Lcom/hjq/xtoast/draggable/BaseDraggable;
.source "MovingDraggable.java"


# instance fields
.field private mViewDownX:F

.field private mViewDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/hjq/xtoast/draggable/BaseDraggable;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0}, Lcom/hjq/xtoast/draggable/MovingDraggable;->getStatusBarHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 33
    iget v0, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownX:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownY:F

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/draggable/MovingDraggable;->updateLocation(FF)V

    goto :goto_0

    .line 37
    :cond_1
    iget p1, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/hjq/xtoast/draggable/MovingDraggable;->isTouchMove(FFFF)Z

    move-result p1

    return p1

    .line 25
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownX:F

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hjq/xtoast/draggable/MovingDraggable;->mViewDownY:F

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
