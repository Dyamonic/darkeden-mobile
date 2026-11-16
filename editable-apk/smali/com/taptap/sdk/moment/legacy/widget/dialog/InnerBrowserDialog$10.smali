.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;
.super Ljava/lang/Object;
.source "InnerBrowserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$10;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-virtual {v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
