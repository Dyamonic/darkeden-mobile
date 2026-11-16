.class Lcom/yofi/sdk/downloadapk/DownLoadApk$1;
.super Landroid/os/Handler;
.source "DownLoadApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/downloadapk/DownLoadApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/downloadapk/DownLoadApk;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk$1;->this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 36
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk$1;->this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    iget-object p1, p1, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string v0, "\u5bf9\u4e0d\u8d77\u8bf7\u63d2\u5165\u5b58\u50a8\u5361"

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/yofi/sdk/downloadapk/DownLoadApk$1;->this$0:Lcom/yofi/sdk/downloadapk/DownLoadApk;

    iget-object p1, p1, Lcom/yofi/sdk/downloadapk/DownLoadApk;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const-string v0, "apk\u6b63\u5728\u4e0b\u8f7d\u5b89\u88c5\u4e2d!"

    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
