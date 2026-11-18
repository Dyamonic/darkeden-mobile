.class Lcom/yofi/sdk/imp/middle/view/PopView$1;
.super Ljava/lang/Object;
.source "PopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/PopView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/PopView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/PopView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PopView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/PopView;

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
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PopView$1;->this$0:Lcom/yofi/sdk/imp/middle/view/PopView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PopView;->access$000(Lcom/yofi/sdk/imp/middle/view/PopView;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
