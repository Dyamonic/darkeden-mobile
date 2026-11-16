.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$8;
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

    .line 292
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
    .locals 1

    .line 296
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const-string p2, "tapitk://browser/external"

    .line 298
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "tapitk://browser/external?to="

    const-string v0, ""

    .line 299
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->decodeFromBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 302
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 303
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$8;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {p1, p2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
