.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/yofi/sdk/web/WebAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getInitParams(Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$cb:Lcom/yofi/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cb"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

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

    .line 587
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "code"

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 591
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 593
    :goto_0
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    const-string v0, "isOpenBackH5"

    const-string v1, "chatIntervalSecond"

    const-string v2, "wsHeartbeatIntervalSecond"

    const-string v3, "wsUrl"

    :try_start_0
    const-string v4, "data"

    .line 562
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 564
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 566
    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v4, v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$002(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/String;)Ljava/lang/String;

    .line 569
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    iget-object v3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$102(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I

    .line 572
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$202(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I

    .line 576
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 577
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$302(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;I)I

    .line 579
    :cond_3
    iget-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$2;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 582
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
