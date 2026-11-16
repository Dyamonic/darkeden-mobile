.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 289
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 292
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 293
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 294
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onTouch"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
