.class public Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Convert:StickyBroadcast"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final listener:Lcom/bytedance/ads/convert/IClickIdReceiver;

.field private receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/ads/convert/IClickIdReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->listener:Lcom/bytedance/ads/convert/IClickIdReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;)Lcom/bytedance/ads/convert/IClickIdReceiver;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->listener:Lcom/bytedance/ads/convert/IClickIdReceiver;

    return-object p0
.end method


# virtual methods
.method public register()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;

    invoke-direct {v0, p0}, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;-><init>(Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;)V

    iput-object v0, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/ads/convert/broadcast/common/EncryptionTools;->encryptionAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "Convert:StickyBroadcast"

    const-string v1, "registerReceiver failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager;->receiver:Lcom/bytedance/ads/convert/broadcast/StickyBroadcastManager$BR;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
