.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->dismiss()V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->reload()V

    :cond_0
    return-void
.end method
