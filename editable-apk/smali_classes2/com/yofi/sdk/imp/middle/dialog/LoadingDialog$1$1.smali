.class Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;
.super Ljava/lang/Object;
.source "LoadingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iget v1, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    .line 50
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iget v0, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->val$progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1$1;->this$1:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;

    iget-object v1, v1, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog$1;->this$0:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iget v1, v1, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
