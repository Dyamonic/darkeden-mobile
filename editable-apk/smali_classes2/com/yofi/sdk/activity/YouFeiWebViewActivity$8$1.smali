.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8$1;
.super Ljava/lang/Object;
.source "YouFeiWebViewActivity.java"

# interfaces
.implements Lcom/yofi/sdk/IFlashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 605
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "msg"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 608
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    iget-object v0, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8$1;->this$1:Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;

    iget-object v0, v0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$8;->val$userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->querySession(Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->getIsOpenBackH5()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 611
    invoke-static {}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->instance()Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->showHideWebView()V

    :cond_0
    return-void
.end method
