.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 2

    .line 428
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "state"

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "message"

    const-string v1, ""

    .line 430
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, "publish_cancel.moment.taptap.action"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string p2, "publish_fail.moment.taptap.action"

    goto :goto_0

    :cond_1
    const-string p2, "publish_success.moment.taptap.action"

    .line 437
    :goto_0
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 438
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;)V

    .line 442
    :cond_2
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$17;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->dismiss()V

    return-void
.end method
