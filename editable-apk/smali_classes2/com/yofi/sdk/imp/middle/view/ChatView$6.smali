.class Lcom/yofi/sdk/imp/middle/view/ChatView$6;
.super Ljava/util/TimerTask;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ChatView;->keepAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ChatView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "sendkeepAlive"

    const-string v1, "start"

    .line 503
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$800(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$800(Lcom/yofi/sdk/imp/middle/view/ChatView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 508
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yofi/sdk/socket/SocketManager;->setSocketManagerStatus(I)V

    .line 509
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$900(Lcom/yofi/sdk/imp/middle/view/ChatView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2300(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 512
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ChatView$6;->this$0:Lcom/yofi/sdk/imp/middle/view/ChatView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/ChatView;->access$2400(Lcom/yofi/sdk/imp/middle/view/ChatView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 513
    invoke-static {}, Lcom/yofi/sdk/socket/SocketManager;->getInstance()Lcom/yofi/sdk/socket/SocketManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/socket/SocketManager;->keepAlive()V

    :goto_0
    return-void
.end method
