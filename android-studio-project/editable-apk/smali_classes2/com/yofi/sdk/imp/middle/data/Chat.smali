.class public Lcom/yofi/sdk/imp/middle/data/Chat;
.super Ljava/lang/Object;
.source "Chat.java"


# instance fields
.field private content:Ljava/lang/String;

.field private createTime:Ljava/lang/Long;

.field private gameId:I

.field private imgUrl:Ljava/lang/String;

.field private msgType:I

.field private pic:Lcom/google/protobuf/ByteString;

.field private receiverId:Ljava/lang/Long;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private senderId:Ljava/lang/Long;

.field private senderName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Lcom/google/protobuf/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "senderId",
            "receiverId",
            "type",
            "content",
            "pic",
            "serverId",
            "serverName",
            "roleId",
            "roleName",
            "msgType",
            "imgUrl",
            "gameId",
            "createTime",
            "senderName"
        }
    .end annotation

    move-object v0, p0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    .line 55
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    .line 56
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    move-object v1, p6

    .line 57
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    move-object v1, p7

    .line 58
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->pic:Lcom/google/protobuf/ByteString;

    move-object v1, p8

    .line 59
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    move-object v1, p9

    .line 60
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    move-object v1, p10

    .line 61
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    move-object v1, p11

    .line 62
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    move v1, p12

    .line 63
    iput v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    move-object v1, p13

    .line 64
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    move/from16 v1, p14

    .line 65
    iput v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    .line 66
    invoke-static/range {p15 .. p16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    move-object/from16 v1, p17

    .line 67
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "senderId",
            "receiverId",
            "type",
            "content",
            "serverId",
            "roleId",
            "roleName"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    .line 28
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    .line 29
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    .line 30
    iput-object p6, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "senderId",
            "receiverId",
            "type",
            "content",
            "serverId",
            "serverName",
            "roleId",
            "roleName",
            "msgType",
            "imgUrl",
            "gameId",
            "createTime",
            "senderName"
        }
    .end annotation

    move-object v0, p0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    .line 38
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    .line 39
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    move-object v1, p6

    .line 40
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    move-object v1, p7

    .line 42
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    move-object v1, p8

    .line 43
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    move-object v1, p9

    .line 44
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    move-object v1, p10

    .line 45
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    move v1, p11

    .line 46
    iput v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    move-object v1, p12

    .line 47
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    move v1, p13

    .line 48
    iput v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    .line 49
    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    move-object/from16 v1, p16

    .line 50
    iput-object v1, v0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/logic/proto/ChatProto$Chat;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chat"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    .line 72
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getReceiverId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    .line 73
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    .line 74
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getPic()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->pic:Lcom/google/protobuf/ByteString;

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getServerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    .line 82
    :cond_1
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getRoleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getMsgType()I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    .line 85
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getGameId()I

    move-result v0

    iput v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    .line 87
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getCreateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    .line 88
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$Chat;->getSenderName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flush(Lcom/logic/proto/ChatProto$Chat$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setSenderId(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 94
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setReceiverId(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 95
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setType(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 96
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setContent(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 97
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->pic:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setPic(Lcom/google/protobuf/ByteString;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setServerId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 101
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setServerName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setRoleId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 105
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setRoleName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 106
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setMsgType(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 107
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setImgUrl(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 108
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setGameId(I)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 109
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/logic/proto/ChatProto$Chat$Builder;->setCreateTime(J)Lcom/logic/proto/ChatProto$Chat$Builder;

    .line 110
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$Chat$Builder;->setSenderName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$Chat$Builder;

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/Long;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getGameId()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    return v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    return v0
.end method

.method public getPic()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->pic:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/Long;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/Long;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreateTime(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->createTime:Ljava/lang/Long;

    return-void
.end method

.method public setGameId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 199
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->gameId:I

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUrl"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->imgUrl:Ljava/lang/String;

    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msgType"
        }
    .end annotation

    .line 183
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->msgType:I

    return-void
.end method

.method public setPic(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pic"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->pic:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public setReceiverId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiverId"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->receiverId:Ljava/lang/Long;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleId"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleName"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->roleName:Ljava/lang/String;

    return-void
.end method

.method public setSenderId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderId"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderId:Ljava/lang/Long;

    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "senderName"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->senderName:Ljava/lang/String;

    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverId"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverId:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverName"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/Chat;->type:Ljava/lang/Integer;

    return-void
.end method
