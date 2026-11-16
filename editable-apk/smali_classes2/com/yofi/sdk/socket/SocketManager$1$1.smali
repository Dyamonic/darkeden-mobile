.class Lcom/yofi/sdk/socket/SocketManager$1$1;
.super Lorg/java_websocket/client/WebSocketClient;
.source "SocketManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yofi/sdk/socket/SocketManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yofi/sdk/socket/SocketManager$1;


# direct methods
.method constructor <init>(Lcom/yofi/sdk/socket/SocketManager$1;Ljava/net/URI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "x0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    invoke-direct {p0, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "reason",
            "remote"
        }
    .end annotation

    .line 131
    iget-object p2, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p2, p2, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const/4 p3, 0x1

    iput p3, p2, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    .line 134
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-virtual {p1}, Lcom/yofi/sdk/socket/SocketManager;->reConnect()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ex"
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const/4 v0, 0x1

    iput v0, p1, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    .line 144
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    if-nez p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-virtual {p1}, Lcom/yofi/sdk/socket/SocketManager;->reConnect()V

    :cond_0
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    return-void
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blob"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    .line 86
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    const/4 v0, 0x4

    .line 87
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    const/16 v0, 0x8

    .line 88
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const/16 v0, 0xc

    .line 89
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    move v0, v1

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, -0x10

    .line 93
    new-array v7, v0, [B

    .line 94
    invoke-virtual {p1, v7, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 95
    new-instance p1, Lcom/logic/proto/ProtoMessage;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/logic/proto/ProtoMessage;-><init>(IIII[B)V

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getCmd()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 108
    :sswitch_0
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-static {v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->access$300(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V

    goto :goto_1

    .line 105
    :sswitch_1
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-static {v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->access$200(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V

    goto :goto_1

    .line 102
    :sswitch_2
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-static {v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->access$100(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V

    goto :goto_1

    .line 99
    :sswitch_3
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-static {v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->access$000(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V

    goto :goto_1

    .line 111
    :sswitch_4
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    invoke-static {v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->access$400(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yofisdk"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x15f91 -> :sswitch_4
        0x15f93 -> :sswitch_3
        0x15f97 -> :sswitch_2
        0x15f98 -> :sswitch_1
        0x15f9a -> :sswitch_0
    .end sparse-switch
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 74
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/yofi/sdk/socket/SocketManager;->mReconnectTime:J

    .line 75
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const/4 v0, 0x0

    iput v0, p1, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    .line 76
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 78
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object p1, p1, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager$1$1;->this$1:Lcom/yofi/sdk/socket/SocketManager$1;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager$1;->this$0:Lcom/yofi/sdk/socket/SocketManager;

    iget-object v0, v0, Lcom/yofi/sdk/socket/SocketManager;->mUser:Lcom/yofi/sdk/imp/middle/data/User;

    invoke-virtual {p1, v0}, Lcom/yofi/sdk/socket/SocketManager;->enterChat(Lcom/yofi/sdk/imp/middle/data/User;)V

    return-void
.end method
