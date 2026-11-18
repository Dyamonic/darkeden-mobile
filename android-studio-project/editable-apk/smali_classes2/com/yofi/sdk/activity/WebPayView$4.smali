.class Lcom/yofi/sdk/activity/WebPayView$4;
.super Ljava/lang/Object;
.source "WebPayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/WebPayView;->payResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/WebPayView;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/WebPayView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$str"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    iput-object p2, p0, Lcom/yofi/sdk/activity/WebPayView$4;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "amount"

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/yofi/sdk/activity/WebPayView$4;->val$str:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/yofi/sdk/activity/WebPayView;->access$102(Lcom/yofi/sdk/activity/WebPayView;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 241
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v1}, Lcom/yofi/sdk/activity/WebPayView;->access$100(Lcom/yofi/sdk/activity/WebPayView;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/yofi/sdk/activity/WebPayView;->access$002(Lcom/yofi/sdk/activity/WebPayView;Z)Z

    .line 244
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    const-string v4, "REGISTER_TIME"

    invoke-virtual {v1, v4, v2}, Lcom/yofi/sdk/activity/WebPayView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "time"

    const-string v5, ""

    .line 245
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v1}, Lcom/yofi/sdk/activity/WebPayView;->access$100(Lcom/yofi/sdk/activity/WebPayView;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v2, v0

    :cond_0
    const-string v0, "WebPayViewTag"

    const-string v1, "payResult paySuccess \u5f00\u59cb\u8c03\u7528clientReportOrderToAd"

    .line 255
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v1}, Lcom/yofi/sdk/activity/WebPayView;->access$300(Lcom/yofi/sdk/activity/WebPayView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->clientReportOrderToAd(Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v0, v3}, Lcom/yofi/sdk/activity/WebPayView;->access$202(Lcom/yofi/sdk/activity/WebPayView;Z)Z

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/activity/WebPayView$4;->this$0:Lcom/yofi/sdk/activity/WebPayView;

    invoke-static {v0, v2}, Lcom/yofi/sdk/activity/WebPayView;->access$002(Lcom/yofi/sdk/activity/WebPayView;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
