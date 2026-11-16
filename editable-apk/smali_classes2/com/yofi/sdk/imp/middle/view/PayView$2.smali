.class Lcom/yofi/sdk/imp/middle/view/PayView$2;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/PayView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/PayView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/PayView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

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
            "view"
        }
    .end annotation

    .line 114
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$100(Lcom/yofi/sdk/imp/middle/view/PayView;)I

    move-result p1

    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->ALI:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$200(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$100(Lcom/yofi/sdk/imp/middle/view/PayView;)I

    move-result p1

    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->WECHAT:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 117
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$300(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$100(Lcom/yofi/sdk/imp/middle/view/PayView;)I

    move-result p1

    sget-object v0, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->SANDBOX:Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/common/Constants$PAY_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 119
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$400(Lcom/yofi/sdk/imp/middle/view/PayView;)V

    :cond_2
    :goto_0
    return-void
.end method
