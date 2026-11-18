.class Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;
.super Ljava/lang/Object;
.source "YoFiSdkImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->execute(Landroid/app/Activity;Landroid/content/Intent;Lcom/yofi/sdk/IFlashCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cb:Lcom/yofi/sdk/IFlashCallback;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Landroid/content/Intent;Landroid/app/Activity;Lcom/yofi/sdk/IFlashCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$cb",
            "val$activity",
            "val$intent"
        }
    .end annotation

    .line 1373
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1375
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FUNCTION_CODE"

    .line 1376
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1378
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    new-instance v3, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    iget-object v4, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$activity:Landroid/app/Activity;

    const/4 v5, 0x1

    const v6, 0x3f0ccccd    # 0.55f

    invoke-direct {v3, v4, v5, v6}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;-><init>(Landroid/app/Activity;IF)V

    invoke-static {v1, v3}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1102(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 1381
    :cond_0
    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v1

    const-string v3, "ACCESS_TOKEN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->setAccessToken(Ljava/lang/String;)V

    const-string v1, "GRAVITY"

    .line 1382
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1383
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->show()V

    .line 1385
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {v0, v2}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x5

    if-ne v1, v0, :cond_5

    .line 1389
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1390
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    invoke-static {v0}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1100(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;->dismiss()V

    .line 1393
    :cond_3
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->this$0:Lcom/yofi/sdk/imp/middle/YoFiSdkImp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yofi/sdk/imp/middle/YoFiSdkImp;->access$1102(Lcom/yofi/sdk/imp/middle/YoFiSdkImp;Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;)Lcom/yofi/sdk/imp/middle/dialog/FloatDialog;

    .line 1395
    :cond_4
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/YoFiSdkImp$12;->val$cb:Lcom/yofi/sdk/IFlashCallback;

    invoke-interface {v0, v2}, Lcom/yofi/sdk/IFlashCallback;->onSuccess(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
