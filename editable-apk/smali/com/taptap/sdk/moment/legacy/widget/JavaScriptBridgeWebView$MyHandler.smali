.class Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;
.super Landroid/os/Handler;
.source "JavaScriptBridgeWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Landroid/content/Context;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$300(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;

    .line 96
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object v1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;->url:Ljava/lang/String;

    iget-object p1, p1, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$RequestInfo;->headers:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$201(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$101(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$MyHandler;->this$0:Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->access$000(Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
