.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 147
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$002(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Z)Z

    .line 152
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->getFullScreenTools()Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/moment/legacy/utils/notch/NotchTools;->isNotchScreen(Landroid/view/Window;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$002(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Z)Z

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$100(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$200(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;I)V

    .line 157
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$500(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v4}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$300(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/%s/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v5}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$400(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    iget-object v1, v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->urlExtra:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    new-instance v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    iget-object v3, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Z

    move-result v3

    new-instance v4, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;

    invoke-direct {v4, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;)V

    invoke-direct {v2, v0, v3, v4}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;-><init>(Landroid/content/Context;ZLcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;)V

    invoke-static {v1, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$602(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    .line 173
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$600(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->show()V

    :cond_1
    return-void
.end method
