.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MomentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1137
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result p1

    if-lez p1, :cond_1

    .line 1138
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1139
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1140
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->reload()V

    .line 1142
    :cond_0
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->dismiss()V

    .line 1144
    :cond_1
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1145
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "state"

    .line 1147
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "Moment"

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " networkStateChanged ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$NetworkReceiver;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p1

    const-string v0, "networkStateChanged"

    invoke-virtual {p1, v0, p2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1151
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
