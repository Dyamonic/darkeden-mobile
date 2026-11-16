.class public Lcom/yofi/sdk/imp/middle/YoFiViewBuilder;
.super Ljava/lang/Object;
.source "YoFiViewBuilder.java"

# interfaces
.implements Lcom/yofi/sdk/interfaces/IViewBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)Lcom/yofi/sdk/interfaces/IContainerView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "containerActivity",
            "bundle"
        }
    .end annotation

    const-string v0, "FUNCTION_CODE"

    .line 22
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/TapTapCheckUpdateView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V

    return-object v0

    .line 25
    :cond_1
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/CheckUpdateView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V

    return-object v0

    .line 31
    :cond_2
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/PayView;-><init>(Lcom/yofi/sdk/activity/ContainerActivity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public create(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)Lcom/yofi/sdk/interfaces/IContainerView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "containerActivity",
            "bundle"
        }
    .end annotation

    const-string v0, "FUNCTION_CODE"

    .line 39
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 46
    :pswitch_0
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V

    return-object v0

    .line 42
    :pswitch_1
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/PopView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/PopView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V

    return-object v0

    .line 44
    :pswitch_2
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-direct {v0, p1, p2}, Lcom/yofi/sdk/imp/middle/view/ChatView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
