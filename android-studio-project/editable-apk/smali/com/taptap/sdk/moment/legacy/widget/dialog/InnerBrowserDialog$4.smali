.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private final animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private endY:F

.field private height:I

.field private startY:F

.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

.field private final updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    .line 287
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->height:I

    .line 289
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 300
    new-instance p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;

    invoke-direct {p1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic access$702(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 320
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 321
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 329
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->endY:F

    .line 331
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    const/16 p2, 0xc8

    .line 336
    iget v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->endY:F

    iget v3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->startY:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, p1

    const/4 v3, 0x2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-gtz v2, :cond_2

    new-array p1, v3, [I

    aput v0, p1, v0

    .line 337
    iget v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->height:I

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    .line 338
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 339
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 340
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 341
    :cond_2
    iget v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->startY:F

    iget v4, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->endY:F

    sub-float/2addr v2, v4

    cmpl-float p1, v2, p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    .line 342
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->height:I

    new-array v2, v3, [I

    aput p1, v2, v0

    aput v0, v2, v1

    .line 343
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    .line 344
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 345
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 346
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 349
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->startY:F

    .line 350
    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->endY:F

    goto :goto_1

    .line 325
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->startY:F

    :goto_1
    return v0
.end method
