.class Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;
.super Ljava/lang/Object;
.source "MomentDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->handler(Ljava/lang/Object;Lcom/taptap/sdk/moment/legacy/widget/JavaScriptBridgeWebView$WebViewJavascriptBridgeResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iput p2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iget-object v2, v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    iget-object v0, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iget-object v0, v0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v0}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->this$1:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;

    iget-object v2, v2, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7;->this$0:Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;

    invoke-static {v2}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;->access$700(Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog;)Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$7$1;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taptap/sdk/moment/legacy/widget/dialog/MomentDialog$ForumHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
