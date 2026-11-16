.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->doTxOneKeyGetToken(Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$callback:Lcom/yofi/sdk/IFlashCallback;


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
            "val$callback"
        }
    .end annotation

    .line 1628
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->val$callback:Lcom/yofi/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5728\u62c9\u8d77\u6388\u6743\u9875"

    aput-object v2, v0, v1

    .line 1632
    invoke-static {v0}, Lcom/rich/oauth/util/RichLogUtil;->e([Ljava/lang/Object;)V

    .line 1633
    invoke-static {}, Lcom/rich/oauth/core/RichAuth;->getInstance()Lcom/rich/oauth/core/RichAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$700(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v2}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1500(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/rich/oauth/core/UIConfigBuild;

    move-result-object v2

    new-instance v3, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;

    invoke-direct {v3, p0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17$1;-><init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp$17;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/rich/oauth/core/RichAuth;->login(Landroid/app/Activity;Lcom/rich/oauth/core/UIConfigBuild;Lcom/rich/oauth/callback/TokenCallback;)V

    return-void
.end method
