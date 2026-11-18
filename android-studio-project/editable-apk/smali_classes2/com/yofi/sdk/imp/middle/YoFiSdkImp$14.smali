.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/rich/oauth/callback/PreLoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->txOneKeyPreLogin(Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$preloginCallBack:Lcom/yofi/sdk/IFlashCallback;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$preloginCallBack"
        }
    .end annotation

    .line 1534
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;->val$preloginCallBack:Lcom/yofi/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreLoginFailure(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorMsg"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9884\u767b\u5f55\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1547
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;->val$preloginCallBack:Lcom/yofi/sdk/IFlashCallback;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/yofi/sdk/IFlashCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onPreLoginSuccess()V
    .locals 3

    .line 1537
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1302(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Z)Z

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u9884\u767b\u5f55\u6210\u529f"

    aput-object v2, v0, v1

    .line 1538
    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1539
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$14;->val$preloginCallBack:Lcom/yofi/sdk/IFlashCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
