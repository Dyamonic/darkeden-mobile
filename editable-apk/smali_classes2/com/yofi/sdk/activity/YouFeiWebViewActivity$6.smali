.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->logout(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    const-string v1, "YoFiSdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "logout"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasLoginSuccess"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hideFloat()V

    .line 476
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->destroyHideWebView()V

    .line 477
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setLoginOut(Z)V

    .line 478
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setHasLoginSuccess(Z)V

    .line 479
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/yofi/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->clearSession()V

    .line 482
    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$6;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-virtual {v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->finish()V

    return-void
.end method
