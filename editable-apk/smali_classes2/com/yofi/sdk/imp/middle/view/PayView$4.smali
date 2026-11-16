.class Lcom/yofi/sdk/imp/middle/view/PayView$4;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/view/PayView;->doAlipay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

.field final synthetic val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/view/PayView;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dialog"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

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
            "msg"
        }
    .end annotation

    .line 228
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    .line 229
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$000(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/activity/ContainerActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "code"

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "data"

    .line 195
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    if-nez v0, :cond_0

    .line 204
    new-instance p1, Lcom/yofi/sdk/imp/middle/view/PayView$4$1;

    invoke-direct {p1, p0}, Lcom/yofi/sdk/imp/middle/view/PayView$4$1;-><init>(Lcom/yofi/sdk/imp/middle/view/PayView$4;)V

    .line 216
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/view/PayView$4;->this$0:Lcom/yofi/sdk/imp/middle/view/PayView;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/view/PayView;->access$000(Lcom/yofi/sdk/imp/middle/view/PayView;)Lcom/yofi/sdk/activity/ContainerActivity;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 222
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method
