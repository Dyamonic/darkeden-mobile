.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;
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

    .line 392
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    .line 395
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$15;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/FilePicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/FilePicker;->getData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
