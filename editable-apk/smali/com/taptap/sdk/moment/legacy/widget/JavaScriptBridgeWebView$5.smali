.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$5;
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

    .line 412
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$5;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    .line 415
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$5;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->disableJavascriptAlertBoxSafetyTimeout(Z)V

    return-void
.end method
