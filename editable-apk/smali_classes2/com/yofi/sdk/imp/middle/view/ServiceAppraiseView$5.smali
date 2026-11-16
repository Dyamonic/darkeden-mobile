.class Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;
.super Ljava/lang/Object;
.source "ServiceAppraiseView.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->evaluateChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "var1"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iget-object p1, p1, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    :try_start_0
    const-string v0, "code"

    .line 104
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance p1, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5$1;-><init>(Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;)V

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->setDialogInterface(Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog$Callback;)V

    .line 114
    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/ServiceDialog;->show()V

    goto :goto_0

    :cond_0
    const-string v0, "msg"

    .line 116
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView$5;->this$0:Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/view/ServiceAppraiseView;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
