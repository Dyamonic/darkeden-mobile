.class public Lcom/yofi/sdk/imp/middle/data/GameData;
.super Ljava/lang/Object;
.source "GameData.java"


# instance fields
.field private battlePoint:J

.field private roleCreateTime:J

.field private roleId:Ljava/lang/String;

.field private roleLevel:I

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private vipLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattlePoint()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->battlePoint:J

    return-wide v0
.end method

.method public getRoleCreateTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleCreateTime:J

    return-wide v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleLevel:I

    return v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVipLevel()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->vipLevel:I

    return v0
.end method

.method public setBattlePoint(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "battlePoint"
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->battlePoint:J

    return-void
.end method

.method public setRoleCreateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleCreateTime"
        }
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleCreateTime:J

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

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleId:Ljava/lang/String;

    return-void
.end method

.method public setRoleLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleLevel"
        }
    .end annotation

    .line 26
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleLevel:I

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

    .line 34
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->roleName:Ljava/lang/String;

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

    .line 50
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->serverId:Ljava/lang/String;

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

    .line 58
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setVipLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vipLevel"
        }
    .end annotation

    .line 74
    iput p1, p0, Lcom/yofi/sdk/imp/middle/data/GameData;->vipLevel:I

    return-void
.end method
