.class Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;
.super Ljava/util/TimerTask;
.source "LoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Landroid/widget/ProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$progressBar"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->access$000(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;

    invoke-direct {v1, p0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;-><init>(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
