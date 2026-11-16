.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$6;
.super Ljava/lang/Object;
.source "JavaScriptBridgeWebView.java"


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

    .line 418
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$6;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notice(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 423
    iput v1, v0, Landroid/os/Message;->what:I

    .line 424
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$6;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->mainThreadHandler:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;

    invoke-virtual {p1, v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
