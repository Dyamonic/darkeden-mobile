.class Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BR"
.end annotation


# instance fields
.field final this$0:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;


# direct methods
.method constructor <init>(Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;->this$0:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Convert:StickyBroadcast"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;->this$0:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    invoke-static {p2}, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->access$000(Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;)Lcom/bytedance/ads/convert/IClickIdReceiver;

    move-result-object p2

    sget-object v0, Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;->StickyBroadcast:Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;

    invoke-interface {p2, v0, p1}, Lcom/bytedance/ads/convert/IClickIdReceiver;->onReceive(Lcom/bytedance/ads/convert/IClickIdReceiver$ClickIdFrom;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;->this$0:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;

    invoke-virtual {p1}, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->unregister()V

    return-void
.end method
