.class Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$container:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$ttmGifView:Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/TTMGifView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/utils/Utils;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;->onRefresh()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-virtual {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->dismiss()V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2;->val$tip:Landroid/widget/TextView;

    new-instance v1, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1$1;

    invoke-direct {v1, p0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1$1;-><init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$2$1;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
