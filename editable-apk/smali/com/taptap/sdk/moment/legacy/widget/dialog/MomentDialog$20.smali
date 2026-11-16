.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;
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

    .line 480
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 7

    .line 483
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "title"

    .line 485
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "content"

    .line 486
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "positive"

    .line 487
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "negative"

    .line 488
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cancelable"

    .line 489
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20$1;

    invoke-direct {v6, p0, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V

    .line 485
    invoke-static/range {v1 .. v6}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/taptap/sdk/moment/legacy/widget/dialog/Alert$ClickStub;)Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;

    move-result-object p1

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$20;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    .line 511
    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    sget-object v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/Alert;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
