.class Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;
.super Ljava/lang/Object;
.source "CheckUpdateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;

.field final synthetic val$activity:Lcom/yofi/sdk/activity/ContainerActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;Lcom/yofi/sdk/activity/ContainerActivity;)V
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

    .line 59
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;->val$activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setIsCheckUpdate(Z)V

    .line 62
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView$2;->val$activity:Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/ContainerActivity;->finish()V

    return-void
.end method
