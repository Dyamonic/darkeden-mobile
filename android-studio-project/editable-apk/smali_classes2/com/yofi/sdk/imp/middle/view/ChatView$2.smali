.class Lcom/yofi/sdk/imp/middle/view/ChatView$2;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;-><init>(Lcom/yofi/sdk/activity/VerticalContainerActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

.field final synthetic val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;Lcom/yofi/sdk/activity/VerticalContainerActivity;)V
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

    .line 328
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

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
            "arg0"
        }
    .end annotation

    .line 331
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$2;->val$activity:Lcom/yofi/sdk/activity/VerticalContainerActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/VerticalContainerActivity;->finish()V

    .line 332
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$2;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 335
    :cond_0
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/socket/SocketManager;->leaveChat()V

    .line 336
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/socket/SocketManager;->clear()V

    return-void
.end method
