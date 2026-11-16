.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->heartbeat()V
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

    .line 1221
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

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

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    .line 1249
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const-string p2, "\u4f1a\u8bdd\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u3002"

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x38d

    if-ne p1, v0, :cond_1

    .line 1251
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p1, p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$900(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9$2;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9$2;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;)V

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    .line 1258
    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 1253
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

    .line 1224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "code"

    .line 1231
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    const-string v0, "msg"

    .line 1232
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "data"

    .line 1233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1234
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const-string v1, "intervalSecond"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$802(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1236
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1239
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9$1;

    invoke-direct {v0, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;)V

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$9;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    .line 1244
    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$800(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 1239
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
