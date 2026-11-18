.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 305
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->access$702(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 306
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 307
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    const/4 v0, -0x2

    .line 308
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$2;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
