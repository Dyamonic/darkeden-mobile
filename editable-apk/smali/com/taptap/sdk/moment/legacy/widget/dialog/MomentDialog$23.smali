.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;
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

    .line 553
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 2

    .line 556
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1200(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 557
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$23;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    const-string v0, "failed"

    const-string v1, "accessToken format error"

    invoke-static {p1, v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$1100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
