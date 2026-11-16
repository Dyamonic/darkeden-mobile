.class Lcom/yofi/sdk/imp/middle/view/NewContactView$4;
.super Ljava/lang/Object;
.source "NewContactView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/NewContactView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$requestCode"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    iput p2, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;->val$requestCode:I

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
            "arg0"
        }
    .end annotation

    .line 212
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/NewContactView;

    iget v0, p0, Lcom/yofi/sdk/imp/middle/view/NewContactView$4;->val$requestCode:I

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/view/NewContactView;->access$100(Lcom/yofi/sdk/imp/middle/view/NewContactView;I)V

    return-void
.end method
