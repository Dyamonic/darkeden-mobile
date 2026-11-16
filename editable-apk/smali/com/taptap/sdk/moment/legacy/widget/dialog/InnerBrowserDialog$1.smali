.class Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;
.super Landroid/app/Dialog;
.source "InnerBrowserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;Landroid/content/Context;I)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 133
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/InnerBrowserDialog$1;->dismiss()V

    :goto_0
    return-void
.end method
