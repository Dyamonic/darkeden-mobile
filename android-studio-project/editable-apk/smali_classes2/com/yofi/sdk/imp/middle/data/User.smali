.class public Lcom/yofi/sdk/imp/middle/data/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private gameId:Ljava/lang/Integer;

.field private gameVersion:Ljava/lang/String;

.field private id:Ljava/lang/Long;

.field private isSupportTextView:Ljava/lang/Integer;

.field private isSupporter:Ljava/lang/Integer;

.field private nickName:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pushAppKey:Ljava/lang/String;

.field private pushRegistrationId:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private system:Ljava/lang/Integer;

.field private systemVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/logic/proto/ChatProto$User;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->id:Ljava/lang/Long;

    .line 44
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->nickName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupporter()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupporter:Ljava/lang/Integer;

    .line 46
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->deviceModel:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->systemVersion:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameVersion:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->phone:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getGameId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameId:Ljava/lang/Integer;

    .line 51
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushAppKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushAppKey:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getPushRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushRegistrationId:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->system:Ljava/lang/Integer;

    .line 54
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->sdkVersion:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/logic/proto/ChatProto$User;->getIsSupportTextView()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupportTextView:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
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
            0x0
        }
        names = {
            "id",
            "nickName",
            "deviceModel",
            "systemVersion",
            "gameVersion",
            "phone",
            "gameId",
            "pushAppKey",
            "pushRegistrationId",
            "system",
            "sdkVersion",
            "isSupportTextView"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->id:Ljava/lang/Long;

    .line 27
    iput-object p2, p0, Lcom/yofi/sdk/imp/middle/data/User;->nickName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupporter:Ljava/lang/Integer;

    .line 29
    iput-object p3, p0, Lcom/yofi/sdk/imp/middle/data/User;->deviceModel:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/yofi/sdk/imp/middle/data/User;->systemVersion:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameVersion:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/yofi/sdk/imp/middle/data/User;->phone:Ljava/lang/String;

    .line 33
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameId:Ljava/lang/Integer;

    .line 34
    iput-object p8, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushAppKey:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushRegistrationId:Ljava/lang/String;

    .line 36
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->system:Ljava/lang/Integer;

    .line 37
    iput-object p11, p0, Lcom/yofi/sdk/imp/middle/data/User;->sdkVersion:Ljava/lang/String;

    .line 38
    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupportTextView:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public flush(Lcom/logic/proto/ChatProto$User$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proto"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/logic/proto/ChatProto$User$Builder;->setId(J)Lcom/logic/proto/ChatProto$User$Builder;

    .line 61
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setNickName(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 62
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupporter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setIsSupporter(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 63
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->deviceModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setDeviceModel(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 64
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->systemVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setSystemVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 65
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setGameVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 66
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setPhone(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 67
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setGameId(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 68
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setPushAppKey(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 69
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushRegistrationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setPushRegistrationId(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 70
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->system:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setSystem(I)Lcom/logic/proto/ChatProto$User$Builder;

    .line 71
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setSdkVersion(Ljava/lang/String;)Lcom/logic/proto/ChatProto$User$Builder;

    .line 72
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupportTextView:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/logic/proto/ChatProto$User$Builder;->setIsSupportTextView(I)Lcom/logic/proto/ChatProto$User$Builder;

    return-void
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/Integer;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsSupportTextView()Ljava/lang/Integer;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupportTextView:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsSupporter()Ljava/lang/Integer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupporter:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPushAppKey()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPushRegistrationId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem()Ljava/lang/Integer;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->system:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/User;->systemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModel"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setGameId(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameId:Ljava/lang/Integer;

    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameVersion"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->gameVersion:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->id:Ljava/lang/Long;

    return-void
.end method

.method public setIsSupportTextView(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupportTextView"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupportTextView:Ljava/lang/Integer;

    return-void
.end method

.method public setIsSupporter(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSupporter"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->isSupporter:Ljava/lang/Integer;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nickName"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phone"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPushAppKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushAppKey"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushAppKey:Ljava/lang/String;

    return-void
.end method

.method public setPushRegistrationId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pushRegistrationId"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->pushRegistrationId:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkVersion"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSystem(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "system"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->system:Ljava/lang/Integer;

    return-void
.end method

.method public setSystemVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "systemVersion"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/User;->systemVersion:Ljava/lang/String;

    return-void
.end method
