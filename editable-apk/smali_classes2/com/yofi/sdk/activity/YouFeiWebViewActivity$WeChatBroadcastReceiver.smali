.class Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "YouFeiWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yofi/sdk/activity/YouFeiWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeChatBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 912
    iput-object p1, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "intent"
        }
    .end annotation

    const-string p1, "code"

    .line 915
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 919
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 923
    :cond_1
    iget-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$1000(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 927
    :cond_2
    iget-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p2}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$1000(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5fae\u4fe1\u767b\u5f55code "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "YoFiImpWebvieTag"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object p2, p0, Lcom/yofi/sdk/activity/YouFeiWebViewActivity$WeChatBroadcastReceiver;->this$0:Lcom/yofi/sdk/activity/YouFeiWebViewActivity;

    invoke-static {p2, p1}, Lcom/yofi/sdk/activity/YouFeiWebViewActivity;->access$800(Lcom/yofi/sdk/activity/YouFeiWebViewActivity;Ljava/lang/String;)V

    return-void
.end method
