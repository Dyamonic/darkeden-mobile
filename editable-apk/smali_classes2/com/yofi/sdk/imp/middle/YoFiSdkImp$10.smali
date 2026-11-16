.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->querySessionApi(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$userId"
        }
    .end annotation

    .line 1268
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2
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

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    .line 1305
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const-string p2, "\u4f1a\u8bdd\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002"

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$2;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$2;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;)V

    .line 1313
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getChatIntervalSecond()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1308
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 1271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "code"

    .line 1278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "msg"

    .line 1279
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "data"

    .line 1280
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1281
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const-string v2, "readFlag"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1002(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I

    const/16 p1, 0x6f

    if-ne v0, p1, :cond_0

    .line 1283
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const-string v0, "\u4f1a\u8bdd\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002"

    invoke-static {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1000(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "readFlag = "

    const-string v0, "0"

    .line 1286
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getLoginCallback()Lcom/yofi/sdk/OnLoginCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/yofi/sdk/OnLoginCallback;->onHaveNewMessages()V

    .line 1289
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$10;)V

    .line 1295
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getChatIntervalSecond()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 1289
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1299
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
