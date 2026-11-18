.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/rich/oauth/callback/TokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1633
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenFailureResult(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token\u53d6\u53f7\u83b7\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1649
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1602(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    .line 1650
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object v0, v0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->val$callback:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {v0, v1, p1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onTokenSuccessResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "carrier"
        }
    .end annotation

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "token\u53d6\u53f7\u83b7\u53d6\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p2}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1638
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p2, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1602(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    .line 1639
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {p2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/IFlashCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    .line 1641
    iget-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;->this$1:Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;

    iget-object p2, p2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->val$callback:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {p2, p1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
