.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$26;
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

    .line 580
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$26;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 1

    .line 583
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 584
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "event"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->getInstance()Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;

    move-result-object p1

    const-string v0, "scene_event.moment.taptap.action"

    invoke-virtual {p1, v0, p2}, Lcom/taptap/sdk/moment/legacy/utils/SimpleLocalBroadcastManager;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
