.class Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;
.super Ljava/lang/Object;
.source "ServiceAppraiseView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

.field final synthetic val$rb_no:Landroid/widget/RadioButton;

.field final synthetic val$rb_yes:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rb_no",
            "val$rb_yes"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->val$rb_yes:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->val$rb_no:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "group",
            "checkedId"
        }
    .end annotation

    .line 81
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->val$rb_yes:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    const/4 p2, 0x1

    iput p2, p1, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->isOk:I

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->val$rb_no:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    const/4 p2, 0x0

    iput p2, p1, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->isOk:I

    .line 86
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->access$100(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V

    return-void
.end method
