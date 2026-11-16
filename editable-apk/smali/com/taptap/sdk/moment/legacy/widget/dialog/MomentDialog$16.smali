.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;
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

    .line 401
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 4

    .line 404
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    check-cast p1, Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "id"

    .line 407
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "limit"

    const/16 v3, 0x2710

    .line 409
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 411
    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$16;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->getFileData(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 415
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    .line 416
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    invoke-interface {p2, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 419
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
