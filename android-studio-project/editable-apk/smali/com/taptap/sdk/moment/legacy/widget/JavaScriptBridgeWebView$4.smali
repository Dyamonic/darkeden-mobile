.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    .line 406
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$700(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    .line 407
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$700(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$JavascriptCloseWindowListener;->onClose()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$4;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method
