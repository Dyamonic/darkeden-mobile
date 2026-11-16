.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;->handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinally(Z)V
    .locals 3

    .line 461
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message"

    if-eqz p1, :cond_0

    .line 464
    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_save_success:I

    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 465
    :cond_0
    sget v2, Lcom/taptap/sdk/moment/R$string;->moment_save_fail:I

    invoke-static {v2}, Lcom/taptap/sdk/kit/internal/utils/localize/TapLocalizeUtil;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    .line 463
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "duration"

    const/16 v2, 0x7d0

    .line 466
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    if-eqz p1, :cond_1

    const-string p1, "success"

    goto :goto_1

    :cond_1
    const-string p1, "fail"

    .line 467
    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 471
    :goto_2
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 472
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object p1

    const-string v1, "toast"

    invoke-virtual {p1, v1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->callHandler(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
