.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Lcom/taptap/sdk/kit/internal/callback/TapTapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->tapTpaLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taptap/sdk/kit/internal/callback/TapTapCallback<",
        "Lcom/taptap/sdk/login/TapTapAccount;",
        ">;"
    }
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

    .line 720
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "YoFiImpWebvieTag"

    const-string v1, "onLoginCancel"

    .line 748
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFail(Lcom/taptap/sdk/kit/internal/exception/TapTapException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 741
    invoke-virtual {p1}, Lcom/taptap/sdk/kit/internal/exception/TapTapException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YoFiImpWebvieTag"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/yofi/sdk/OnLoginCallback;->onLoginFailed(I)V

    return-void
.end method

.method public onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tapTapAccount"
        }
    .end annotation

    .line 724
    invoke-virtual {p1}, Lcom/taptap/sdk/login/TapTapAccount;->getAccessToken()Lcom/taptap/sdk/login/AccessToken;

    move-result-object p1

    .line 727
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "kid"

    .line 728
    invoke-virtual {p1}, Lcom/taptap/sdk/login/AccessToken;->getKid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac_key"

    .line 729
    invoke-virtual {p1}, Lcom/taptap/sdk/login/AccessToken;->getMacKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 730
    iget-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$800(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tapTapAccount"
        }
    .end annotation

    .line 720
    check-cast p1, Lcom/taptap/sdk/login/TapTapAccount;

    invoke-virtual {p0, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$12;->onSuccess(Lcom/taptap/sdk/login/TapTapAccount;)V

    return-void
.end method
