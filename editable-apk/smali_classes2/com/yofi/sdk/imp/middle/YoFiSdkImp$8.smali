.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->pay(Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

.field final synthetic val$payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;Landroid/content/Context;Lcom/yofi/sdk/imp/middle/data/PayInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$payInfo",
            "val$context",
            "val$dialog"
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

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

    .line 1159
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    .line 1160
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1102
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bicgod"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$dialog:Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/LoadingDialog;->dismiss()V

    :try_start_0
    const-string v0, "code"

    .line 1109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "data"

    .line 1110
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "msg"

    .line 1111
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_1

    const-string p1, "orderId"

    .line 1113
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "alipayH5"

    .line 1114
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "isSandbox"

    .line 1115
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "APP_ORDER_ID"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 1117
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1118
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1119
    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    const-class v6, Lcom/yofi/sdk/activity/WebPayView;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1120
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "APP_ORDER_AMOUNT"

    .line 1121
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/data/PayInfo;->getAmount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "BOTH_H5"

    .line 1122
    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1123
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1124
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1126
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1127
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "FUNCTION_CODE"

    const/4 v6, 0x3

    .line 1128
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "SANDBOX"

    .line 1129
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "PAY_INFO"

    .line 1130
    iget-object v5, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$payInfo:Lcom/yofi/sdk/imp/middle/data/PayInfo;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1131
    invoke-virtual {v4, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1133
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    const-class v2, Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1134
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1136
    :cond_1
    sget-object v2, Lcom/yofi/sdk/web/WebResult;->TOKEN_ERROR_111:Lcom/yofi/sdk/web/WebResult;

    iget v2, v2, Lcom/yofi/sdk/web/WebResult;->code:I

    if-ne v0, v2, :cond_2

    .line 1137
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->hideFloat()V

    .line 1138
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Landroid/app/Activity;

    move-result-object p1

    const-string v0, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1140
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "type"

    const-string v2, "2"

    .line 1142
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1146
    :catch_0
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yofi/sdk/OnLoginCallback;->onLogoutSuccess(Ljava/lang/String;)V

    return-void

    .line 1150
    :cond_2
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$8;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1153
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
