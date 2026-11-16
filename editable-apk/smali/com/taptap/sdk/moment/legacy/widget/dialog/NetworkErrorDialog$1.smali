.class Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;
.super Ljava/lang/Object;
.source "NetworkErrorDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->initView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-static {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->access$000(Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$RefreshCallback;->onClose()V

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog$1;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;

    invoke-virtual {p1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/NetworkErrorDialog;->dismiss()V

    return-void
.end method
