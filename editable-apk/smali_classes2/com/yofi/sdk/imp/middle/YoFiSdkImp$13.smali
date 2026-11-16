.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->checkUpdate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 1426
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->val$context:Landroid/content/Context;

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

    .line 1480
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

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

    const-string v0, "updateType"

    const-string v1, "content"

    :try_start_0
    const-string v2, "data"

    .line 1430
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "need"

    .line 1431
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1432
    sget-object v3, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->NONE:Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;

    invoke-virtual {v3}, Lcom/yofi/sdk/imp/middle/common/Constants$UPDATE_TYPE;->getValue()I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 1433
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1, v4}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    goto/16 :goto_0

    :cond_0
    const-string v3, "url"

    .line 1435
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    .line 1438
    iget-object v6, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    .line 1440
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1441
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1445
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1446
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const-string p1, "UPDATE_CONTENT"

    const-string v0, "UPDATE_NEED_TYPE"

    const-string v1, "FUNCTION_CODE"

    if-ne v4, v7, :cond_3

    .line 1451
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1452
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/16 v6, 0x12

    .line 1453
    invoke-virtual {v4, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1454
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1455
    invoke-virtual {v4, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1457
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->val$context:Landroid/content/Context;

    const-class v0, Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1458
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1462
    :cond_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1463
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/16 v7, 0x11

    .line 1464
    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1465
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DOWNLOAD_URL"

    .line 1466
    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v6, p1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v4, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1469
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->val$context:Landroid/content/Context;

    const-class v0, Lcom/yofi/sdk/activity/ContainerActivity;

    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1470
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$13;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
