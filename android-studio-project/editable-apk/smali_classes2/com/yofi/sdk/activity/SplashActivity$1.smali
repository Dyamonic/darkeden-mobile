.class Lcom/yofi/sdk/activity/SplashActivity$1;
.super Landroid/os/Handler;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/SplashActivity;)V
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
    iput-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

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
            "param1Message"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "targetClassName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-static {v0}, Lcom/yofi/sdk/activity/SplashActivity;->access$000(Lcom/yofi/sdk/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YoFiSdk"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-static {p1}, Lcom/yofi/sdk/activity/SplashActivity;->access$000(Lcom/yofi/sdk/activity/SplashActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "empty"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    .line 39
    invoke-virtual {p1}, Lcom/yofi/sdk/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-virtual {v1}, Lcom/yofi/sdk/activity/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    .line 40
    invoke-virtual {v2}, Lcom/yofi/sdk/activity/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "splash"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Lcom/yofi/sdk/utils/ToastUtils;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-static {v0}, Lcom/yofi/sdk/activity/SplashActivity;->access$000(Lcom/yofi/sdk/activity/SplashActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-virtual {v0, p1}, Lcom/yofi/sdk/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    iget-object p1, p0, Lcom/yofi/sdk/activity/SplashActivity$1;->this$0:Lcom/yofi/sdk/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/yofi/sdk/activity/SplashActivity;->finish()V

    return-void
.end method
