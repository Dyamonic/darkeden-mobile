.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Lcom/rich/oauth/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->initTxOneKeyLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 887
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailure(Ljava/lang/String;)V
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

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u817e\u8baf\u95ea\u9a8c\u767b\u5f55\u521d\u59cb\u5316\u5931\u8d25 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u817e\u8baf\u95ea\u9a8c\u767b\u5f55\u521d\u59cb\u5316\u6210\u529f"

    aput-object v2, v0, v1

    .line 890
    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5$1;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$5;)V

    invoke-static {v0, v1, v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$500(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Ljava/lang/Integer;Lcom/yofi/sdk/IFlashCallback;)V

    return-void
.end method
