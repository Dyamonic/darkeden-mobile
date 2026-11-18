.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;
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

    .line 453
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 0

    .line 456
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 457
    check-cast p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;

    invoke-direct {p2, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;)V

    invoke-static {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->newInstance(Lorg/json/JSONObject;Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler$ClickEventLifecycleCallback;)Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$19;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    .line 475
    invoke-virtual {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/utils/LongClickHandler;->handler(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
