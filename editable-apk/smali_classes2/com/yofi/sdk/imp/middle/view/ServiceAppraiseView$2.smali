.class Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$2;
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


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

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

    .line 51
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->access$000(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V

    return-void
.end method
