.class Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$2;
.super Ljava/util/TimerTask;
.source "FloatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$2;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 138
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 139
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 140
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog$2;->this$0:Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
