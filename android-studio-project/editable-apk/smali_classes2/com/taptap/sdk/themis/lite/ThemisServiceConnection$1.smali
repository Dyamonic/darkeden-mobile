.class Lcom/taptap/sdk/themis/lite/ThemisServiceConnection$1;
.super Ljava/lang/Object;
.source "ThemisServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection$1;->this$0:Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;

    iput-object p2, p0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection$1;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 20
    :try_start_0
    sget-object v0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 23
    :cond_0
    sget-object v0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v1, p0, Lcom/taptap/sdk/themis/lite/ThemisServiceConnection$1;->val$service:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VGhlbWlzU2VydmljZUNvbm5lY3Rpb246"

    invoke-static {v2}, Lcom/taptap/sdk/themis/lite/Base64Util;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taptap/sdk/themis/lite/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
