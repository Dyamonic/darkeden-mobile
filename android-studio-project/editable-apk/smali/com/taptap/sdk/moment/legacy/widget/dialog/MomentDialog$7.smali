.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;
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

    .line 269
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 3

    .line 272
    instance-of p2, p1, Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 274
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "duration"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 276
    iget-object p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object p2

    new-instance v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;

    invoke-direct {v0, p0, p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
