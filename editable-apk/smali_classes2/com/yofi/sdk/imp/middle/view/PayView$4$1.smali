.class Lcom/yofi/sdk/imp/middle/view/PayView$4$1;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/PayView$4;->onSuccess(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/view/PayView$4;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/PayView$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4$1;->this$1:Lcom/yofi/sdk/imp/middle/view/PayView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 209
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 210
    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4$1;->this$1:Lcom/yofi/sdk/imp/middle/view/PayView$4;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/view/PayView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$600(Lcom/yofi/sdk/imp/middle/view/PayView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
