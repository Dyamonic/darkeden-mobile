.class Lcom/yofi/sdk/socket/SocketManager$1;
.super Ljava/lang/Object;
.source "SocketManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/socket/SocketManager;->init(Ljava/lang/String;Landroid/os/Handler;Lcom/yofi/sdk/imp/middle/data/User;)V
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

    .line 66
    iput-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mWsUrl:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    new-instance v2, Lcom/yofi/sdk/socket/SocketManager$1$1;

    invoke-direct {v2, p0, v0}, Lcom/yofi/sdk/socket/SocketManager$1$1;-><init>(Lcom/yofi/sdk/socket/SocketManager$1;Ljava/net/URI;)V

    iput-object v2, v1, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->connectBlocking()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yofisdk"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
