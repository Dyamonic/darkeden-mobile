.class Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;
.super Landroid/os/Handler;
.source "FloatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result p1

    if-lez p1, :cond_4

    .line 47
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 48
    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$002(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I

    .line 49
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$100(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x7

    rsub-int v0, v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 50
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$000(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 51
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$200(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/yofi/sdk/notchlib/utils/ScreenUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    const-string v2, ""

    const-string v3, "YoFiSdk"

    const/high16 v4, -0x3d100000    # -120.0f

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x2

    if-gt p1, v8, :cond_0

    .line 53
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 54
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v4, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 55
    invoke-virtual {p1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 58
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v4}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_3

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 62
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 63
    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v2, v7, v3, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 64
    invoke-virtual {p1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 65
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 67
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v8, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v8}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v8, 0x2

    if-gt p1, v8, :cond_2

    .line 71
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 72
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v7, v7, v7, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 73
    invoke-virtual {p1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 75
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 76
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v4}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$400(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    if-le p1, v4, :cond_3

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$300(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p1, Landroid/view/animation/AnimationSet;

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 80
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 81
    invoke-static {v3}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v2, v7, v7, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 82
    invoke-virtual {p1, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 85
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$500(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 89
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$602(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;I)I

    .line 90
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$700(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 91
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$700(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 92
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->access$702(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_4
    return-void
.end method
