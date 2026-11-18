.class Lcom/hjq/xtoast/draggable/SpringDraggable$1;
.super Ljava/lang/Object;
.source "SpringDraggable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/xtoast/draggable/SpringDraggable;->startAnimation(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/xtoast/draggable/SpringDraggable;

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/hjq/xtoast/draggable/SpringDraggable;F)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable$1;->this$0:Lcom/hjq/xtoast/draggable/SpringDraggable;

    iput p2, p0, Lcom/hjq/xtoast/draggable/SpringDraggable$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/hjq/xtoast/draggable/SpringDraggable$1;->this$0:Lcom/hjq/xtoast/draggable/SpringDraggable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/hjq/xtoast/draggable/SpringDraggable$1;->val$y:F

    invoke-virtual {v0, p1, v1}, Lcom/hjq/xtoast/draggable/SpringDraggable;->updateLocation(FF)V

    return-void
.end method
