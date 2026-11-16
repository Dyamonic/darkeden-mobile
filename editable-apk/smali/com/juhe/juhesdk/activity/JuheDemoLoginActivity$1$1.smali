.class Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;
.super Ljava/lang/Object;
.source "JuheDemoLoginActivity.java"

# interfaces
.implements Lcom/juhe/juhesdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;->this$1:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1
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

    const-string p1, "DefaultImp"

    .line 112
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DefaultImp:"

    const-string v0, "============Login Fail============="

    .line 113
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p1, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->loginSuccessCallBack:Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->NETWORK_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {p1, v0, p2}, Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;->onLoginFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "token"

    const-string v1, "msg"

    const-string v2, "code"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============Login Success=============="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultImp"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 85
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_1

    const-string v5, "data"

    .line 88
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v5, ""

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    const-string v0, "userName"

    const-string v7, "channelUserName"

    .line 93
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userId"

    const-string v7, "channelUserId"

    .line 94
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "accessToken"

    .line 95
    invoke-virtual {v3, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelId"

    .line 98
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;->this$1:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;

    iget-object v0, v0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    invoke-static {v0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->access$000(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;)I

    move-result v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    sget-object p1, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->loginSuccessCallBack:Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;

    invoke-interface {p1, v3}, Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;->onLoginSuccess(Lorg/json/JSONObject;)V

    .line 100
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;->this$1:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;

    iget-object p1, p1, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    invoke-virtual {p1}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_1
    sget-object p1, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->loginSuccessCallBack:Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;

    sget-object v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->SERVER_ERROR:Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;

    iget v0, v0, Lcom/juhe/juhesdk/middle/common/JUHE_RESULT;->code:I

    invoke-interface {p1, v0, v6}, Lcom/juhe/juhesdk/interfaces/JuheDemoOnLoginSuccess;->onLoginFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 107
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;->this$1:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;

    iget-object p1, p1, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    const-string v0, "\u53d1\u751f\u9519\u8bef"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
