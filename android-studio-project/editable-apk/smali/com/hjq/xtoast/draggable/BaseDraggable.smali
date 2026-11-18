.class public abstract Lcom/hjq/xtoast/draggable/BaseDraggable;
.super Ljava/lang/Object;
.source "BaseDraggable.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mRootView:Landroid/view/View;

.field private mToast:Lcom/hjq/xtoast/XToast;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRootView()Landroid/view/View;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method protected getStatusBarHeight()I
    .locals 2

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/hjq/xtoast/draggable/BaseDraggable;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 57
    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method protected getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method protected getXToast()Lcom/hjq/xtoast/XToast;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mToast:Lcom/hjq/xtoast/XToast;

    return-object v0
.end method

.method protected isTouchMove(FFFF)Z
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    if-ne p1, p2, :cond_1

    float-to-int p1, p3

    float-to-int p2, p4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public start(Lcom/hjq/xtoast/XToast;)V
    .locals 1

    .line 27
    iput-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mToast:Lcom/hjq/xtoast/XToast;

    .line 28
    invoke-virtual {p1}, Lcom/hjq/xtoast/XToast;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mRootView:Landroid/view/View;

    .line 29
    invoke-virtual {p1}, Lcom/hjq/xtoast/XToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowManager:Landroid/view/WindowManager;

    .line 30
    invoke-virtual {p1}, Lcom/hjq/xtoast/XToast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 32
    iget-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected updateLocation(FF)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/draggable/BaseDraggable;->updateLocation(II)V

    return-void
.end method

.method protected updateLocation(II)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v0, p2, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 76
    iget-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 78
    iget-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const p2, 0x800033

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 80
    :try_start_0
    iget-object p1, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/hjq/xtoast/draggable/BaseDraggable;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
