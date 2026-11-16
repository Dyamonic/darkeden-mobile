.class Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;
.super Ljava/lang/Object;
.source "ServiceAppraiseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 43
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$1;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->finish()V

    return-void
.end method
