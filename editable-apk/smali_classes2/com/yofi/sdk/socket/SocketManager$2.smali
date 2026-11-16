.class Lcom/yofi/sdk/socket/SocketManager$2;
.super Ljava/util/TimerTask;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/socket/SocketManager;->reConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yofi/sdk/socket/SocketManager;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/socket/SocketManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$2;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$2;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$2;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "mWebSocketClient"

    const-string v1, "reConnect"

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$2;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->reconnectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yofisdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
