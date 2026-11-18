.class Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;
.super Ljava/lang/Object;
.source "JuheDemoLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

.field final synthetic val$loginNameEditText:Landroid/widget/TextView;

.field final synthetic val$passwordEditText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$passwordEditText",
            "val$loginNameEditText"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    iput-object p2, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->val$loginNameEditText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->val$passwordEditText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->val$loginNameEditText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->val$passwordEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    const-string v0, "\u8bf7\u8f93\u5165\u8d26\u53f7"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;->this$0:Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity;

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 66
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "loginName"

    .line 67
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "password"

    .line 68
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getAppId()I

    move-result v2

    const-string p1, "DefaultImp"

    const-string v0, "============Login Start=============="

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->instance()Lcom/juhe/juhesdk/middle/manager/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/juhe/juhesdk/middle/manager/ConfigManager;->getJuheChannel()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;

    invoke-direct {v7, p0}, Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1$1;-><init>(Lcom/juhe/juhesdk/activity/JuheDemoLoginActivity$1;)V

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/juhe/juhesdk/middle/manager/LittleApiImp;->juheLogin(IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/juhe/juhesdk/web/WebAPICallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
