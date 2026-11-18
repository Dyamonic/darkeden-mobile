.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->handleMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iput-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 275
    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;-><init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$1;)V

    .line 276
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;->val$callbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseId:Ljava/lang/String;

    .line 277
    iput-object p1, v0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;->responseData:Ljava/lang/Object;

    .line 278
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-static {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$500(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeMessage;)V

    return-void
.end method
