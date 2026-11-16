.class public Lcom/yofi/sdk/imp/middle/data/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"


# instance fields
.field private QQ:Ljava/lang/String;

.field private QQGroup:Ljava/lang/String;

.field private contex:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private webSite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->webSite:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->phone:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQ:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQGroup:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->contex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContex()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->contex:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getQQ()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQ:Ljava/lang/String;

    return-object v0
.end method

.method public getQQGroup()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->webSite:Ljava/lang/String;

    return-object v0
.end method

.method public setContex(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contex"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->contex:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->message:Ljava/lang/String;

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

    .line 42
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public setQQ(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qQ"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQ:Ljava/lang/String;

    return-void
.end method

.method public setQQGroup(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qQGroup"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQGroup:Ljava/lang/String;

    return-void
.end method

.method public setWebSite(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webSite"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->webSite:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceInfo [message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", webSite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->webSite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", QQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", QQGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->QQGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yofi/sdk/imp/middle/data/ServiceInfo;->contex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
