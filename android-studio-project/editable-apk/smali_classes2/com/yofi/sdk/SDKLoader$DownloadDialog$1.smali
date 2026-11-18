.class Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;
.super Landroid/os/Handler;
.source "SDKLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/SDKLoader$DownloadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 254
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-virtual {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->dismiss()V

    .line 270
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$600(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Lcom/yofi/sdk/SDKLoader$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/yofi/sdk/SDKLoader$Callback;->onSuccess()V

    goto/16 :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$300(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$302(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)I

    .line 264
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0, v2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$202(Lcom/yofi/sdk/SDKLoader$DownloadDialog;I)I

    .line 265
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$100(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$200(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 266
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$500(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6b63\u5728\u66f4\u65b0SDK 0% "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v3}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$300(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$400(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$100(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v3}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$000(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$100(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v3, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v3}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$200(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 259
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$000(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$200(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget-object v2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$000(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v2

    div-int v2, v0, v2

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$500(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u66f4\u65b0SDK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v2}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$300(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v1}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$400(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_5
    iget-object v0, p0, Lcom/yofi/sdk/SDKLoader$DownloadDialog$1;->this$0:Lcom/yofi/sdk/SDKLoader$DownloadDialog;

    invoke-static {v0}, Lcom/yofi/sdk/SDKLoader$DownloadDialog;->access$600(Lcom/yofi/sdk/SDKLoader$DownloadDialog;)Lcom/yofi/sdk/SDKLoader$Callback;

    move-result-object v0

    const v1, 0xfc0e

    invoke-interface {v0, v1}, Lcom/yofi/sdk/SDKLoader$Callback;->onFailed(I)V

    .line 277
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
