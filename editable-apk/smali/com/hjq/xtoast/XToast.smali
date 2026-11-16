.class public Lcom/hjq/xtoast/XToast;
.super Ljava/lang/Object;
.source "XToast.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Lcom/hjq/xtoast/XToast;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDraggable:Lcom/hjq/xtoast/draggable/BaseDraggable;

.field private mDuration:I

.field private mLifecycle:Lcom/hjq/xtoast/ToastLifecycle;

.field private mListener:Lcom/hjq/xtoast/OnToastListener;

.field private mRootView:Landroid/view/View;

.field private mShow:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/hjq/xtoast/XToast;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/hjq/xtoast/XToast;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, v1}, Lcom/hjq/xtoast/XToast;->addWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 71
    :cond_0
    new-instance v0, Lcom/hjq/xtoast/ToastLifecycle;

    invoke-direct {v0, p0, p1}, Lcom/hjq/xtoast/ToastLifecycle;-><init>(Lcom/hjq/xtoast/XToast;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mLifecycle:Lcom/hjq/xtoast/ToastLifecycle;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/hjq/xtoast/XToast;-><init>(Landroid/content/Context;)V

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/16 p1, 0x7f6

    .line 82
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setWindowType(I)Lcom/hjq/xtoast/XToast;

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    .line 84
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setWindowType(I)Lcom/hjq/xtoast/XToast;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    const-string v0, "window"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    .line 92
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    .line 93
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 95
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 96
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 97
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0xa8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private setOnClickListener(Landroid/view/View;Lcom/hjq/xtoast/OnClickListener;)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hjq/xtoast/OnClickListener;",
            ")TX;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 633
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->hasWindowFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->clearWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 636
    :cond_0
    new-instance v0, Lcom/hjq/xtoast/ViewClickWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/hjq/xtoast/ViewClickWrapper;-><init>(Lcom/hjq/xtoast/XToast;Landroid/view/View;Lcom/hjq/xtoast/OnClickListener;)V

    return-object p0
.end method

.method private setOnTouchListener(Landroid/view/View;Lcom/hjq/xtoast/OnTouchListener;)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/hjq/xtoast/OnTouchListener;",
            ")TX;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 653
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->hasWindowFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->clearWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 656
    :cond_0
    new-instance v0, Lcom/hjq/xtoast/ViewTouchWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/hjq/xtoast/ViewTouchWrapper;-><init>(Lcom/hjq/xtoast/XToast;Landroid/view/View;Lcom/hjq/xtoast/OnTouchListener;)V

    return-object p0
.end method


# virtual methods
.method public addWindowFlags(I)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 153
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public cancel()Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 420
    iget-boolean v0, p0, Lcom/hjq/xtoast/XToast;->mShow:Z

    if-eqz v0, :cond_2

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mLifecycle:Lcom/hjq/xtoast/ToastLifecycle;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/hjq/xtoast/ToastLifecycle;->unregister()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mListener:Lcom/hjq/xtoast/OnToastListener;

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v0, p0}, Lcom/hjq/xtoast/OnToastListener;->onDismiss(Lcom/hjq/xtoast/XToast;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 438
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/hjq/xtoast/XToast;->mShow:Z

    :cond_2
    return-object p0
.end method

.method public clearWindowFlags(I)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 164
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 505
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Please setup view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 664
    sget-object v0, Lcom/hjq/xtoast/XToast;->HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public hasWindowFlags(I)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShow()Z
    .locals 1

    .line 469
    iget-boolean v0, p0, Lcom/hjq/xtoast/XToast;->mShow:Z

    return v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 671
    invoke-virtual {p0, p1, v0, v1}, Lcom/hjq/xtoast/XToast;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 689
    sget-object v0, Lcom/hjq/xtoast/XToast;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .line 681
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/hjq/xtoast/XToast;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    .line 460
    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    .line 461
    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mListener:Lcom/hjq/xtoast/OnToastListener;

    .line 462
    iput-object v0, p0, Lcom/hjq/xtoast/XToast;->mDraggable:Lcom/hjq/xtoast/draggable/BaseDraggable;

    return-void
.end method

.method public removeCallbacks()V
    .locals 1

    .line 696
    sget-object v0, Lcom/hjq/xtoast/XToast;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public setAnimStyle(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 197
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setBackground(II)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 585
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 590
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TX;"
        }
    .end annotation

    .line 594
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 595
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object p0
.end method

.method public setBackgroundDimAmount(F)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lcom/hjq/xtoast/XToast;->addWindowFlags(I)Lcom/hjq/xtoast/XToast;

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, v1}, Lcom/hjq/xtoast/XToast;->clearWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_1
    return-object p0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "are you ok?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDraggable()Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 207
    new-instance v0, Lcom/hjq/xtoast/draggable/MovingDraggable;

    invoke-direct {v0}, Lcom/hjq/xtoast/draggable/MovingDraggable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->setDraggable(Lcom/hjq/xtoast/draggable/BaseDraggable;)Lcom/hjq/xtoast/XToast;

    move-result-object v0

    return-object v0
.end method

.method public setDraggable(Lcom/hjq/xtoast/draggable/BaseDraggable;)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/xtoast/draggable/BaseDraggable;",
            ")TX;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 215
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->hasWindowFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->clearWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/hjq/xtoast/XToast;->mDraggable:Lcom/hjq/xtoast/draggable/BaseDraggable;

    .line 219
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    .line 221
    iget-object p1, p0, Lcom/hjq/xtoast/XToast;->mDraggable:Lcom/hjq/xtoast/draggable/BaseDraggable;

    invoke-virtual {p1, p0}, Lcom/hjq/xtoast/draggable/BaseDraggable;->start(Lcom/hjq/xtoast/XToast;)V

    :cond_1
    return-object p0
.end method

.method public setDuration(I)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 252
    iput p1, p0, Lcom/hjq/xtoast/XToast;->mDuration:I

    .line 253
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget p1, p0, Lcom/hjq/xtoast/XToast;->mDuration:I

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->removeCallbacks()V

    .line 256
    new-instance p1, Lcom/hjq/xtoast/CancelRunnable;

    invoke-direct {p1, p0}, Lcom/hjq/xtoast/CancelRunnable;-><init>(Lcom/hjq/xtoast/XToast;)V

    iget v0, p0, Lcom/hjq/xtoast/XToast;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hjq/xtoast/XToast;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public setGravity(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 275
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setHeight(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 242
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setHint(II)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setHint(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setHint(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setHintColor(II)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 576
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHintTextColor(I)V

    return-object p0
.end method

.method public setImageDrawable(II)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 607
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 612
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TX;"
        }
    .end annotation

    .line 616
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setOnClickListener(ILcom/hjq/xtoast/OnClickListener;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/xtoast/OnClickListener;",
            ")TX;"
        }
    .end annotation

    .line 628
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setOnClickListener(Landroid/view/View;Lcom/hjq/xtoast/OnClickListener;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setOnClickListener(Lcom/hjq/xtoast/OnClickListener;)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/xtoast/OnClickListener;",
            ")TX;"
        }
    .end annotation

    .line 624
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/hjq/xtoast/XToast;->setOnClickListener(Landroid/view/View;Lcom/hjq/xtoast/OnClickListener;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setOnToastListener(Lcom/hjq/xtoast/OnToastListener;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/xtoast/OnToastListener;",
            ")TX;"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/hjq/xtoast/XToast;->mListener:Lcom/hjq/xtoast/OnToastListener;

    return-object p0
.end method

.method public setOnTouchListener(ILcom/hjq/xtoast/OnTouchListener;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hjq/xtoast/OnTouchListener;",
            ")TX;"
        }
    .end annotation

    .line 648
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setOnTouchListener(Landroid/view/View;Lcom/hjq/xtoast/OnTouchListener;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setOnTouchListener(Lcom/hjq/xtoast/OnTouchListener;)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/xtoast/OnTouchListener;",
            ")TX;"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/hjq/xtoast/XToast;->setOnTouchListener(Landroid/view/View;Lcom/hjq/xtoast/OnTouchListener;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setOrientation(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 290
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->addWindowFlags(I)Lcom/hjq/xtoast/XToast;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->clearWindowFlags(I)Lcom/hjq/xtoast/XToast;

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_1
    return-object p0
.end method

.method public setText(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    const v0, 0x102000b

    .line 537
    invoke-virtual {p0, v0, p1}, Lcom/hjq/xtoast/XToast;->setText(II)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setText(II)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/xtoast/XToast;->setText(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setText(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    const v0, 0x102000b

    .line 545
    invoke-virtual {p0, v0, p1}, Lcom/hjq/xtoast/XToast;->setText(ILjava/lang/CharSequence;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setTextColor(II)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 557
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method public setView(I)Lcom/hjq/xtoast/XToast;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setView(Landroid/view/View;)Lcom/hjq/xtoast/XToast;

    move-result-object p1

    return-object p1
.end method

.method public setView(Landroid/view/View;)Lcom/hjq/xtoast/XToast;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TX;"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    .line 343
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->setWidth(I)Lcom/hjq/xtoast/XToast;

    .line 344
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->setHeight(I)Lcom/hjq/xtoast/XToast;

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v0, :cond_3

    .line 349
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 350
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setGravity(I)Lcom/hjq/xtoast/XToast;

    goto :goto_0

    .line 351
    :cond_1
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 352
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setGravity(I)Lcom/hjq/xtoast/XToast;

    goto :goto_0

    :cond_2
    const/16 p1, 0x11

    .line 355
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->setGravity(I)Lcom/hjq/xtoast/XToast;

    .line 359
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 360
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_4
    return-object p0
.end method

.method public setVisibility(II)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    .line 529
    invoke-virtual {p0, p1}, Lcom/hjq/xtoast/XToast;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-object p0
.end method

.method public setWidth(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 231
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setWindowFlags(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 175
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setWindowParams(Landroid/view/WindowManager$LayoutParams;)Lcom/hjq/xtoast/XToast;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            ")TX;"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 323
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setWindowType(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 186
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setXOffset(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 301
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public setYOffset(I)Lcom/hjq/xtoast/XToast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 312
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->update()V

    :cond_0
    return-object p0
.end method

.method public show()Lcom/hjq/xtoast/XToast;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_7

    .line 374
    iget-boolean v0, p0, Lcom/hjq/xtoast/XToast;->mShow:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/hjq/xtoast/XToast;->cancel()Lcom/hjq/xtoast/XToast;

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 379
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 380
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object p0

    .line 388
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/hjq/xtoast/XToast;->mShow:Z

    .line 392
    iget v0, p0, Lcom/hjq/xtoast/XToast;->mDuration:I

    if-eqz v0, :cond_3

    .line 393
    new-instance v0, Lcom/hjq/xtoast/CancelRunnable;

    invoke-direct {v0, p0}, Lcom/hjq/xtoast/CancelRunnable;-><init>(Lcom/hjq/xtoast/XToast;)V

    iget v1, p0, Lcom/hjq/xtoast/XToast;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/hjq/xtoast/XToast;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mDraggable:Lcom/hjq/xtoast/draggable/BaseDraggable;

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {v0, p0}, Lcom/hjq/xtoast/draggable/BaseDraggable;->start(Lcom/hjq/xtoast/XToast;)V

    .line 401
    :cond_4
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mLifecycle:Lcom/hjq/xtoast/ToastLifecycle;

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {v0}, Lcom/hjq/xtoast/ToastLifecycle;->register()V

    .line 406
    :cond_5
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mListener:Lcom/hjq/xtoast/OnToastListener;

    if-eqz v0, :cond_6

    .line 407
    invoke-interface {v0, p0}, Lcom/hjq/xtoast/OnToastListener;->onShow(Lcom/hjq/xtoast/XToast;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 410
    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_6
    :goto_1
    return-object p0

    .line 370
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WindowParams and view cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 520
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 514
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hjq/xtoast/XToast;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/hjq/xtoast/XToast;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public update()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/hjq/xtoast/XToast;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hjq/xtoast/XToast;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/hjq/xtoast/XToast;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
