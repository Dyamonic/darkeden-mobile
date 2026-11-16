.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$7;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1052
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$7;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "var1",
            "msg"
        }
    .end annotation

    .line 1070
    sget-object p2, Lcom/yofi/sdk/web/WebResult;->TOKEN_ERROR_111:Lcom/yofi/sdk/web/WebResult;

    iget p2, p2, Lcom/yofi/sdk/web/WebResult;->code:I

    if-ne p1, p2, :cond_0

    .line 1073
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "type"

    const-string v0, "2"

    .line 1075
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    :catch_0
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/yofi/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$7;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "YoFiSdk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1056
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "logout"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1057
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasLoginSuccess"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1059
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->destroyHideWebView()V

    .line 1060
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hideFloat()V

    .line 1061
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setLoginOut(Z)V

    .line 1062
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->setHasLoginSuccess(Z)V

    .line 1063
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yofi/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->instance()Lcom/yofi/sdk/imp/middle/manager/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/manager/UserManager;->clearSession()V

    return-void
.end method
