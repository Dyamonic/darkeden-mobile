.class public Lcom/yofi/sdk/socket/SocketManager;
.super Ljava/lang/Object;
.source "SocketManager.java"


# static fields
.field private static sharedSocketManager:Lcom/yofi/sdk/socket/SocketManager;


# instance fields
.field mExecutorService:Ljava/util/concurrent/ExecutorService;

.field mHandler:Landroid/os/Handler;

.field mIp:Ljava/lang/String;

.field mLastCheckTime:J

.field mPort:I

.field mReconnectTime:J

.field mTimer:Ljava/util/Timer;

.field mUser:Lcom/yofi/sdk/imp/middle/data/User;

.field mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

.field mWsUrl:Ljava/lang/String;

.field socketManagerStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mLastCheckTime:J

    .line 37
    iput-wide v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mReconnectTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->handleS2CEnterChat(Lcom/logic/proto/ProtoMessage;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->handleS2CChat(Lcom/logic/proto/ProtoMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->handleS2CNotifyChat(Lcom/logic/proto/ProtoMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->handleS2CChatList(Lcom/logic/proto/ProtoMessage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/yofi/sdk/socket/SocketManager;Lcom/logic/proto/ProtoMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->handleS2CKeepAlive(Lcom/logic/proto/ProtoMessage;)V

    return-void
.end method

.method private checkSocketStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 389
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 390
    iput p1, v0, Landroid/os/Message;->what:I

    .line 391
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private enterChat(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 378
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 379
    iput p1, v0, Landroid/os/Message;->what:I

    .line 380
    iget-object p1, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static getInstance()Lcom/yofi/sdk/socket/SocketManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/yofi/sdk/socket/SocketManager;->sharedSocketManager:Lcom/yofi/sdk/socket/SocketManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/yofi/sdk/socket/SocketManager;

    invoke-direct {v0}, Lcom/yofi/sdk/socket/SocketManager;-><init>()V

    sput-object v0, Lcom/yofi/sdk/socket/SocketManager;->sharedSocketManager:Lcom/yofi/sdk/socket/SocketManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/yofi/sdk/socket/SocketManager;->sharedSocketManager:Lcom/yofi/sdk/socket/SocketManager;

    return-object v0
.end method

.method private handleS2CChat(Lcom/logic/proto/ProtoMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getBodyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->parseFrom([B)Lcom/logic/proto/ChatProto$S2C_Chat;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->getCode()Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    sget-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 308
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const-string v0, "sendFailed"

    .line 309
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 310
    iput v2, p1, Landroid/os/Message;->what:I

    .line 311
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 313
    :cond_1
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_Chat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yofi/sdk/imp/middle/data/Chat;-><init>(Lcom/logic/proto/ChatProto$Chat;)V

    .line 314
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 315
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 316
    iput v2, p1, Landroid/os/Message;->what:I

    .line 317
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private handleS2CChatList(Lcom/logic/proto/ProtoMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getBodyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->parseFrom([B)Lcom/logic/proto/ChatProto$S2C_GetChatList;

    move-result-object p1

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 343
    :goto_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatListCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    new-instance v2, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {p1, v1}, Lcom/logic/proto/ChatProto$S2C_GetChatList;->getChatList(I)Lcom/logic/proto/ChatProto$Chat;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yofi/sdk/imp/middle/data/Chat;-><init>(Lcom/logic/proto/ChatProto$Chat;)V

    .line 345
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    :cond_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 348
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 349
    iput v0, p1, Landroid/os/Message;->what:I

    .line 350
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleS2CEnterChat(Lcom/logic/proto/ProtoMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getBodyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->parseFrom([B)Lcom/logic/proto/ChatProto$S2C_EnterChat;

    move-result-object p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s2cEnterChat code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_EnterChat;->getCode()Lcom/logic/proto/ChatProto$CODE;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "yofisdk"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/yofi/sdk/socket/SocketManager;->getChatList()V

    .line 297
    invoke-virtual {p0}, Lcom/yofi/sdk/socket/SocketManager;->keepAlive()V

    .line 298
    iget p1, p0, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    invoke-direct {p0, p1}, Lcom/yofi/sdk/socket/SocketManager;->enterChat(I)V

    return-void
.end method

.method private handleS2CKeepAlive(Lcom/logic/proto/ProtoMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getBodyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->parseFrom([B)Lcom/logic/proto/ChatProto$S2C_KeepAlive;

    move-result-object p1

    .line 359
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getCode()Lcom/logic/proto/ChatProto$CODE;

    move-result-object v0

    sget-object v1, Lcom/logic/proto/ChatProto$CODE;->CODE_OK:Lcom/logic/proto/ChatProto$CODE;

    if-eq v0, v1, :cond_1

    return-void

    .line 363
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvSec()J

    .line 364
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_KeepAlive;->getTvMsec()J

    move-result-wide v0

    .line 366
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 367
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x4

    .line 368
    iput v0, p1, Landroid/os/Message;->what:I

    .line 369
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleS2CNotifyChat(Lcom/logic/proto/ProtoMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ProtoMessage;->getBodyData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->parseFrom([B)Lcom/logic/proto/ChatProto$S2C_NotifyChat;

    move-result-object p1

    .line 329
    new-instance v0, Lcom/yofi/sdk/imp/middle/data/Chat;

    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$S2C_NotifyChat;->getChat()Lcom/logic/proto/ChatProto$Chat;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yofi/sdk/imp/middle/data/Chat;-><init>(Lcom/logic/proto/ChatProto$Chat;)V

    .line 330
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 331
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 332
    iput v0, p1, Landroid/os/Message;->what:I

    .line 333
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendData(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msgId",
            "data"
        }
    .end annotation

    .line 202
    array-length v0, p2

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    array-length v1, p2

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 205
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 206
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 209
    iget-object p2, p0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {p2}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 212
    :try_start_0
    iget-object p2, p0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    invoke-virtual {p2, p1}, Lorg/java_websocket/client/WebSocketClient;->send([B)V
    :try_end_0
    .catch Lorg/java_websocket/exceptions/WebsocketNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "mWebSocketClient"

    const-string p2, "WebsocketNotConnectedException"

    .line 214
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public chat(Lcom/yofi/sdk/imp/middle/data/Chat;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chat"
        }
    .end annotation

    .line 266
    invoke-static {}, Lcom/logic/proto/ChatProto$Chat;->newBuilder()Lcom/logic/proto/ChatProto$Chat$Builder;

    move-result-object v0

    .line 267
    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/data/Chat;->flush(Lcom/logic/proto/ChatProto$Chat$Builder;)V

    .line 268
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_Chat;->newBuilder()Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    move-result-object p1

    .line 269
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->build()Lcom/logic/proto/ChatProto$Chat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->setChat(Lcom/logic/proto/ChatProto$Chat;)Lcom/logic/proto/ChatProto$C2S_Chat$Builder;

    .line 270
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_Chat$Builder;->build()Lcom/logic/proto/ChatProto$C2S_Chat;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_Chat;->toByteArray()[B

    move-result-object p1

    const v0, 0x15f96

    invoke-direct {p0, v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->sendData(I[B)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 221
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    .line 223
    iput-object v1, p0, Lcom/yofi/sdk/socket/SocketManager;->mWebSocketClient:Lorg/java_websocket/client/WebSocketClient;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 227
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 228
    iput-object v1, p0, Lcom/yofi/sdk/socket/SocketManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 233
    iput-object v1, p0, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    :cond_2
    const-wide/16 v2, 0x0

    .line 236
    iput-wide v2, p0, Lcom/yofi/sdk/socket/SocketManager;->mLastCheckTime:J

    .line 237
    iput-wide v2, p0, Lcom/yofi/sdk/socket/SocketManager;->mReconnectTime:J

    .line 238
    iput-object v1, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public enterChat(Lcom/yofi/sdk/imp/middle/data/User;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "user"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/logic/proto/ChatProto$User;->newBuilder()Lcom/logic/proto/ChatProto$User$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {p1, v0}, Lcom/yofi/sdk/imp/middle/data/User;->flush(Lcom/logic/proto/ChatProto$User$Builder;)V

    .line 247
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_EnterChat;->newBuilder()Lcom/logic/proto/ChatProto$C2S_EnterChat$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$User$Builder;->build()Lcom/logic/proto/ChatProto$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$C2S_EnterChat$Builder;->setUser(Lcom/logic/proto/ChatProto$User;)Lcom/logic/proto/ChatProto$C2S_EnterChat$Builder;

    .line 249
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_EnterChat$Builder;->build()Lcom/logic/proto/ChatProto$C2S_EnterChat;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$C2S_EnterChat;->toByteArray()[B

    move-result-object p1

    const v0, 0x15f92

    invoke-direct {p0, v0, p1}, Lcom/yofi/sdk/socket/SocketManager;->sendData(I[B)V

    return-void
.end method

.method public getChatList()V
    .locals 2

    .line 278
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->newBuilder()Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList$Builder;->build()Lcom/logic/proto/ChatProto$C2S_GetChatList;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_GetChatList;->toByteArray()[B

    move-result-object v0

    const v1, 0x15f99

    invoke-direct {p0, v1, v0}, Lcom/yofi/sdk/socket/SocketManager;->sendData(I[B)V

    return-void
.end method

.method public getSocketManagerStatus()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    return v0
.end method

.method public init(Ljava/lang/String;Landroid/os/Handler;Lcom/yofi/sdk/imp/middle/data/User;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "handler",
            "user"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/yofi/sdk/socket/SocketManager;->clear()V

    .line 61
    iput-object p1, p0, Lcom/yofi/sdk/socket/SocketManager;->mWsUrl:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/yofi/sdk/socket/SocketManager;->mUser:Lcom/yofi/sdk/imp/middle/data/User;

    .line 63
    iput-object p2, p0, Lcom/yofi/sdk/socket/SocketManager;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/socket/SocketManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 66
    new-instance p2, Lcom/yofi/sdk/socket/SocketManager$1;

    invoke-direct {p2, p0}, Lcom/yofi/sdk/socket/SocketManager$1;-><init>(Lcom/yofi/sdk/socket/SocketManager;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public keepAlive()V
    .locals 2

    const-string v0, "sendkeepAlive"

    const-string v1, "end"

    .line 287
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->newBuilder()Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive$Builder;->build()Lcom/logic/proto/ChatProto$C2S_KeepAlive;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_KeepAlive;->toByteArray()[B

    move-result-object v0

    const v1, 0x15f90

    invoke-direct {p0, v1, v0}, Lcom/yofi/sdk/socket/SocketManager;->sendData(I[B)V

    return-void
.end method

.method public leaveChat()V
    .locals 2

    .line 257
    invoke-static {}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->newBuilder()Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat$Builder;->build()Lcom/logic/proto/ChatProto$C2S_LeaveChat;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/logic/proto/ChatProto$C2S_LeaveChat;->toByteArray()[B

    move-result-object v0

    const v1, 0x15f94

    invoke-direct {p0, v1, v0}, Lcom/yofi/sdk/socket/SocketManager;->sendData(I[B)V

    return-void
.end method

.method public reConnect()V
    .locals 7

    .line 160
    iget v0, p0, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    invoke-direct {p0, v0}, Lcom/yofi/sdk/socket/SocketManager;->checkSocketStatus(I)V

    .line 162
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/yofi/sdk/socket/SocketManager;->mTimer:Ljava/util/Timer;

    .line 163
    new-instance v2, Lcom/yofi/sdk/socket/SocketManager$2;

    invoke-direct {v2, p0}, Lcom/yofi/sdk/socket/SocketManager$2;-><init>(Lcom/yofi/sdk/socket/SocketManager;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public setSocketManagerStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socketManagerStatus"
        }
    .end annotation

    .line 53
    iput p1, p0, Lcom/yofi/sdk/socket/SocketManager;->socketManagerStatus:I

    return-void
.end method
