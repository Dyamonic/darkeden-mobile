.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;Landroid/webkit/JsResult;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 607
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$900(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$7$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method
